# CybridApiBank::IdentityVerificationsBankApi

All URIs are relative to *https://bank.sandbox.cybrid.app*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_identity_verification**](IdentityVerificationsBankApi.md#create_identity_verification) | **POST** /api/identity_verifications | Create Identity Verification |
| [**get_identity_verification**](IdentityVerificationsBankApi.md#get_identity_verification) | **GET** /api/identity_verifications/{identity_verification_guid} | Get Identity Verification |
| [**list_identity_verifications**](IdentityVerificationsBankApi.md#list_identity_verifications) | **GET** /api/identity_verifications | List Identity Verifications |


## create_identity_verification

> <IdentityVerificationBankModel> create_identity_verification(post_identity_verification_bank_model)

Create Identity Verification

Creates an Identity Verification.  ## Identity Verifications  Identity Verifications confirm an individual's identity with for the purpose of inclusion on the platform. This know-your-customer (KYC) process is a requirement for individuals to be able to transact. At present, we offer support for Cybrid performing the verification or working with partners to accept their KYC/AML process and have it attested to in our platform.  ## State  | State | Description | |-------|-------------| | storing | The Platform is storing the identity verification details in our private store | | waiting | The Platform is waiting for the customer to complete the identity verification process | | expired | The identity verification process has expired | | completed | The identity verification process has been completed |  ## Outcome  | State | Description | |-------|-------------| | passed | The customer has passed the identity verification process | | failed | The customer has failed the identity verification process |  ## Failure Codes  | Code | Description | |-------|-------------| | id_check_failure | Failure due to an issue when verifying the provided ID | | database_check_failure | Failure due to an issue when verifying the provided information against authoritative data sources | | selfie_failure | Failure due to an issue verifying the provided selfie photo | | duplicate_person_check_failure | Failure due to a customer already existing for this person | | name_check_failure | Failure due to an issue verifying the name of the person | | address_check_failure | Failure due to an issue verifying the address of the person | | dob_check_failure | Failure due to an issue verifying the date of birth of the person | | id_number_check_failure | Failure due to an issue verifying an identification number of the person | | phone_number_check_failure | Failure due to an issue verifying the phone number of the person | | email_address_check_failure | Failure due to an issue verifying the email address of the person | | plaid_failure | Failure due to an issue interacting with Plaid | | decision_timeout | Failure due to an issue verifying the email address of the person | | requested_failure | In sandbox, the caller requested that the process failed |    Required scope: **customers:write**

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

api_instance = CybridApiBank::IdentityVerificationsBankApi.new
post_identity_verification_bank_model = CybridApiBank::PostIdentityVerificationBankModel.new({type: 'kyc', method: 'id_and_selfie'}) # PostIdentityVerificationBankModel | 

begin
  # Create Identity Verification
  result = api_instance.create_identity_verification(post_identity_verification_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling IdentityVerificationsBankApi->create_identity_verification: #{e}"
end
```

#### Using the create_identity_verification_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IdentityVerificationBankModel>, Integer, Hash)> create_identity_verification_with_http_info(post_identity_verification_bank_model)

```ruby
begin
  # Create Identity Verification
  data, status_code, headers = api_instance.create_identity_verification_with_http_info(post_identity_verification_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IdentityVerificationBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling IdentityVerificationsBankApi->create_identity_verification_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_identity_verification_bank_model** | [**PostIdentityVerificationBankModel**](PostIdentityVerificationBankModel.md) |  |  |

### Return type

[**IdentityVerificationBankModel**](IdentityVerificationBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_identity_verification

> <IdentityVerificationWithDetailsBankModel> get_identity_verification(identity_verification_guid)

Get Identity Verification

Retrieves an identity verification.  Required scope: **customers:read**

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

api_instance = CybridApiBank::IdentityVerificationsBankApi.new
identity_verification_guid = 'identity_verification_guid_example' # String | Identifier for the identity verification.

begin
  # Get Identity Verification
  result = api_instance.get_identity_verification(identity_verification_guid)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling IdentityVerificationsBankApi->get_identity_verification: #{e}"
end
```

#### Using the get_identity_verification_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IdentityVerificationWithDetailsBankModel>, Integer, Hash)> get_identity_verification_with_http_info(identity_verification_guid)

```ruby
begin
  # Get Identity Verification
  data, status_code, headers = api_instance.get_identity_verification_with_http_info(identity_verification_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IdentityVerificationWithDetailsBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling IdentityVerificationsBankApi->get_identity_verification_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identity_verification_guid** | **String** | Identifier for the identity verification. |  |

### Return type

[**IdentityVerificationWithDetailsBankModel**](IdentityVerificationWithDetailsBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_identity_verifications

> <IdentityVerificationListBankModel> list_identity_verifications(opts)

List Identity Verifications

Retrieves a list of identity verifications.  Required scope: **customers:read**

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

api_instance = CybridApiBank::IdentityVerificationsBankApi.new
opts = {
  page: 56, # Integer | The page index to retrieve.
  per_page: 56, # Integer | The number of entities per page to return.
  guid: 'guid_example', # String | Comma separated guids to list identity verifications for.
  bank_guid: 'bank_guid_example', # String | Comma separated bank_guids to list identity verifications for.
  customer_guid: 'customer_guid_example', # String | Comma separated customer_guids to list identity verifications for.
  state: 'state_example' # String | Comma separated states to list identity verifications for.
}

begin
  # List Identity Verifications
  result = api_instance.list_identity_verifications(opts)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling IdentityVerificationsBankApi->list_identity_verifications: #{e}"
end
```

#### Using the list_identity_verifications_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IdentityVerificationListBankModel>, Integer, Hash)> list_identity_verifications_with_http_info(opts)

```ruby
begin
  # List Identity Verifications
  data, status_code, headers = api_instance.list_identity_verifications_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IdentityVerificationListBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling IdentityVerificationsBankApi->list_identity_verifications_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | The page index to retrieve. | [optional] |
| **per_page** | **Integer** | The number of entities per page to return. | [optional] |
| **guid** | **String** | Comma separated guids to list identity verifications for. | [optional] |
| **bank_guid** | **String** | Comma separated bank_guids to list identity verifications for. | [optional] |
| **customer_guid** | **String** | Comma separated customer_guids to list identity verifications for. | [optional] |
| **state** | **String** | Comma separated states to list identity verifications for. | [optional] |

### Return type

[**IdentityVerificationListBankModel**](IdentityVerificationListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

