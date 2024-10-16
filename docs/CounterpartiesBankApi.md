# CybridApiBank::CounterpartiesBankApi

All URIs are relative to *https://bank.sandbox.cybrid.app*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_counterparty**](CounterpartiesBankApi.md#create_counterparty) | **POST** /api/counterparties | Create Counterparty |
| [**get_counterparty**](CounterpartiesBankApi.md#get_counterparty) | **GET** /api/counterparties/{counterparty_guid} | Get Counterparty |
| [**list_counterparties**](CounterpartiesBankApi.md#list_counterparties) | **GET** /api/counterparties | Get counterparties list |


## create_counterparty

> <CounterpartyBankModel> create_counterparty(post_counterparty_bank_model)

Create Counterparty

Creates a counterparty.  ## Counterparty Type  Counterparty resources are an abstraction for real world individuals and businesses that are not directly on the Cybrid Platform.  ## State  | State | Description | |-------|-------------| | storing | The Platform is storing the counterparty details in our private store | | unverified | The Platform has not yet verified the counterparty's identity | | verified | The Platform has verified the counterparty's identity | | rejected | The Platform was not able to successfully verify the counterparty's identity |    Required scope: **counterparties:execute**

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

api_instance = CybridApiBank::CounterpartiesBankApi.new
post_counterparty_bank_model = CybridApiBank::PostCounterpartyBankModel.new({type: 'business', address: CybridApiBank::PostCounterpartyAddressBankModel.new({street: 'street_example', city: 'city_example', country_code: 'country_code_example'})}) # PostCounterpartyBankModel | 

begin
  # Create Counterparty
  result = api_instance.create_counterparty(post_counterparty_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling CounterpartiesBankApi->create_counterparty: #{e}"
end
```

#### Using the create_counterparty_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CounterpartyBankModel>, Integer, Hash)> create_counterparty_with_http_info(post_counterparty_bank_model)

```ruby
begin
  # Create Counterparty
  data, status_code, headers = api_instance.create_counterparty_with_http_info(post_counterparty_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CounterpartyBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling CounterpartiesBankApi->create_counterparty_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_counterparty_bank_model** | [**PostCounterpartyBankModel**](PostCounterpartyBankModel.md) |  |  |

### Return type

[**CounterpartyBankModel**](CounterpartyBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_counterparty

> <CounterpartyBankModel> get_counterparty(counterparty_guid, opts)

Get Counterparty

Retrieves a counterparty.  Required scope: **counterparties:read**

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

api_instance = CybridApiBank::CounterpartiesBankApi.new
counterparty_guid = 'counterparty_guid_example' # String | Identifier for the counterparty.
opts = {
  include_pii: true # Boolean | Include PII in the response.
}

begin
  # Get Counterparty
  result = api_instance.get_counterparty(counterparty_guid, opts)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling CounterpartiesBankApi->get_counterparty: #{e}"
end
```

#### Using the get_counterparty_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CounterpartyBankModel>, Integer, Hash)> get_counterparty_with_http_info(counterparty_guid, opts)

```ruby
begin
  # Get Counterparty
  data, status_code, headers = api_instance.get_counterparty_with_http_info(counterparty_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CounterpartyBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling CounterpartiesBankApi->get_counterparty_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **counterparty_guid** | **String** | Identifier for the counterparty. |  |
| **include_pii** | **Boolean** | Include PII in the response. | [optional] |

### Return type

[**CounterpartyBankModel**](CounterpartyBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_counterparties

> <CounterpartyListBankModel> list_counterparties(opts)

Get counterparties list

Retrieves a listing of counterparties.  Required scope: **counterparties:read**

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

api_instance = CybridApiBank::CounterpartiesBankApi.new
opts = {
  page: 56, # Integer | 
  per_page: 56, # Integer | 
  type: 'type_example', # String | Comma separated types to list counterparties for.
  bank_guid: 'bank_guid_example', # String | Comma separated bank_guids to list counterparties for.
  customer_guid: 'customer_guid_example', # String | Comma separated customer_guids to list counterparties for.
  guid: 'guid_example', # String | Comma separated counterparty_guids to list counterparties for.
  label: 'label_example' # String | Comma separated labels to list counterparties for.
}

begin
  # Get counterparties list
  result = api_instance.list_counterparties(opts)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling CounterpartiesBankApi->list_counterparties: #{e}"
end
```

#### Using the list_counterparties_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CounterpartyListBankModel>, Integer, Hash)> list_counterparties_with_http_info(opts)

```ruby
begin
  # Get counterparties list
  data, status_code, headers = api_instance.list_counterparties_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CounterpartyListBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling CounterpartiesBankApi->list_counterparties_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |
| **type** | **String** | Comma separated types to list counterparties for. | [optional] |
| **bank_guid** | **String** | Comma separated bank_guids to list counterparties for. | [optional] |
| **customer_guid** | **String** | Comma separated customer_guids to list counterparties for. | [optional] |
| **guid** | **String** | Comma separated counterparty_guids to list counterparties for. | [optional] |
| **label** | **String** | Comma separated labels to list counterparties for. | [optional] |

### Return type

[**CounterpartyListBankModel**](CounterpartyListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

