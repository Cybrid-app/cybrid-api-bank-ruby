# CybridApiBank::InvoicesBankApi

All URIs are relative to *https://bank.sandbox.cybrid.app*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cancel_invoice**](InvoicesBankApi.md#cancel_invoice) | **DELETE** /api/invoices/{invoice_guid} | Cancel Invoice |
| [**create_invoice**](InvoicesBankApi.md#create_invoice) | **POST** /api/invoices | Create Invoice |
| [**get_invoice**](InvoicesBankApi.md#get_invoice) | **GET** /api/invoices/{invoice_guid} | Get Invoice |
| [**list_invoices**](InvoicesBankApi.md#list_invoices) | **GET** /api/invoices | List Invoices |


## cancel_invoice

> <InvoiceBankModel> cancel_invoice(invoice_guid)

Cancel Invoice

Cancels an invoice.  Required scope: **invoices:execute**

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

api_instance = CybridApiBank::InvoicesBankApi.new
invoice_guid = 'invoice_guid_example' # String | Identifier for the invoice.

begin
  # Cancel Invoice
  result = api_instance.cancel_invoice(invoice_guid)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InvoicesBankApi->cancel_invoice: #{e}"
end
```

#### Using the cancel_invoice_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InvoiceBankModel>, Integer, Hash)> cancel_invoice_with_http_info(invoice_guid)

```ruby
begin
  # Cancel Invoice
  data, status_code, headers = api_instance.cancel_invoice_with_http_info(invoice_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InvoiceBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InvoicesBankApi->cancel_invoice_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invoice_guid** | **String** | Identifier for the invoice. |  |

### Return type

[**InvoiceBankModel**](InvoiceBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_invoice

> <InvoiceBankModel> create_invoice(post_invoice_bank_model)

Create Invoice

Creates a invoice.  ## State  | State | Description | |-------|-------------| | storing    | The Platform is storing the invoice details in our private store | | unpaid     | The invoice is unpaid. Payment instructions can be generated for an invoice in this state | | cancelling | The invocie is in the process of being cancelled | | cancelled  | The invoice has been cancelled |  | settling   | The invoice has been paid and the funds associated with this invoice are in the process of being settled | | paid       | The invoice has been paid and the funds associated with this invoice have been settled |     Required scope: **invoices:execute**

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

api_instance = CybridApiBank::InvoicesBankApi.new
post_invoice_bank_model = CybridApiBank::PostInvoiceBankModel.new({asset: 'asset_example'}) # PostInvoiceBankModel | 

begin
  # Create Invoice
  result = api_instance.create_invoice(post_invoice_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InvoicesBankApi->create_invoice: #{e}"
end
```

#### Using the create_invoice_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InvoiceBankModel>, Integer, Hash)> create_invoice_with_http_info(post_invoice_bank_model)

```ruby
begin
  # Create Invoice
  data, status_code, headers = api_instance.create_invoice_with_http_info(post_invoice_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InvoiceBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InvoicesBankApi->create_invoice_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_invoice_bank_model** | [**PostInvoiceBankModel**](PostInvoiceBankModel.md) |  |  |

### Return type

[**InvoiceBankModel**](InvoiceBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_invoice

> <InvoiceBankModel> get_invoice(invoice_guid)

Get Invoice

Retrieves a invoice.  Required scope: **invoices:read**

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

api_instance = CybridApiBank::InvoicesBankApi.new
invoice_guid = 'invoice_guid_example' # String | Identifier for the payment instruction.

begin
  # Get Invoice
  result = api_instance.get_invoice(invoice_guid)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InvoicesBankApi->get_invoice: #{e}"
end
```

#### Using the get_invoice_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InvoiceBankModel>, Integer, Hash)> get_invoice_with_http_info(invoice_guid)

```ruby
begin
  # Get Invoice
  data, status_code, headers = api_instance.get_invoice_with_http_info(invoice_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InvoiceBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InvoicesBankApi->get_invoice_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invoice_guid** | **String** | Identifier for the payment instruction. |  |

### Return type

[**InvoiceBankModel**](InvoiceBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_invoices

> <InvoiceListBankModel> list_invoices(opts)

List Invoices

Retrieves a list of invoices.  Required scope: **invoices:read**

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

api_instance = CybridApiBank::InvoicesBankApi.new
opts = {
  page: 56, # Integer | The page index to retrieve.
  per_page: 56, # Integer | The number of entities per page to return.
  guid: 'guid_example', # String | Comma separated guids to list invoices for.
  bank_guid: 'bank_guid_example', # String | Comma separated bank_guids to list invoices for.
  customer_guid: 'customer_guid_example', # String | Comma separated customer_guids to list invoices for.
  account_guid: 'account_guid_example', # String | Comma separated account_guids to list invoices for.
  state: 'state_example', # String | Comma separated states to list invoices for.
  environment: 'sandbox', # String | 
  label: 'label_example' # String | Comma separated labels to list invoices for.
}

begin
  # List Invoices
  result = api_instance.list_invoices(opts)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InvoicesBankApi->list_invoices: #{e}"
end
```

#### Using the list_invoices_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InvoiceListBankModel>, Integer, Hash)> list_invoices_with_http_info(opts)

```ruby
begin
  # List Invoices
  data, status_code, headers = api_instance.list_invoices_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InvoiceListBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InvoicesBankApi->list_invoices_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | The page index to retrieve. | [optional] |
| **per_page** | **Integer** | The number of entities per page to return. | [optional] |
| **guid** | **String** | Comma separated guids to list invoices for. | [optional] |
| **bank_guid** | **String** | Comma separated bank_guids to list invoices for. | [optional] |
| **customer_guid** | **String** | Comma separated customer_guids to list invoices for. | [optional] |
| **account_guid** | **String** | Comma separated account_guids to list invoices for. | [optional] |
| **state** | **String** | Comma separated states to list invoices for. | [optional] |
| **environment** | **String** |  | [optional] |
| **label** | **String** | Comma separated labels to list invoices for. | [optional] |

### Return type

[**InvoiceListBankModel**](InvoiceListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

