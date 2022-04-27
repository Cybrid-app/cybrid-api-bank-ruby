# CybridApiBank::BanksBankApi

All URIs are relative to *https://bank.demo.cybrid.app*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_bank**](BanksBankApi.md#create_bank) | **POST** /api/banks | Create Bank |
| [**get_bank**](BanksBankApi.md#get_bank) | **GET** /api/banks/{bank_guid} | Get Bank |
| [**list_banks**](BanksBankApi.md#list_banks) | **GET** /api/banks | Get banks list |


## create_bank

> <BankBankModel> create_bank(post_bank_bank_model)

Create Bank

Creates a bank.  ## Bank Type  Bank's can be created in either `sandbox` or `production` mode. Sandbox Banks will not transact in real fiat dollars or cryptocurrencies.  Via the API, only `sandbox` banks can be created. In order to enable a `production` bank please contact [Support](mailto:support@cybrid.app).  ## Backstopped Funding Source  A Backstopped Funding Source is an agreement between the Organization and Cybrid on transaction settlement. A Backstopped Funding Source is an escrow bank account that the Organization tops up on a regular basis and is drawn down by the Cybrid Platform when trades are executed by the Bank for its customers.  This feature must specifically be enabled in the Bank's `features` array by including the `backstopped_funding_source` flag. At present, backstopped funding sources is the supported method for funding trades on the platform.  Please contact [Support](mailto:support@cybrid.app) to inquire about enabling this option for your Organization.  ## Attestation Identity Records  Attestation Identity Records is a method the Cybrid Platform uses to verify the identity of a Bank's customers. Please see the documentation under the create Identity Record API for more technical detail.  This feature must specifically be enabled in the Bank's `features` array by including the `attestation_identity_records` flag. At present, attestation identity records is the supported method for verifying a customer's identity on the platform.  Please contact [Support](mailto:support@cybrid.app) to inquire about enabling this option for your Organization.    Required scope: **banks:execute**

### Examples

```ruby
require 'time'
require 'cybrid_api_bank'
# setup authorization
CybridApiBank.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = CybridApiBank::BanksBankApi.new
post_bank_bank_model = CybridApiBank::PostBankBankModel.new({name: 'name_example', type: 'sandbox', features: ['attestation_identity_records']}) # PostBankBankModel | 

begin
  # Create Bank
  result = api_instance.create_bank(post_bank_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling BanksBankApi->create_bank: #{e}"
end
```

#### Using the create_bank_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BankBankModel>, Integer, Hash)> create_bank_with_http_info(post_bank_bank_model)

```ruby
begin
  # Create Bank
  data, status_code, headers = api_instance.create_bank_with_http_info(post_bank_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BankBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling BanksBankApi->create_bank_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_bank_bank_model** | [**PostBankBankModel**](PostBankBankModel.md) |  |  |

### Return type

[**BankBankModel**](BankBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_bank

> <BankBankModel> get_bank(bank_guid)

Get Bank

Retrieves a bank.  Required scope: **banks:read**

### Examples

```ruby
require 'time'
require 'cybrid_api_bank'
# setup authorization
CybridApiBank.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = CybridApiBank::BanksBankApi.new
bank_guid = 'bank_guid_example' # String | Identifier for the bank.

begin
  # Get Bank
  result = api_instance.get_bank(bank_guid)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling BanksBankApi->get_bank: #{e}"
end
```

#### Using the get_bank_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BankBankModel>, Integer, Hash)> get_bank_with_http_info(bank_guid)

```ruby
begin
  # Get Bank
  data, status_code, headers = api_instance.get_bank_with_http_info(bank_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BankBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling BanksBankApi->get_bank_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_guid** | **String** | Identifier for the bank. |  |

### Return type

[**BankBankModel**](BankBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_banks

> <BankListBankModel> list_banks(opts)

Get banks list

Retrieves a listing of bank.  Required scope: **banks:read**

### Examples

```ruby
require 'time'
require 'cybrid_api_bank'
# setup authorization
CybridApiBank.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = CybridApiBank::BanksBankApi.new
opts = {
  page: 56, # Integer | The page index to retrieve.
  per_page: 56 # Integer | The number of entities per page to return.
}

begin
  # Get banks list
  result = api_instance.list_banks(opts)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling BanksBankApi->list_banks: #{e}"
end
```

#### Using the list_banks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BankListBankModel>, Integer, Hash)> list_banks_with_http_info(opts)

```ruby
begin
  # Get banks list
  data, status_code, headers = api_instance.list_banks_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BankListBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling BanksBankApi->list_banks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | The page index to retrieve. | [optional][default to 0] |
| **per_page** | **Integer** | The number of entities per page to return. | [optional][default to 10] |

### Return type

[**BankListBankModel**](BankListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

