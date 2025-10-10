# CybridApiBank::SymbolsBankApi

All URIs are relative to *http://api-platform-bank.local.cybrid.com:3002*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_symbols**](SymbolsBankApi.md#list_symbols) | **GET** /api/symbols | Get Symbols list |


## list_symbols

> Array&lt;String&gt; list_symbols

Get Symbols list

Retrieves a listing of symbols.Required scope: **prices:read**

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

api_instance = CybridApiBank::SymbolsBankApi.new

begin
  # Get Symbols list
  result = api_instance.list_symbols
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling SymbolsBankApi->list_symbols: #{e}"
end
```

#### Using the list_symbols_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;String&gt;, Integer, Hash)> list_symbols_with_http_info

```ruby
begin
  # Get Symbols list
  data, status_code, headers = api_instance.list_symbols_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;String&gt;
rescue CybridApiBank::ApiError => e
  puts "Error when calling SymbolsBankApi->list_symbols_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**Array&lt;String&gt;**

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

