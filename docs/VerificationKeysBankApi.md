# CybridApiBank::VerificationKeysBankApi

All URIs are relative to *https://bank.demo.cybrid.app*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_verification_key**](VerificationKeysBankApi.md#create_verification_key) | **POST** /api/bank_verification_keys | Create VerificationKey |
| [**get_verification_key**](VerificationKeysBankApi.md#get_verification_key) | **GET** /api/bank_verification_keys/{verification_key_guid} | Get VerificationKey |
| [**list_verification_keys**](VerificationKeysBankApi.md#list_verification_keys) | **GET** /api/bank_verification_keys | Get Verification Keys list |


## create_verification_key

> <VerificationKeyBankModel> create_verification_key(post_verification_key_bank_model)

Create VerificationKey

Creates a verification key.   Example code (python) for generating a Verification Key  ```python import base64  from cryptography.hazmat.primitives import hashes from cryptography.hazmat.primitives import serialization from cryptography.hazmat.primitives.asymmetric import padding from cryptography.hazmat.primitives.asymmetric import rsa  nonce = \"wen moon\" private_key = rsa.generate_private_key(public_exponent=65537, key_size=2048) signature = base64.b64encode(private_key.sign(     data=nonce.encode('ascii'), padding=padding.PKCS1v15(), algorithm=hashes.SHA512())).decode('ascii') public_key = base64.b64encode(private_key.public_key().public_bytes(     encoding=serialization.Encoding.DER, format=serialization.PublicFormat.SubjectPublicKeyInfo)).decode('ascii')  ### DISCLAIMER:- Since NO ENCRYPTION is used in the key storage/formatting. Please DO NOT use this code in production environment. private_pem = private_key.private_bytes(encoding=serialization.Encoding.PEM, format=serialization.PrivateFormat.TraditionalOpenSSL,        encryption_algorithm=serialization.NoEncryption())  ## Store the private_key in a file verification_key.pem with open (\"verification_key.pem\", 'wb') as pem_out:    pem_out.write(private_pem)    pem_out.close()  print(\"Public Key: \", public_key) print(\"Signature: \", signature)  ````  ## State  | State | Description | |-------|-------------| | storing | The Platform is storing the verification in our private key store | | pending | The Platform is verifying the verification key's signature | | verified | The Platform has verified the verification key's signature and the key can be used | | failed | The Platform was not able to verify the verification key's signature and the key cannot be used |    Required scope: **banks:write**

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

api_instance = CybridApiBank::VerificationKeysBankApi.new
post_verification_key_bank_model = CybridApiBank::PostVerificationKeyBankModel.new({type: 'attestation', algorithm: 'RS512', public_key: 'public_key_example', nonce: 'nonce_example', signature: 'signature_example'}) # PostVerificationKeyBankModel | 

begin
  # Create VerificationKey
  result = api_instance.create_verification_key(post_verification_key_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling VerificationKeysBankApi->create_verification_key: #{e}"
end
```

#### Using the create_verification_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VerificationKeyBankModel>, Integer, Hash)> create_verification_key_with_http_info(post_verification_key_bank_model)

```ruby
begin
  # Create VerificationKey
  data, status_code, headers = api_instance.create_verification_key_with_http_info(post_verification_key_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VerificationKeyBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling VerificationKeysBankApi->create_verification_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_verification_key_bank_model** | [**PostVerificationKeyBankModel**](PostVerificationKeyBankModel.md) |  |  |

### Return type

[**VerificationKeyBankModel**](VerificationKeyBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_verification_key

> <VerificationKeyBankModel> get_verification_key(verification_key_guid)

Get VerificationKey

Retrieves a verification key.  Required scope: **banks:read**

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

api_instance = CybridApiBank::VerificationKeysBankApi.new
verification_key_guid = 'verification_key_guid_example' # String | Identifier for the verification key.

begin
  # Get VerificationKey
  result = api_instance.get_verification_key(verification_key_guid)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling VerificationKeysBankApi->get_verification_key: #{e}"
end
```

#### Using the get_verification_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VerificationKeyBankModel>, Integer, Hash)> get_verification_key_with_http_info(verification_key_guid)

```ruby
begin
  # Get VerificationKey
  data, status_code, headers = api_instance.get_verification_key_with_http_info(verification_key_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VerificationKeyBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling VerificationKeysBankApi->get_verification_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **verification_key_guid** | **String** | Identifier for the verification key. |  |

### Return type

[**VerificationKeyBankModel**](VerificationKeyBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_verification_keys

> <VerificationKeyListBankModel> list_verification_keys(opts)

Get Verification Keys list

Retrieves a listing of verification keys of a bank.  Required scope: **banks:read**

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

api_instance = CybridApiBank::VerificationKeysBankApi.new
opts = {
  page: 56, # Integer | 
  per_page: 56 # Integer | 
}

begin
  # Get Verification Keys list
  result = api_instance.list_verification_keys(opts)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling VerificationKeysBankApi->list_verification_keys: #{e}"
end
```

#### Using the list_verification_keys_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VerificationKeyListBankModel>, Integer, Hash)> list_verification_keys_with_http_info(opts)

```ruby
begin
  # Get Verification Keys list
  data, status_code, headers = api_instance.list_verification_keys_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VerificationKeyListBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling VerificationKeysBankApi->list_verification_keys_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |

### Return type

[**VerificationKeyListBankModel**](VerificationKeyListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

