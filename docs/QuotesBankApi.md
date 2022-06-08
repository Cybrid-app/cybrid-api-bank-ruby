# CybridApiBank::QuotesBankApi

All URIs are relative to *https://bank.demo.cybrid.app*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_quote**](QuotesBankApi.md#create_quote) | **POST** /api/quotes | Create Quote |
| [**get_quote**](QuotesBankApi.md#get_quote) | **GET** /api/quotes/{quote_guid} | Get Quote |
| [**list_quotes**](QuotesBankApi.md#list_quotes) | **GET** /api/quotes | Get quotes list |


## create_quote

> <QuoteBankModel> create_quote(post_quote_bank_model)

Create Quote

Creates a quote.  Required scope: **quotes:execute**

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

api_instance = CybridApiBank::QuotesBankApi.new
post_quote_bank_model = CybridApiBank::PostQuoteBankModel.new({customer_guid: 'customer_guid_example', symbol: 'symbol_example', side: 'buy'}) # PostQuoteBankModel | 

begin
  # Create Quote
  result = api_instance.create_quote(post_quote_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling QuotesBankApi->create_quote: #{e}"
end
```

#### Using the create_quote_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<QuoteBankModel>, Integer, Hash)> create_quote_with_http_info(post_quote_bank_model)

```ruby
begin
  # Create Quote
  data, status_code, headers = api_instance.create_quote_with_http_info(post_quote_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <QuoteBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling QuotesBankApi->create_quote_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_quote_bank_model** | [**PostQuoteBankModel**](PostQuoteBankModel.md) |  |  |

### Return type

[**QuoteBankModel**](QuoteBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_quote

> <QuoteBankModel> get_quote(quote_guid)

Get Quote

Retrieves a quote.  Required scope: **quotes:read**

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

api_instance = CybridApiBank::QuotesBankApi.new
quote_guid = 'quote_guid_example' # String | Identifier for the quote.

begin
  # Get Quote
  result = api_instance.get_quote(quote_guid)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling QuotesBankApi->get_quote: #{e}"
end
```

#### Using the get_quote_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<QuoteBankModel>, Integer, Hash)> get_quote_with_http_info(quote_guid)

```ruby
begin
  # Get Quote
  data, status_code, headers = api_instance.get_quote_with_http_info(quote_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <QuoteBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling QuotesBankApi->get_quote_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **quote_guid** | **String** | Identifier for the quote. |  |

### Return type

[**QuoteBankModel**](QuoteBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_quotes

> <QuoteListBankModel> list_quotes(opts)

Get quotes list

Retrieves a listing of quotes for all customers of a bank.  Required scope: **quotes:read**

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

api_instance = CybridApiBank::QuotesBankApi.new
opts = {
  page: 56, # Integer | 
  per_page: 56, # Integer | 
  guid: 'guid_example', # String | Comma separated quote_guids to list quotes for.
  bank_guid: 'bank_guid_example', # String | Comma separated bank_guids to list quotes for.
  customer_guid: 'customer_guid_example' # String | Comma separated customer_guids to list quotes for.
}

begin
  # Get quotes list
  result = api_instance.list_quotes(opts)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling QuotesBankApi->list_quotes: #{e}"
end
```

#### Using the list_quotes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<QuoteListBankModel>, Integer, Hash)> list_quotes_with_http_info(opts)

```ruby
begin
  # Get quotes list
  data, status_code, headers = api_instance.list_quotes_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <QuoteListBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling QuotesBankApi->list_quotes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional][default to 0] |
| **per_page** | **Integer** |  | [optional][default to 10] |
| **guid** | **String** | Comma separated quote_guids to list quotes for. | [optional] |
| **bank_guid** | **String** | Comma separated bank_guids to list quotes for. | [optional] |
| **customer_guid** | **String** | Comma separated customer_guids to list quotes for. | [optional] |

### Return type

[**QuoteListBankModel**](QuoteListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

