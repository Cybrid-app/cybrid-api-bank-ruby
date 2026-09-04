# CybridApiBank::TransactionsBankApi

All URIs are relative to *https://bank.sandbox.cybrid.app*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_transactions**](TransactionsBankApi.md#list_transactions) | **GET** /api/transactions | List Transactions |


## list_transactions

> <TransactionListBankModel> list_transactions(account_guid, opts)

List Transactions

Retrieves a listing of transactions (an account statement) for an account.  Required scope: **transactions:read**

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

api_instance = CybridApiBank::TransactionsBankApi.new
account_guid = 'account_guid_example' # String | 
opts = {
  cursor: 'cursor_example', # String | 
  per_page: 56, # Integer | 
  direction: 'credit', # String | 
  created_at_gte: 'created_at_gte_example', # String | Created at start date-time inclusive lower bound, ISO8601.
  created_at_lt: 'created_at_lt_example', # String | Created at end date-time exclusive upper bound, ISO8601.
  include_balances: true # Boolean | Include the running posted balance on the account as of each transaction.
}

begin
  # List Transactions
  result = api_instance.list_transactions(account_guid, opts)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling TransactionsBankApi->list_transactions: #{e}"
end
```

#### Using the list_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TransactionListBankModel>, Integer, Hash)> list_transactions_with_http_info(account_guid, opts)

```ruby
begin
  # List Transactions
  data, status_code, headers = api_instance.list_transactions_with_http_info(account_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TransactionListBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling TransactionsBankApi->list_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_guid** | **String** |  |  |
| **cursor** | **String** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |
| **direction** | **String** |  | [optional] |
| **created_at_gte** | **String** | Created at start date-time inclusive lower bound, ISO8601. | [optional] |
| **created_at_lt** | **String** | Created at end date-time exclusive upper bound, ISO8601. | [optional] |
| **include_balances** | **Boolean** | Include the running posted balance on the account as of each transaction. | [optional] |

### Return type

[**TransactionListBankModel**](TransactionListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

