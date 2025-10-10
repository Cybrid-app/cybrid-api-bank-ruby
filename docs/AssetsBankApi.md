# CybridApiBank::AssetsBankApi

All URIs are relative to *http://api-platform-bank.local.cybrid.com:3002*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_assets**](AssetsBankApi.md#list_assets) | **GET** /api/assets | Get assets list |


## list_assets

> <AssetListBankModel> list_assets(opts)

Get assets list

Retrieves a listing of assets.

### Examples

```ruby
require 'time'
require 'cybrid_api_bank_ruby'

api_instance = CybridApiBank::AssetsBankApi.new
opts = {
  page: 56, # Integer | The page index to retrieve.
  per_page: 56, # Integer | The number of entities per page to return.
  code: 'code_example' # String | Comma separated codes to list assets for.
}

begin
  # Get assets list
  result = api_instance.list_assets(opts)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling AssetsBankApi->list_assets: #{e}"
end
```

#### Using the list_assets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AssetListBankModel>, Integer, Hash)> list_assets_with_http_info(opts)

```ruby
begin
  # Get assets list
  data, status_code, headers = api_instance.list_assets_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AssetListBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling AssetsBankApi->list_assets_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | The page index to retrieve. | [optional] |
| **per_page** | **Integer** | The number of entities per page to return. | [optional] |
| **code** | **String** | Comma separated codes to list assets for. | [optional] |

### Return type

[**AssetListBankModel**](AssetListBankModel.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

