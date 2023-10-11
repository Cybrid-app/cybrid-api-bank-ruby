# CybridApiBank::CustomersBankApi

All URIs are relative to *https://bank.sandbox.cybrid.app*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_customer**](CustomersBankApi.md#create_customer) | **POST** /api/customers | Create Customer |
| [**get_customer**](CustomersBankApi.md#get_customer) | **GET** /api/customers/{customer_guid} | Get Customer |
| [**list_customers**](CustomersBankApi.md#list_customers) | **GET** /api/customers | Get customers list |
| [**update_customer**](CustomersBankApi.md#update_customer) | **PATCH** /api/customers/{customer_guid} | Patch Customer |


## create_customer

> <CustomerBankModel> create_customer(post_customer_bank_model)

Create Customer

Creates a customer.  ## Customer Type  Customer resources are an abstraction for real world individuals and businesses on the Cybrid Platform and are used throughout the platform to perform high level operations, e.g., create a quote, execute a trade, etc..  Customers can have additional resources attached to them, e.g., identity records, accounts, etc.  At present, Customer's can be created with type `individual`.  ## State  | State | Description | |-------|-------------| | storing | The Platform is storing the customer details in our private store | | unverified | The Platform has not yet verified the customer's identity | | verified | The Platform has verified the customer's identity | | rejected | The Platform was not able to successfully verify the customer's identity |    Required scope: **customers:execute**

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

api_instance = CybridApiBank::CustomersBankApi.new
post_customer_bank_model = CybridApiBank::PostCustomerBankModel.new({type: 'individual'}) # PostCustomerBankModel | 

begin
  # Create Customer
  result = api_instance.create_customer(post_customer_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling CustomersBankApi->create_customer: #{e}"
end
```

#### Using the create_customer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomerBankModel>, Integer, Hash)> create_customer_with_http_info(post_customer_bank_model)

```ruby
begin
  # Create Customer
  data, status_code, headers = api_instance.create_customer_with_http_info(post_customer_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling CustomersBankApi->create_customer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_customer_bank_model** | [**PostCustomerBankModel**](PostCustomerBankModel.md) |  |  |

### Return type

[**CustomerBankModel**](CustomerBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_customer

> <CustomerBankModel> get_customer(customer_guid, opts)

Get Customer

Retrieves a customer.  Required scope: **customers:read**

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

api_instance = CybridApiBank::CustomersBankApi.new
customer_guid = 'customer_guid_example' # String | Identifier for the customer.
opts = {
  include_pii: true # Boolean | Include PII in the response.
}

begin
  # Get Customer
  result = api_instance.get_customer(customer_guid, opts)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling CustomersBankApi->get_customer: #{e}"
end
```

#### Using the get_customer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomerBankModel>, Integer, Hash)> get_customer_with_http_info(customer_guid, opts)

```ruby
begin
  # Get Customer
  data, status_code, headers = api_instance.get_customer_with_http_info(customer_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling CustomersBankApi->get_customer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_guid** | **String** | Identifier for the customer. |  |
| **include_pii** | **Boolean** | Include PII in the response. | [optional] |

### Return type

[**CustomerBankModel**](CustomerBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_customers

> <CustomerListBankModel> list_customers(opts)

Get customers list

Retrieves a listing of customers.  Required scope: **customers:read**

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

api_instance = CybridApiBank::CustomersBankApi.new
opts = {
  page: 56, # Integer | 
  per_page: 56, # Integer | 
  bank_guid: 'bank_guid_example', # String | Comma separated bank_guids to list customers for.
  guid: 'guid_example', # String | Comma separated customer_guids to list customers for.
  label: 'label_example' # String | Comma separated labels to list customers for.
}

begin
  # Get customers list
  result = api_instance.list_customers(opts)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling CustomersBankApi->list_customers: #{e}"
end
```

#### Using the list_customers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomerListBankModel>, Integer, Hash)> list_customers_with_http_info(opts)

```ruby
begin
  # Get customers list
  data, status_code, headers = api_instance.list_customers_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerListBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling CustomersBankApi->list_customers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |
| **bank_guid** | **String** | Comma separated bank_guids to list customers for. | [optional] |
| **guid** | **String** | Comma separated customer_guids to list customers for. | [optional] |
| **label** | **String** | Comma separated labels to list customers for. | [optional] |

### Return type

[**CustomerListBankModel**](CustomerListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_customer

> <CustomerBankModel> update_customer(customer_guid, patch_customer_bank_model)

Patch Customer

Update a customer.  Required scope: **customers:write**

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

api_instance = CybridApiBank::CustomersBankApi.new
customer_guid = 'customer_guid_example' # String | Identifier for the customer.
patch_customer_bank_model = CybridApiBank::PatchCustomerBankModel.new # PatchCustomerBankModel | 

begin
  # Patch Customer
  result = api_instance.update_customer(customer_guid, patch_customer_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling CustomersBankApi->update_customer: #{e}"
end
```

#### Using the update_customer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomerBankModel>, Integer, Hash)> update_customer_with_http_info(customer_guid, patch_customer_bank_model)

```ruby
begin
  # Patch Customer
  data, status_code, headers = api_instance.update_customer_with_http_info(customer_guid, patch_customer_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling CustomersBankApi->update_customer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_guid** | **String** | Identifier for the customer. |  |
| **patch_customer_bank_model** | [**PatchCustomerBankModel**](PatchCustomerBankModel.md) |  |  |

### Return type

[**CustomerBankModel**](CustomerBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

