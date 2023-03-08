# CybridApiBank::PricesBankApi

All URIs are relative to *https://bank.sandbox.cybrid.app*

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
  symbol: 'symbol_example' # String | Comma separated symbols to list prices for.
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
| **symbol** | **String** | Comma separated symbols to list prices for. | [optional] |

### Return type

[**Array&lt;SymbolPriceBankModel&gt;**](SymbolPriceBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

