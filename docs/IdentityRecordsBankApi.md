# CybridApiBank::IdentityRecordsBankApi

All URIs are relative to *https://bank.demo.cybrid.app*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_identity_record**](IdentityRecordsBankApi.md#create_identity_record) | **POST** /api/identity_records | Create Identity Record |
| [**get_identity_record**](IdentityRecordsBankApi.md#get_identity_record) | **GET** /api/identity_records/{identity_record_guid} | Get Identity Record |
| [**list_identity_records**](IdentityRecordsBankApi.md#list_identity_records) | **GET** /api/identity_records | List Identity Records |


## create_identity_record

> <IdentityRecordBankModel> create_identity_record(post_identity_record_bank_model)

Create Identity Record

Creates an identity record.  ## Identity Records  Identity Records verify an individual for inclusion on the platform. This know-your-customer (KYC) process is a requirement for individuals to be able to transact. At present, we offer support for Attestation Identity Records.  Once an Identity Record has been submitted, it will be reviewed by our system and transit through a lifecycle before ultimately being `verified` or `failed`. If an Identity Record is ends up `failed`, contextual information as to the reason may be provided on the resource and additional attempts can be made.  ## Attestation Identity Records  An Attestation Identity Record is a confirmation of fact that the Organization has completed their own KYC process and can vouch for its correctness.  Prior to uploading `verified` attestation identity records, an Organization must register their signing public key with their Bank through the create Verification Key API.  To create an attestation identity record, a signed JWT is required as proof that the Customer's identity has been verified by the Organization. When creating the JWT, the Organization must use the RS512 signing algorithm.  The JWT must contain the following headers:  - **alg**: The RS512 algorithm value, e.g., 'RS512'. - **kid**: Set to the guid of the verification key that has been registered for the Bank  The JWT must contain the following claims:  - **iss**: Set to http://api.cybrid.app/banks/{bank_guid} - **aud**: Set to http://api.cybrid.app - **sub**: Set to http://api.cybrid.app/customers/{customer_guid} - **iat**: Set to the time at which the JWT was issued - **exp**: Set to the time after which the JWT expires - **jti**: Set to a unique identifier for the JWT  Example code (python) for generating an Attestation Identity Record JWT token:  ```python # Assumes an RSA private key has been generated (`private_key`), a Verification Key has been created and a `verification_key_guid` is available. # # `customer_guid` should be set to the guid assigned to a Customer that has been created. # `bank_guid` should be set to the guid of your bank #  import uuid  from datetime import datetime, timezone, timedelta from jwcrypto import jwt, jwk from cryptography.hazmat.primitives import serialization from cryptography.hazmat.primitives.serialization import load_pem_private_key  algorithm = 'RS512' issued_at = datetime.now(timezone.utc) expired_at = issued_at + timedelta(days=365)  with open(\"verification_key.pem\", 'rb') as pem_in:   pem_lines = pem_in.read()  private_key = load_pem_private_key(pem_lines, None)  ### DISCLAIMER:- Since NO ENCRYPTION is used in the key storage/formatting. Please DO NOT use this code in production environment. signing_key = jwk.JWK.from_pem(     private_key.private_bytes(         encoding=serialization.Encoding.PEM,         format=serialization.PrivateFormat.PKCS8,         encryption_algorithm=serialization.NoEncryption()     ) ) signing_key.update({\"kid\": verification_key_guid})  attestation_jwt = jwt.JWT(     header={         \"alg\": algorithm,         \"kid\": verification_key_guid     },     claims={         \"iss\": f\"http://api.cybrid.app/banks/{bank_guid}\",         \"aud\": \"http://api.cybrid.app\",         \"sub\": f\"http://api.cybrid.app/customers/{customer_guid}\",         \"iat\": int(issued_at.timestamp()),         \"exp\": int(expired_at.timestamp()),         \"jti\": str(uuid.uuid4())     },     key=signing_key,     algs=[algorithm] ) attestation_jwt.make_signed_token(signing_key)  token = attestation_jwt.serialize(compact=True) print(\"Token is : \", token) ```  ## Default Attestation Signing Key  The Cybrid Sandbox environment comes provisioned with a default signing key that can be used to perform identity record attestation. The default identity signing key provides a convenient starting point for testing Sandbox flows that require identity attestation, such as executing trades.  The signing key can be loaded directly into a client application by passing its PEM encoded value as an environment variable.  ``` -----BEGIN PRIVATE KEY----- MIIEvwIBADANBgkqhkiG9w0BAQEFAASCBKkwggSlAgEAAoIBAQDZ75nSfJy/eeuj 4f7EK7i+n4FUDE8BsD/acCdk9Pn56suuDc3SFcMoyjBIoDLZkbRsVfmBEcPDNJOp GNqzoaXa7qe7Yw0qpK9MbNbAYxiyAfxwVHM+ZpwP6M/r3LmsCRFXgNdCjfOzok7u V59hDjfHMMQm/M9ztGVhaJpgozY/7DKk+R6qY/DEBs63eXwfcHE0u0NbS8Y9Qp+6 7cB2f1iuy++5Uut1vx4qdgZ4UFMkwIdTWl/e6LDcdXhk3///T5WOnDlI+S4rhGUO xsAOfOa+T9uqYBr2hbQR9emTEYmwF1lgZ7VU4S9sSjAMKpB/TVlVVOsNhdNSGg6f 6hu7fuadAgMBAAECggEBAMUJL1VyfHVRUY5VoPTTYrBVnaPTjQrFwrVHeRZ5thgS BBxVNqSeMFgMlSLUU6UJasoX4QCkgw1V17qmUfTeTQlnhBaTMzA+vI6oSHCgJ4+o 5AbbE2Zzdt2ba4Cfiu7TM+6c+gGePZtHP32Vku84340jtfRZ1WWSz6YF4K1GYqHe y7I4POotHu2WcSTXYKs2zTu5KAO7gvx7yITVytaiUGUHk9FNyZPDIh0u7e9CAEti BangdYTfvbXAIx9lrg3XQ4gtFXTd0aY/3R9K3SE+s5iWh/SabjV4U7x+MuHZS5kv 8rcLCPQ5kUgiF4bQMy7QznUuNso65SbRJKHaU8UAuIECgYEA7+bNdz/uiN/JxUJY 3xwjD+CG4vXOyEmCioBjllYBeXQyB/VrsdzVrdF2JiECnStPRH6/6nd7/wUcLORv NyrQqnCa5/O8Kv9Z3t4TmxYf+ECIgx+gazehQHptUkr8QWtxceorUC9pu4cUJ8z3 nQLCggHYQ3g7xj73LLZ+5QQBC8kCgYEA6I91Dgs+HZWDMMcGbKV2cMkXK8BTOgZZ 6B6i6flO4tf9U2CPBZsjYLBN5EEuxxy9Yl7rlV7CxAhnnjdIKk2jQbzTPI0qmJfp 397rvdR8bur1OkALj2Tb39fz8z1Qy7AcN8siqXuortZZ5OI9XRWgnG/3B4gUFOnW 4Mr0dhfaxjUCgYEAmVcricehjneMnrtz1thDSQi47yUzES57dE/wV82Nj7ZHrHKg bcW8ByhVnrWG2DMwrZVe0l2hMjZv9fnlZJvHWMo1GYHfipRBO4UzfvO7Z5DIMRfs D9w1A+O9MNahOqeUkb2eBdjoemcy6OXId+Gltje7phSaEHN6xme34GaYzJECgYBP eRbLYdQsT/exJ5JudmzvRgkBDoxie+EljbKmumfW5XDQmWLGy6lfVWCI7C2MJaoi f8WKGgP88dJXIxUqP7XWtSyKuMMhumhV9Nwi1wZe8TQ0X8aTjigFassXCJEfymMa PfTubi/K771wlk/aC5YDX8/PZxVVwEOKNlEsOiKtMQKBgQDqRv5AUHhabqcMfbs7 DTeo/fS/eXJv8MN+CUU2RSrNUKjEdHT2R5KP550TyXr1JXLKpEEZu8wvvaQDV4Dw p0Eij6bKsh03X38NR+C5SxonXPosdvoiXR8uUgya2f/aJYV+aWZ9euFgYZAXf/0Q MnWdKylfZlV50XP2KFn07wPs7w== -----END PRIVATE KEY----- \" ```  A corresponding public verification key can be retrieved from the Cybrid Banks API using the `/api/bank_verification_keys` endpoint. Performing a `get` request to this endpoint returns the available Verification Key records, the first of which is the provisioned default. The endpoint can be hit directly or by using the Cybrid Banks API client:  ```python ... api_client = cybrid_api_bank.ApiClient(configuration) api_instance = verification_keys_bank_api.VerificationKeysBankApi(api_client) verification_keys = api_instance.list_verification_keys() verification_key = verification_keys.objects[0] ```  Once available to the application, the signing key and Verification Key record can be used in conjunction to create the attestation JWT. The Verification Key's GUID is passed as the JWT's `kid` while the signing key is used to sign the JWT.  ## Attestation State  | State | Description | |-------|-------------| | storing | The Platform is storing the attestation in our private store | | pending | The Platform is verifying the attestation's JWT | | verified | The Platform has verified the attestation and the customer is able to transact | | failed | The Platform was not able to verify the attestation and the customer is not able to transact |    Required scope: **customers:write**

### Examples

```ruby
require 'time'
require 'cybrid_api_bank_ruby'
# setup authorization
CybridApiBank.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = CybridApiBank::IdentityRecordsBankApi.new
post_identity_record_bank_model = CybridApiBank::PostIdentityRecordBankModel.new({customer_guid: 'customer_guid_example', type: 'attestation', attestation_details: CybridApiBank::PostIdentityRecordAttestationDetailsBankModel.new}) # PostIdentityRecordBankModel | 

begin
  # Create Identity Record
  result = api_instance.create_identity_record(post_identity_record_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling IdentityRecordsBankApi->create_identity_record: #{e}"
end
```

#### Using the create_identity_record_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IdentityRecordBankModel>, Integer, Hash)> create_identity_record_with_http_info(post_identity_record_bank_model)

```ruby
begin
  # Create Identity Record
  data, status_code, headers = api_instance.create_identity_record_with_http_info(post_identity_record_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IdentityRecordBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling IdentityRecordsBankApi->create_identity_record_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_identity_record_bank_model** | [**PostIdentityRecordBankModel**](PostIdentityRecordBankModel.md) |  |  |

### Return type

[**IdentityRecordBankModel**](IdentityRecordBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_identity_record

> <IdentityRecordBankModel> get_identity_record(identity_record_guid)

Get Identity Record

Retrieves an identity record.  Required scope: **customers:read**

### Examples

```ruby
require 'time'
require 'cybrid_api_bank_ruby'
# setup authorization
CybridApiBank.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = CybridApiBank::IdentityRecordsBankApi.new
identity_record_guid = 'identity_record_guid_example' # String | Identifier for the identity record.

begin
  # Get Identity Record
  result = api_instance.get_identity_record(identity_record_guid)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling IdentityRecordsBankApi->get_identity_record: #{e}"
end
```

#### Using the get_identity_record_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IdentityRecordBankModel>, Integer, Hash)> get_identity_record_with_http_info(identity_record_guid)

```ruby
begin
  # Get Identity Record
  data, status_code, headers = api_instance.get_identity_record_with_http_info(identity_record_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IdentityRecordBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling IdentityRecordsBankApi->get_identity_record_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identity_record_guid** | **String** | Identifier for the identity record. |  |

### Return type

[**IdentityRecordBankModel**](IdentityRecordBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_identity_records

> <IdentityRecordListBankModel> list_identity_records(opts)

List Identity Records

Retrieves a listing of identity records for a bank.  Required scope: **customers:read**

### Examples

```ruby
require 'time'
require 'cybrid_api_bank_ruby'
# setup authorization
CybridApiBank.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = CybridApiBank::IdentityRecordsBankApi.new
opts = {
  customer_guid: 'customer_guid_example', # String | Comma separated customer identifier to list identity records for.
  page: 56, # Integer | 
  per_page: 56 # Integer | 
}

begin
  # List Identity Records
  result = api_instance.list_identity_records(opts)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling IdentityRecordsBankApi->list_identity_records: #{e}"
end
```

#### Using the list_identity_records_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IdentityRecordListBankModel>, Integer, Hash)> list_identity_records_with_http_info(opts)

```ruby
begin
  # List Identity Records
  data, status_code, headers = api_instance.list_identity_records_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IdentityRecordListBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling IdentityRecordsBankApi->list_identity_records_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_guid** | **String** | Comma separated customer identifier to list identity records for. | [optional] |
| **page** | **Integer** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |

### Return type

[**IdentityRecordListBankModel**](IdentityRecordListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

