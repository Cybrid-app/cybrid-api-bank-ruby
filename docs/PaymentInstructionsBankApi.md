# CybridApiBank::PaymentInstructionsBankApi

All URIs are relative to *https://bank.sandbox.cybrid.app*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_payment_instruction**](PaymentInstructionsBankApi.md#create_payment_instruction) | **POST** /api/payment_instructions | Create Payment Instruction |
| [**get_payment_instruction**](PaymentInstructionsBankApi.md#get_payment_instruction) | **GET** /api/payment_instructions/{payment_instruction_guid} | Get Payment Instruction |
| [**list_payment_instructions**](PaymentInstructionsBankApi.md#list_payment_instructions) | **GET** /api/payment_instructions | List Payment Instructions |


## create_payment_instruction

> <PaymentInstructionBankModel> create_payment_instruction(post_payment_instruction_bank_model)

Create Payment Instruction

Creates a payment instruction.  ## State  | State | Description | |-------|-------------| | storing | The Platform is storing the payment instruction details in our private store | | created | The Platform has created the payment instruction | | expired | The PaymentInstruction is no longer valid |    Required scope: **invoices:write**

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

api_instance = CybridApiBank::PaymentInstructionsBankApi.new
post_payment_instruction_bank_model = CybridApiBank::PostPaymentInstructionBankModel.new({invoice_guid: 'invoice_guid_example'}) # PostPaymentInstructionBankModel | 

begin
  # Create Payment Instruction
  result = api_instance.create_payment_instruction(post_payment_instruction_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling PaymentInstructionsBankApi->create_payment_instruction: #{e}"
end
```

#### Using the create_payment_instruction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentInstructionBankModel>, Integer, Hash)> create_payment_instruction_with_http_info(post_payment_instruction_bank_model)

```ruby
begin
  # Create Payment Instruction
  data, status_code, headers = api_instance.create_payment_instruction_with_http_info(post_payment_instruction_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentInstructionBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling PaymentInstructionsBankApi->create_payment_instruction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_payment_instruction_bank_model** | [**PostPaymentInstructionBankModel**](PostPaymentInstructionBankModel.md) |  |  |

### Return type

[**PaymentInstructionBankModel**](PaymentInstructionBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_payment_instruction

> <PaymentInstructionBankModel> get_payment_instruction(payment_instruction_guid)

Get Payment Instruction

Retrieves a payment_instruction.  Required scope: **invoices:read**

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

api_instance = CybridApiBank::PaymentInstructionsBankApi.new
payment_instruction_guid = 'payment_instruction_guid_example' # String | Identifier for the payment instruction.

begin
  # Get Payment Instruction
  result = api_instance.get_payment_instruction(payment_instruction_guid)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling PaymentInstructionsBankApi->get_payment_instruction: #{e}"
end
```

#### Using the get_payment_instruction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentInstructionBankModel>, Integer, Hash)> get_payment_instruction_with_http_info(payment_instruction_guid)

```ruby
begin
  # Get Payment Instruction
  data, status_code, headers = api_instance.get_payment_instruction_with_http_info(payment_instruction_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentInstructionBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling PaymentInstructionsBankApi->get_payment_instruction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_instruction_guid** | **String** | Identifier for the payment instruction. |  |

### Return type

[**PaymentInstructionBankModel**](PaymentInstructionBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_payment_instructions

> <PaymentInstructionListBankModel> list_payment_instructions(opts)

List Payment Instructions

Retrieves a list of payment instructions. Records are sorted by creation date in descending order.  Required scope: **invoices:read**

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

api_instance = CybridApiBank::PaymentInstructionsBankApi.new
opts = {
  page: 56, # Integer | The page index to retrieve.
  per_page: 56, # Integer | The number of entities per page to return.
  guid: 'guid_example', # String | Comma separated guids to list payment instructions for.
  bank_guid: 'bank_guid_example', # String | Comma separated bank_guids to list payment instructions for.
  customer_guid: 'customer_guid_example', # String | Comma separated customer_guids to list payment instructions for.
  invoice_guid: 'invoice_guid_example' # String | Comma separated invoice_guids to list payment instructions for.
}

begin
  # List Payment Instructions
  result = api_instance.list_payment_instructions(opts)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling PaymentInstructionsBankApi->list_payment_instructions: #{e}"
end
```

#### Using the list_payment_instructions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentInstructionListBankModel>, Integer, Hash)> list_payment_instructions_with_http_info(opts)

```ruby
begin
  # List Payment Instructions
  data, status_code, headers = api_instance.list_payment_instructions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentInstructionListBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling PaymentInstructionsBankApi->list_payment_instructions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | The page index to retrieve. | [optional] |
| **per_page** | **Integer** | The number of entities per page to return. | [optional] |
| **guid** | **String** | Comma separated guids to list payment instructions for. | [optional] |
| **bank_guid** | **String** | Comma separated bank_guids to list payment instructions for. | [optional] |
| **customer_guid** | **String** | Comma separated customer_guids to list payment instructions for. | [optional] |
| **invoice_guid** | **String** | Comma separated invoice_guids to list payment instructions for. | [optional] |

### Return type

[**PaymentInstructionListBankModel**](PaymentInstructionListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

