# CybridApiBank::ExecutionsBankApi

All URIs are relative to *https://bank.sandbox.cybrid.app*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_execution**](ExecutionsBankApi.md#create_execution) | **POST** /api/executions | Create Execution |
| [**get_execution**](ExecutionsBankApi.md#get_execution) | **GET** /api/executions/{execution_guid} | Get Execution |


## create_execution

> <ExecutionBankModel> create_execution(post_execution_bank_model)

Create Execution

Creates an execution.  post  Required scope: **executions:execute**

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

api_instance = CybridApiBank::ExecutionsBankApi.new
post_execution_bank_model = CybridApiBank::PostExecutionBankModel.new({plan_guid: 'plan_guid_example'}) # PostExecutionBankModel | 

begin
  # Create Execution
  result = api_instance.create_execution(post_execution_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling ExecutionsBankApi->create_execution: #{e}"
end
```

#### Using the create_execution_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExecutionBankModel>, Integer, Hash)> create_execution_with_http_info(post_execution_bank_model)

```ruby
begin
  # Create Execution
  data, status_code, headers = api_instance.create_execution_with_http_info(post_execution_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExecutionBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling ExecutionsBankApi->create_execution_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_execution_bank_model** | [**PostExecutionBankModel**](PostExecutionBankModel.md) |  |  |

### Return type

[**ExecutionBankModel**](ExecutionBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_execution

> <ExecutionBankModel> get_execution(execution_guid)

Get Execution

Retrieves a execution.  Required scope: **executions:read**

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

api_instance = CybridApiBank::ExecutionsBankApi.new
execution_guid = 'execution_guid_example' # String | Identifier for the payment instruction.

begin
  # Get Execution
  result = api_instance.get_execution(execution_guid)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling ExecutionsBankApi->get_execution: #{e}"
end
```

#### Using the get_execution_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExecutionBankModel>, Integer, Hash)> get_execution_with_http_info(execution_guid)

```ruby
begin
  # Get Execution
  data, status_code, headers = api_instance.get_execution_with_http_info(execution_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExecutionBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling ExecutionsBankApi->get_execution_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **execution_guid** | **String** | Identifier for the payment instruction. |  |

### Return type

[**ExecutionBankModel**](ExecutionBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

