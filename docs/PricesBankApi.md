# CybridApiBank::PricesBankApi

All URIs are relative to *http://api-platform-bank.local.cybrid.com:3002*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_prices**](PricesBankApi.md#list_prices) | **GET** /api/prices | Get Price |


## list_prices

> <Array<SymbolPriceBankModel>> list_prices(opts)

Get Price

Retrieves a listing of symbol prices.  ## Symbols  Symbol are pairs and are in the format asset-counter_asset, e.g., 'BTC-USD' for the Bitcoin/ USD pair. See the Symbols API for a complete list of cryptocurrencies supported.    Required scope: **prices:read**

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

api_instance = CybridApiBank::PricesBankApi.new
opts = {
  symbol: 'symbol_example', # String | Comma separated trading symbols to list prices for.
  trading_symbol: 'trading_symbol_example', # String | Comma separated trading symbols to list prices for.
  payout_symbol: 'payout_symbol_example', # String | Comma separated payout symbols to list prices for.
  payout_country_code: 'payout_country_code_example', # String | Comma separated payout country codes to list prices for.
  payout_participants_type: 'payout_participants_type_example', # String | Comma separated payout participants types to list prices for.
  payout_route: 'payout_route_example', # String | Comma separated payout routes to list prices for.
  bank_guid: 'bank_guid_example' # String | The bank identifier to retrieve prices for.
}

begin
  # Get Price
  result = api_instance.list_prices(opts)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling PricesBankApi->list_prices: #{e}"
end
```

#### Using the list_prices_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SymbolPriceBankModel>>, Integer, Hash)> list_prices_with_http_info(opts)

```ruby
begin
  # Get Price
  data, status_code, headers = api_instance.list_prices_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SymbolPriceBankModel>>
rescue CybridApiBank::ApiError => e
  puts "Error when calling PricesBankApi->list_prices_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol** | **String** | Comma separated trading symbols to list prices for. | [optional] |
| **trading_symbol** | **String** | Comma separated trading symbols to list prices for. | [optional] |
| **payout_symbol** | **String** | Comma separated payout symbols to list prices for. | [optional] |
| **payout_country_code** | **String** | Comma separated payout country codes to list prices for. | [optional] |
| **payout_participants_type** | **String** | Comma separated payout participants types to list prices for. | [optional] |
| **payout_route** | **String** | Comma separated payout routes to list prices for. | [optional] |
| **bank_guid** | **String** | The bank identifier to retrieve prices for. | [optional] |

### Return type

[**Array&lt;SymbolPriceBankModel&gt;**](SymbolPriceBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

