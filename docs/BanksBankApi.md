# CybridApiBank::BanksBankApi

All URIs are relative to *http://api-platform-bank.local.cybrid.com:3002*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_bank**](BanksBankApi.md#create_bank) | **POST** /api/banks | Create Bank |
| [**get_bank**](BanksBankApi.md#get_bank) | **GET** /api/banks/{bank_guid} | Get Bank |
| [**list_banks**](BanksBankApi.md#list_banks) | **GET** /api/banks | Get banks list |
| [**update_bank**](BanksBankApi.md#update_bank) | **PATCH** /api/banks/{bank_guid} | Patch Bank |


## create_bank

> <BankBankModel> create_bank(post_bank_bank_model)

Create Bank

Creates a bank.  ## Bank Type  Bank's can be created in either `sandbox` or `production` mode. Sandbox Banks will not transact in real fiat dollars or cryptocurrencies.  Via the API, only `sandbox` banks can be created. In order to enable a `production` bank please contact [Support](mailto:support@cybrid.app).    Required scope: **banks:execute**

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

api_instance = CybridApiBank::BanksBankApi.new
post_bank_bank_model = CybridApiBank::PostBankBankModel.new({type: 'sandbox', name: 'name_example', supported_trading_symbols: ['supported_trading_symbols_example'], supported_fiat_account_assets: ['supported_fiat_account_assets_example'], supported_country_codes: ['supported_country_codes_example'], features: ['attestation_identity_records']}) # PostBankBankModel | 

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
require 'cybrid_api_bank_ruby'
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
require 'cybrid_api_bank_ruby'
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
  per_page: 56, # Integer | The number of entities per page to return.
  type: 'type_example', # String | Comma separated types to list banks for.
  guid: 'guid_example' # String | Comma separated bank_guids to list banks for.
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
| **page** | **Integer** | The page index to retrieve. | [optional] |
| **per_page** | **Integer** | The number of entities per page to return. | [optional] |
| **type** | **String** | Comma separated types to list banks for. | [optional] |
| **guid** | **String** | Comma separated bank_guids to list banks for. | [optional] |

### Return type

[**BankListBankModel**](BankListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_bank

> <BankBankModel> update_bank(bank_guid, patch_bank_bank_model)

Patch Bank

Update a bank.  Required scope: **banks:write**

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

api_instance = CybridApiBank::BanksBankApi.new
bank_guid = 'bank_guid_example' # String | Identifier for the bank.
patch_bank_bank_model = CybridApiBank::PatchBankBankModel.new # PatchBankBankModel | 

begin
  # Patch Bank
  result = api_instance.update_bank(bank_guid, patch_bank_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling BanksBankApi->update_bank: #{e}"
end
```

#### Using the update_bank_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BankBankModel>, Integer, Hash)> update_bank_with_http_info(bank_guid, patch_bank_bank_model)

```ruby
begin
  # Patch Bank
  data, status_code, headers = api_instance.update_bank_with_http_info(bank_guid, patch_bank_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BankBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling BanksBankApi->update_bank_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_guid** | **String** | Identifier for the bank. |  |
| **patch_bank_bank_model** | [**PatchBankBankModel**](PatchBankBankModel.md) |  |  |

### Return type

[**BankBankModel**](BankBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

