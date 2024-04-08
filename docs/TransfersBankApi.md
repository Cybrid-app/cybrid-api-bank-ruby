# CybridApiBank::TransfersBankApi

All URIs are relative to *https://bank.sandbox.cybrid.app*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_transfer**](TransfersBankApi.md#create_transfer) | **POST** /api/transfers | Create Transfer |
| [**get_transfer**](TransfersBankApi.md#get_transfer) | **GET** /api/transfers/{transfer_guid} | Get Transfer |
| [**list_transfers**](TransfersBankApi.md#list_transfers) | **GET** /api/transfers | Get transfers list |


## create_transfer

> <TransferBankModel> create_transfer(post_transfer_bank_model)

Create Transfer

Creates a transfer.  ## State  | State | Description | |-------|-------------| | storing | The Platform is storing the trade details in our private store | | reviewing | The Platform is reviewing the transfer for compliance | | pending | The Platform is executing the transfer | | completed | The Platform has successfully completed the transfer | | failed | The Platform was not able to successfully complete the transfer |  ## Failure codes  | Code | Description | |------|-------------| | non_sufficient_funds | The customer does not have enough funds to complete the transfer | | refresh_required | The transfer's associated external_bank_account needs to be reconnected via Plaid | | party_name_invalid | The transfer's associated external bank account has an invalid party name | | payment_rail_invalid | The payment rail specified for the transfer is not supported by the external bank account | | compliance_rejection | The transfer was rejected for compliance reasons | | cancelled | The transfer was manually cancelled | | reversed | The transfer was reversed | | limit_exceeded | The customer is over the limits that have been set for them for this activity | | network_fee_too_low | The transfer was rejected due to the network fee being too low | | amount_too_low | The transfer was rejected due to the amount being too low |    Required scope: **transfers:execute**

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

api_instance = CybridApiBank::TransfersBankApi.new
post_transfer_bank_model = CybridApiBank::PostTransferBankModel.new({quote_guid: 'quote_guid_example', transfer_type: 'funding'}) # PostTransferBankModel | 

begin
  # Create Transfer
  result = api_instance.create_transfer(post_transfer_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling TransfersBankApi->create_transfer: #{e}"
end
```

#### Using the create_transfer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TransferBankModel>, Integer, Hash)> create_transfer_with_http_info(post_transfer_bank_model)

```ruby
begin
  # Create Transfer
  data, status_code, headers = api_instance.create_transfer_with_http_info(post_transfer_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TransferBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling TransfersBankApi->create_transfer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_transfer_bank_model** | [**PostTransferBankModel**](PostTransferBankModel.md) |  |  |

### Return type

[**TransferBankModel**](TransferBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_transfer

> <TransferBankModel> get_transfer(transfer_guid)

Get Transfer

Retrieves a transfer.  Required scope: **transfers:read**

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

api_instance = CybridApiBank::TransfersBankApi.new
transfer_guid = 'transfer_guid_example' # String | Identifier for the transfer.

begin
  # Get Transfer
  result = api_instance.get_transfer(transfer_guid)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling TransfersBankApi->get_transfer: #{e}"
end
```

#### Using the get_transfer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TransferBankModel>, Integer, Hash)> get_transfer_with_http_info(transfer_guid)

```ruby
begin
  # Get Transfer
  data, status_code, headers = api_instance.get_transfer_with_http_info(transfer_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TransferBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling TransfersBankApi->get_transfer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transfer_guid** | **String** | Identifier for the transfer. |  |

### Return type

[**TransferBankModel**](TransferBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_transfers

> <TransferListBankModel> list_transfers(opts)

Get transfers list

Retrieves a listing of transfers.  Required scope: **transfers:read**

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

api_instance = CybridApiBank::TransfersBankApi.new
opts = {
  page: 56, # Integer | The page index to retrieve.
  per_page: 56, # Integer | The number of entities per page to return.
  guid: 'guid_example', # String | Comma separated transfer_guids to list transfers for.
  transfer_type: 'transfer_type_example', # String | Comma separated transfer_types to list accounts for.
  bank_guid: 'bank_guid_example', # String | Comma separated bank_guids to list transfers for.
  customer_guid: 'customer_guid_example', # String | Comma separated customer_guids to list transfers for.
  account_guid: 'account_guid_example', # String | Comma separated account_guids to list transfers for.
  state: 'state_example', # String | Comma separated states to list transfers for.
  side: 'side_example', # String | Comma separated sides to list transfers for.
  label: 'label_example', # String | Comma separated labels to list transfers for.
  created_at_gte: 'created_at_gte_example', # String | Created at start date inclusive lower bound, ISO8601
  created_at_lt: 'created_at_lt_example', # String | Created at end date exclusive upper bound, ISO8601.
  updated_at_gte: 'updated_at_gte_example', # String | Created at start date inclusive lower bound, ISO8601
  updated_at_lt: 'updated_at_lt_example' # String | Created at end date exclusive upper bound, ISO8601.
}

begin
  # Get transfers list
  result = api_instance.list_transfers(opts)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling TransfersBankApi->list_transfers: #{e}"
end
```

#### Using the list_transfers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TransferListBankModel>, Integer, Hash)> list_transfers_with_http_info(opts)

```ruby
begin
  # Get transfers list
  data, status_code, headers = api_instance.list_transfers_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TransferListBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling TransfersBankApi->list_transfers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | The page index to retrieve. | [optional] |
| **per_page** | **Integer** | The number of entities per page to return. | [optional] |
| **guid** | **String** | Comma separated transfer_guids to list transfers for. | [optional] |
| **transfer_type** | **String** | Comma separated transfer_types to list accounts for. | [optional] |
| **bank_guid** | **String** | Comma separated bank_guids to list transfers for. | [optional] |
| **customer_guid** | **String** | Comma separated customer_guids to list transfers for. | [optional] |
| **account_guid** | **String** | Comma separated account_guids to list transfers for. | [optional] |
| **state** | **String** | Comma separated states to list transfers for. | [optional] |
| **side** | **String** | Comma separated sides to list transfers for. | [optional] |
| **label** | **String** | Comma separated labels to list transfers for. | [optional] |
| **created_at_gte** | **String** | Created at start date inclusive lower bound, ISO8601 | [optional] |
| **created_at_lt** | **String** | Created at end date exclusive upper bound, ISO8601. | [optional] |
| **updated_at_gte** | **String** | Created at start date inclusive lower bound, ISO8601 | [optional] |
| **updated_at_lt** | **String** | Created at end date exclusive upper bound, ISO8601. | [optional] |

### Return type

[**TransferListBankModel**](TransferListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

