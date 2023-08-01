# CybridApiBank::TradesBankApi

All URIs are relative to *https://bank.sandbox.cybrid.app*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_trade**](TradesBankApi.md#create_trade) | **POST** /api/trades | Create Trade |
| [**get_trade**](TradesBankApi.md#get_trade) | **GET** /api/trades/{trade_guid} | Get Trade |
| [**list_trades**](TradesBankApi.md#list_trades) | **GET** /api/trades | Get trades list |


## create_trade

> <TradeBankModel> create_trade(post_trade_bank_model)

Create Trade

Creates a trade.  ## State  | State | Description | |-------|-------------| | storing | The Platform is storing the trade details in our private store | | pending | The Platform is executing the trade | | cancelled | The Platform has cancelled the trade | | settling | The Platform is settling the trade | | completed | The Platform has successfully completed the trade | | failed | The Platform was not able to successfully complete the trade |  ## Failure codes  | Code | Description | |------|-------------| | non_sufficient_funds | The customer does not have enough funds to complete the trade | | unsupported | The trading pair is not supported for this customer |    Required scope: **trades:execute**

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

api_instance = CybridApiBank::TradesBankApi.new
post_trade_bank_model = CybridApiBank::PostTradeBankModel.new({quote_guid: 'quote_guid_example'}) # PostTradeBankModel | 

begin
  # Create Trade
  result = api_instance.create_trade(post_trade_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling TradesBankApi->create_trade: #{e}"
end
```

#### Using the create_trade_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TradeBankModel>, Integer, Hash)> create_trade_with_http_info(post_trade_bank_model)

```ruby
begin
  # Create Trade
  data, status_code, headers = api_instance.create_trade_with_http_info(post_trade_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TradeBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling TradesBankApi->create_trade_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_trade_bank_model** | [**PostTradeBankModel**](PostTradeBankModel.md) |  |  |

### Return type

[**TradeBankModel**](TradeBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_trade

> <TradeBankModel> get_trade(trade_guid)

Get Trade

Retrieves a trade.  Required scope: **trades:read**

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

api_instance = CybridApiBank::TradesBankApi.new
trade_guid = 'trade_guid_example' # String | Identifier for the trade.

begin
  # Get Trade
  result = api_instance.get_trade(trade_guid)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling TradesBankApi->get_trade: #{e}"
end
```

#### Using the get_trade_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TradeBankModel>, Integer, Hash)> get_trade_with_http_info(trade_guid)

```ruby
begin
  # Get Trade
  data, status_code, headers = api_instance.get_trade_with_http_info(trade_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TradeBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling TradesBankApi->get_trade_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **trade_guid** | **String** | Identifier for the trade. |  |

### Return type

[**TradeBankModel**](TradeBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_trades

> <TradeListBankModel> list_trades(opts)

Get trades list

Retrieves a listing of trades.  Required scope: **trades:read**

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

api_instance = CybridApiBank::TradesBankApi.new
opts = {
  page: 56, # Integer | The page index to retrieve.
  per_page: 56, # Integer | The number of entities per page to return.
  guid: 'guid_example', # String | Comma separated trade_guids to list trades for.
  bank_guid: 'bank_guid_example', # String | Comma separated bank_guids to list trades for.
  customer_guid: 'customer_guid_example', # String | Comma separated customer_guids to list trades for.
  account_guid: 'account_guid_example', # String | Comma separated account_guids to list trades for.
  state: 'state_example' # String | Comma separated states to list trades for.
}

begin
  # Get trades list
  result = api_instance.list_trades(opts)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling TradesBankApi->list_trades: #{e}"
end
```

#### Using the list_trades_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TradeListBankModel>, Integer, Hash)> list_trades_with_http_info(opts)

```ruby
begin
  # Get trades list
  data, status_code, headers = api_instance.list_trades_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TradeListBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling TradesBankApi->list_trades_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | The page index to retrieve. | [optional] |
| **per_page** | **Integer** | The number of entities per page to return. | [optional] |
| **guid** | **String** | Comma separated trade_guids to list trades for. | [optional] |
| **bank_guid** | **String** | Comma separated bank_guids to list trades for. | [optional] |
| **customer_guid** | **String** | Comma separated customer_guids to list trades for. | [optional] |
| **account_guid** | **String** | Comma separated account_guids to list trades for. | [optional] |
| **state** | **String** | Comma separated states to list trades for. | [optional] |

### Return type

[**TradeListBankModel**](TradeListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

