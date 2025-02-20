# CybridApiBank::AccountsBankApi

All URIs are relative to *https://bank.sandbox.cybrid.app*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_account**](AccountsBankApi.md#create_account) | **POST** /api/accounts | Create Account |
| [**get_account**](AccountsBankApi.md#get_account) | **GET** /api/accounts/{account_guid} | Get Account |
| [**list_accounts**](AccountsBankApi.md#list_accounts) | **GET** /api/accounts | List Accounts |


## create_account

> <AccountBankModel> create_account(post_account_bank_model)

Create Account

Creates an account.  ## Account Type  An Account is tied to a specific cryptocurrency or fiat and is comprised of transactions and a current balance.  An account is required to allow a Bank or Customer to hold cryptocurrency or a Customer to hold fiat on the Cybrid Platform.  At present, accounts can be created as `trading`, `storage` or `fiat ` accounts and are required before a Customer can generate quotes or execute a `trade` or `transfer`.  To create accounts for your Bank, omit the `customer_guid` parameter in the request body. To create accounts for your Customers, include the `customer_guid` parameter in the request body.  At the bank level, `invoice_operations` accounts can be configured to pre-fund your customers' Lightning Network operations.  ## Asset  The asset is the specific cryptocurrency or fiat that the account holds, e.g., 'BTC' for Bitcoin or `USD` for US dollars. See the Symbols API for a complete list of cryptocurrencies and fiat supported.   ## State  | State | Description | |-------|-------------| | storing | The Platform is storing the account details in our private store | | created | The Platform has created the account |    Required scope: **accounts:execute**

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

api_instance = CybridApiBank::AccountsBankApi.new
post_account_bank_model = CybridApiBank::PostAccountBankModel.new({type: 'trading', asset: 'asset_example', name: 'name_example'}) # PostAccountBankModel | 

begin
  # Create Account
  result = api_instance.create_account(post_account_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling AccountsBankApi->create_account: #{e}"
end
```

#### Using the create_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountBankModel>, Integer, Hash)> create_account_with_http_info(post_account_bank_model)

```ruby
begin
  # Create Account
  data, status_code, headers = api_instance.create_account_with_http_info(post_account_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling AccountsBankApi->create_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_account_bank_model** | [**PostAccountBankModel**](PostAccountBankModel.md) |  |  |

### Return type

[**AccountBankModel**](AccountBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_account

> <AccountBankModel> get_account(account_guid)

Get Account

Retrieves an account.  Required scope: **accounts:read**

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

api_instance = CybridApiBank::AccountsBankApi.new
account_guid = 'account_guid_example' # String | Identifier for the account.

begin
  # Get Account
  result = api_instance.get_account(account_guid)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling AccountsBankApi->get_account: #{e}"
end
```

#### Using the get_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountBankModel>, Integer, Hash)> get_account_with_http_info(account_guid)

```ruby
begin
  # Get Account
  data, status_code, headers = api_instance.get_account_with_http_info(account_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling AccountsBankApi->get_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_guid** | **String** | Identifier for the account. |  |

### Return type

[**AccountBankModel**](AccountBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_accounts

> <AccountListBankModel> list_accounts(opts)

List Accounts

Retrieves a list of accounts.  Required scope: **accounts:read**

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

api_instance = CybridApiBank::AccountsBankApi.new
opts = {
  page: 56, # Integer | The page index to retrieve.
  per_page: 56, # Integer | The number of entities per page to return.
  owner: 'owner_example', # String | The owner of the entity.
  guid: 'guid_example', # String | Comma separated account_guids to list accounts for.
  type: 'type_example', # String | Comma separated account_types to list accounts for.
  bank_guid: 'bank_guid_example', # String | Comma separated bank_guids to list accounts for.
  customer_guid: 'customer_guid_example', # String | Comma separated customer_guids to list accounts for.
  label: 'label_example' # String | Comma separated labels to list accounts for.
}

begin
  # List Accounts
  result = api_instance.list_accounts(opts)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling AccountsBankApi->list_accounts: #{e}"
end
```

#### Using the list_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountListBankModel>, Integer, Hash)> list_accounts_with_http_info(opts)

```ruby
begin
  # List Accounts
  data, status_code, headers = api_instance.list_accounts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountListBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling AccountsBankApi->list_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | The page index to retrieve. | [optional] |
| **per_page** | **Integer** | The number of entities per page to return. | [optional] |
| **owner** | **String** | The owner of the entity. | [optional] |
| **guid** | **String** | Comma separated account_guids to list accounts for. | [optional] |
| **type** | **String** | Comma separated account_types to list accounts for. | [optional] |
| **bank_guid** | **String** | Comma separated bank_guids to list accounts for. | [optional] |
| **customer_guid** | **String** | Comma separated customer_guids to list accounts for. | [optional] |
| **label** | **String** | Comma separated labels to list accounts for. | [optional] |

### Return type

[**AccountListBankModel**](AccountListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

