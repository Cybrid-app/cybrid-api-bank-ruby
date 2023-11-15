# CybridApiBank::DepositBankAccountsBankApi

All URIs are relative to *https://bank.sandbox.cybrid.app*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_deposit_bank_account**](DepositBankAccountsBankApi.md#create_deposit_bank_account) | **POST** /api/deposit_bank_accounts | Create Deposit Bank Account |
| [**get_deposit_bank_account**](DepositBankAccountsBankApi.md#get_deposit_bank_account) | **GET** /api/deposit_bank_accounts/{deposit_bank_account_guid} | Get Deposit Bank Account |
| [**list_deposit_bank_accounts**](DepositBankAccountsBankApi.md#list_deposit_bank_accounts) | **GET** /api/deposit_bank_accounts | List Deposit Bank Accounts |


## create_deposit_bank_account

> <DepositBankAccountBankModel> create_deposit_bank_account(post_deposit_bank_account_bank_model)

Create Deposit Bank Account

Creates a deposit bank account.  ## State  | State | Description | |-------|-------------| | storing | The Platform is storing the deposit bank account details in our private store | | created | The Platform has created the deposit bank account |    Required scope: **deposit_bank_accounts:execute**

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

api_instance = CybridApiBank::DepositBankAccountsBankApi.new
post_deposit_bank_account_bank_model = CybridApiBank::PostDepositBankAccountBankModel.new({account_guid: 'account_guid_example'}) # PostDepositBankAccountBankModel | 

begin
  # Create Deposit Bank Account
  result = api_instance.create_deposit_bank_account(post_deposit_bank_account_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling DepositBankAccountsBankApi->create_deposit_bank_account: #{e}"
end
```

#### Using the create_deposit_bank_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DepositBankAccountBankModel>, Integer, Hash)> create_deposit_bank_account_with_http_info(post_deposit_bank_account_bank_model)

```ruby
begin
  # Create Deposit Bank Account
  data, status_code, headers = api_instance.create_deposit_bank_account_with_http_info(post_deposit_bank_account_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DepositBankAccountBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling DepositBankAccountsBankApi->create_deposit_bank_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_deposit_bank_account_bank_model** | [**PostDepositBankAccountBankModel**](PostDepositBankAccountBankModel.md) |  |  |

### Return type

[**DepositBankAccountBankModel**](DepositBankAccountBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_deposit_bank_account

> <DepositBankAccountBankModel> get_deposit_bank_account(deposit_bank_account_guid)

Get Deposit Bank Account

Retrieves a deposit bank account.  Required scope: **deposit_bank_accounts:read**

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

api_instance = CybridApiBank::DepositBankAccountsBankApi.new
deposit_bank_account_guid = 'deposit_bank_account_guid_example' # String | Identifier for the deposit bank account.

begin
  # Get Deposit Bank Account
  result = api_instance.get_deposit_bank_account(deposit_bank_account_guid)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling DepositBankAccountsBankApi->get_deposit_bank_account: #{e}"
end
```

#### Using the get_deposit_bank_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DepositBankAccountBankModel>, Integer, Hash)> get_deposit_bank_account_with_http_info(deposit_bank_account_guid)

```ruby
begin
  # Get Deposit Bank Account
  data, status_code, headers = api_instance.get_deposit_bank_account_with_http_info(deposit_bank_account_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DepositBankAccountBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling DepositBankAccountsBankApi->get_deposit_bank_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **deposit_bank_account_guid** | **String** | Identifier for the deposit bank account. |  |

### Return type

[**DepositBankAccountBankModel**](DepositBankAccountBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_deposit_bank_accounts

> <DepositBankAccountListBankModel> list_deposit_bank_accounts(opts)

List Deposit Bank Accounts

Retrieves a list of deposit bank accounts.  Required scope: **deposit_bank_accounts:read**

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

api_instance = CybridApiBank::DepositBankAccountsBankApi.new
opts = {
  page: 56, # Integer | The page index to retrieve.
  per_page: 56, # Integer | The number of entities per page to return.
  guid: 'guid_example', # String | Comma separated guids to list deposit bank accounts for.
  bank_guid: 'bank_guid_example', # String | Comma separated bank_guids to list deposit bank accounts for.
  customer_guid: 'customer_guid_example', # String | Comma separated customer_guids to list deposit bank accounts for.
  label: 'label_example' # String | Comma separated labels to list deposit bank accounts for.
}

begin
  # List Deposit Bank Accounts
  result = api_instance.list_deposit_bank_accounts(opts)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling DepositBankAccountsBankApi->list_deposit_bank_accounts: #{e}"
end
```

#### Using the list_deposit_bank_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DepositBankAccountListBankModel>, Integer, Hash)> list_deposit_bank_accounts_with_http_info(opts)

```ruby
begin
  # List Deposit Bank Accounts
  data, status_code, headers = api_instance.list_deposit_bank_accounts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DepositBankAccountListBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling DepositBankAccountsBankApi->list_deposit_bank_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | The page index to retrieve. | [optional] |
| **per_page** | **Integer** | The number of entities per page to return. | [optional] |
| **guid** | **String** | Comma separated guids to list deposit bank accounts for. | [optional] |
| **bank_guid** | **String** | Comma separated bank_guids to list deposit bank accounts for. | [optional] |
| **customer_guid** | **String** | Comma separated customer_guids to list deposit bank accounts for. | [optional] |
| **label** | **String** | Comma separated labels to list deposit bank accounts for. | [optional] |

### Return type

[**DepositBankAccountListBankModel**](DepositBankAccountListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

