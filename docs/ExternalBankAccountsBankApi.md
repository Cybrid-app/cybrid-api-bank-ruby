# CybridApiBank::ExternalBankAccountsBankApi

All URIs are relative to *https://bank.sandbox.cybrid.app*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_external_bank_account**](ExternalBankAccountsBankApi.md#create_external_bank_account) | **POST** /api/external_bank_accounts | Create ExternalBankAccount |
| [**delete_external_bank_account**](ExternalBankAccountsBankApi.md#delete_external_bank_account) | **DELETE** /api/external_bank_accounts/{external_bank_account_guid} | Delete External Bank Account |
| [**get_external_bank_account**](ExternalBankAccountsBankApi.md#get_external_bank_account) | **GET** /api/external_bank_accounts/{external_bank_account_guid} | Get External Bank Account |
| [**list_external_bank_accounts**](ExternalBankAccountsBankApi.md#list_external_bank_accounts) | **GET** /api/external_bank_accounts | Get external bank accounts list |
| [**patch_external_bank_account**](ExternalBankAccountsBankApi.md#patch_external_bank_account) | **PATCH** /api/external_bank_accounts/{external_bank_account_guid} | Patch ExternalBankAccount |


## create_external_bank_account

> <ExternalBankAccountBankModel> create_external_bank_account(post_external_bank_account_bank_model)

Create ExternalBankAccount

Create an ExternalBankAccount.  Required scope: **external_bank_accounts:execute**

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

api_instance = CybridApiBank::ExternalBankAccountsBankApi.new
post_external_bank_account_bank_model = CybridApiBank::PostExternalBankAccountBankModel.new({name: 'name_example', account_kind: 'plaid', asset: 'asset_example'}) # PostExternalBankAccountBankModel | 

begin
  # Create ExternalBankAccount
  result = api_instance.create_external_bank_account(post_external_bank_account_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling ExternalBankAccountsBankApi->create_external_bank_account: #{e}"
end
```

#### Using the create_external_bank_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExternalBankAccountBankModel>, Integer, Hash)> create_external_bank_account_with_http_info(post_external_bank_account_bank_model)

```ruby
begin
  # Create ExternalBankAccount
  data, status_code, headers = api_instance.create_external_bank_account_with_http_info(post_external_bank_account_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExternalBankAccountBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling ExternalBankAccountsBankApi->create_external_bank_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_external_bank_account_bank_model** | [**PostExternalBankAccountBankModel**](PostExternalBankAccountBankModel.md) |  |  |

### Return type

[**ExternalBankAccountBankModel**](ExternalBankAccountBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_external_bank_account

> <ExternalBankAccountBankModel> delete_external_bank_account(external_bank_account_guid)

Delete External Bank Account

Deletes an external bank account.  Required scope: **external_bank_accounts:execute**

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

api_instance = CybridApiBank::ExternalBankAccountsBankApi.new
external_bank_account_guid = 'external_bank_account_guid_example' # String | Identifier for the external bank account.

begin
  # Delete External Bank Account
  result = api_instance.delete_external_bank_account(external_bank_account_guid)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling ExternalBankAccountsBankApi->delete_external_bank_account: #{e}"
end
```

#### Using the delete_external_bank_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExternalBankAccountBankModel>, Integer, Hash)> delete_external_bank_account_with_http_info(external_bank_account_guid)

```ruby
begin
  # Delete External Bank Account
  data, status_code, headers = api_instance.delete_external_bank_account_with_http_info(external_bank_account_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExternalBankAccountBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling ExternalBankAccountsBankApi->delete_external_bank_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_bank_account_guid** | **String** | Identifier for the external bank account. |  |

### Return type

[**ExternalBankAccountBankModel**](ExternalBankAccountBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_external_bank_account

> <ExternalBankAccountBankModel> get_external_bank_account(external_bank_account_guid)

Get External Bank Account

Retrieves an external bank account.  Required scope: **external_bank_accounts:read**

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

api_instance = CybridApiBank::ExternalBankAccountsBankApi.new
external_bank_account_guid = 'external_bank_account_guid_example' # String | Identifier for the external bank account.

begin
  # Get External Bank Account
  result = api_instance.get_external_bank_account(external_bank_account_guid)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling ExternalBankAccountsBankApi->get_external_bank_account: #{e}"
end
```

#### Using the get_external_bank_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExternalBankAccountBankModel>, Integer, Hash)> get_external_bank_account_with_http_info(external_bank_account_guid)

```ruby
begin
  # Get External Bank Account
  data, status_code, headers = api_instance.get_external_bank_account_with_http_info(external_bank_account_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExternalBankAccountBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling ExternalBankAccountsBankApi->get_external_bank_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_bank_account_guid** | **String** | Identifier for the external bank account. |  |

### Return type

[**ExternalBankAccountBankModel**](ExternalBankAccountBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_external_bank_accounts

> <ExternalBankAccountListBankModel> list_external_bank_accounts(opts)

Get external bank accounts list

Retrieves a listing of external bank accounts.  Required scope: **external_bank_accounts:read**

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

api_instance = CybridApiBank::ExternalBankAccountsBankApi.new
opts = {
  page: 56, # Integer | The page index to retrieve.
  per_page: 56, # Integer | The number of entities per page to return.
  guid: 'guid_example', # String | Comma separated external_bank_account_guids to list external_bank_accounts for.
  bank_guid: 'bank_guid_example', # String | Comma separated bank_guids to list external_bank_accounts for.
  customer_guid: 'customer_guid_example' # String | Comma separated customer_guids to list external_bank_accounts for.
}

begin
  # Get external bank accounts list
  result = api_instance.list_external_bank_accounts(opts)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling ExternalBankAccountsBankApi->list_external_bank_accounts: #{e}"
end
```

#### Using the list_external_bank_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExternalBankAccountListBankModel>, Integer, Hash)> list_external_bank_accounts_with_http_info(opts)

```ruby
begin
  # Get external bank accounts list
  data, status_code, headers = api_instance.list_external_bank_accounts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExternalBankAccountListBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling ExternalBankAccountsBankApi->list_external_bank_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | The page index to retrieve. | [optional] |
| **per_page** | **Integer** | The number of entities per page to return. | [optional] |
| **guid** | **String** | Comma separated external_bank_account_guids to list external_bank_accounts for. | [optional] |
| **bank_guid** | **String** | Comma separated bank_guids to list external_bank_accounts for. | [optional] |
| **customer_guid** | **String** | Comma separated customer_guids to list external_bank_accounts for. | [optional] |

### Return type

[**ExternalBankAccountListBankModel**](ExternalBankAccountListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_external_bank_account

> <ExternalBankAccountBankModel> patch_external_bank_account(external_bank_account_guid, patch_external_bank_account_bank_model)

Patch ExternalBankAccount

Patch an external bank account.  Required scope: **external_bank_accounts:write**

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

api_instance = CybridApiBank::ExternalBankAccountsBankApi.new
external_bank_account_guid = 'external_bank_account_guid_example' # String | Identifier for the external bank account.
patch_external_bank_account_bank_model = CybridApiBank::PatchExternalBankAccountBankModel.new({state: 'completed'}) # PatchExternalBankAccountBankModel | 

begin
  # Patch ExternalBankAccount
  result = api_instance.patch_external_bank_account(external_bank_account_guid, patch_external_bank_account_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling ExternalBankAccountsBankApi->patch_external_bank_account: #{e}"
end
```

#### Using the patch_external_bank_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExternalBankAccountBankModel>, Integer, Hash)> patch_external_bank_account_with_http_info(external_bank_account_guid, patch_external_bank_account_bank_model)

```ruby
begin
  # Patch ExternalBankAccount
  data, status_code, headers = api_instance.patch_external_bank_account_with_http_info(external_bank_account_guid, patch_external_bank_account_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExternalBankAccountBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling ExternalBankAccountsBankApi->patch_external_bank_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_bank_account_guid** | **String** | Identifier for the external bank account. |  |
| **patch_external_bank_account_bank_model** | [**PatchExternalBankAccountBankModel**](PatchExternalBankAccountBankModel.md) |  |  |

### Return type

[**ExternalBankAccountBankModel**](ExternalBankAccountBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

