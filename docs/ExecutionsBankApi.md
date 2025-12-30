# CybridApiBank::ExecutionsBankApi

All URIs are relative to *https://bank.sandbox.cybrid.app*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_execution**](ExecutionsBankApi.md#create_execution) | **POST** /api/executions | Create Execution |
| [**get_execution**](ExecutionsBankApi.md#get_execution) | **GET** /api/executions/{execution_guid} | Get Execution |
| [**list_executions**](ExecutionsBankApi.md#list_executions) | **GET** /api/executions | Get executions list |


## create_execution

> <ExecutionBankModel> create_execution(post_execution_bank_model)

Create Execution

Creates an execution.  ## Create a plan execution  | State | Description | |-------|-------------| | storing | The Platform is storing the execution details in our private store | | executing | The Platform is executing the plan | | completed | The Platform has successfully completed the plan execution | | failed | The Platform was not able to successfully complete the plan execution |    Required scope: **executions:execute**

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


## list_executions

> <ExecutionListBankModel> list_executions(opts)

Get executions list

Retrieves a listing of executions. Records are sorted by creation date in descending order.  Required scope: **executions:read**

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
opts = {
  page: 56, # Integer | The page index to retrieve.
  per_page: 56, # Integer | The number of entities per page to return.
  guid: 'guid_example', # String | Comma separated execution_guids to list executions for.
  plan_guid: 'plan_guid_example', # String | Comma separated plan_guids to list executions for.
  bank_guid: 'bank_guid_example', # String | Comma separated bank_guids to list executions for.
  customer_guid: 'customer_guid_example', # String | Comma separated customer_guids to list executions for.
  type: 'type_example', # String | Comma separated types to list executions for.
  state: 'state_example', # String | Comma separated states to list executions for.
  source_account_guid: 'source_account_guid_example', # String | Comma separated source account guids to list executions for.
  destination_account_guid: 'destination_account_guid_example', # String | Comma separated destination account guids to list executions for.
  created_at_gte: 'created_at_gte_example', # String | Created at start date-time inclusive lower bound, ISO8601.
  created_at_lt: 'created_at_lt_example', # String | Created at end date-time exclusive upper bound, ISO8601.
  updated_at_gte: 'updated_at_gte_example', # String | Updated at start date-time inclusive lower bound, ISO8601.
  updated_at_lt: 'updated_at_lt_example' # String | Updated at end date-time exclusive upper bound, ISO8601.
}

begin
  # Get executions list
  result = api_instance.list_executions(opts)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling ExecutionsBankApi->list_executions: #{e}"
end
```

#### Using the list_executions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExecutionListBankModel>, Integer, Hash)> list_executions_with_http_info(opts)

```ruby
begin
  # Get executions list
  data, status_code, headers = api_instance.list_executions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExecutionListBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling ExecutionsBankApi->list_executions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | The page index to retrieve. | [optional] |
| **per_page** | **Integer** | The number of entities per page to return. | [optional] |
| **guid** | **String** | Comma separated execution_guids to list executions for. | [optional] |
| **plan_guid** | **String** | Comma separated plan_guids to list executions for. | [optional] |
| **bank_guid** | **String** | Comma separated bank_guids to list executions for. | [optional] |
| **customer_guid** | **String** | Comma separated customer_guids to list executions for. | [optional] |
| **type** | **String** | Comma separated types to list executions for. | [optional] |
| **state** | **String** | Comma separated states to list executions for. | [optional] |
| **source_account_guid** | **String** | Comma separated source account guids to list executions for. | [optional] |
| **destination_account_guid** | **String** | Comma separated destination account guids to list executions for. | [optional] |
| **created_at_gte** | **String** | Created at start date-time inclusive lower bound, ISO8601. | [optional] |
| **created_at_lt** | **String** | Created at end date-time exclusive upper bound, ISO8601. | [optional] |
| **updated_at_gte** | **String** | Updated at start date-time inclusive lower bound, ISO8601. | [optional] |
| **updated_at_lt** | **String** | Updated at end date-time exclusive upper bound, ISO8601. | [optional] |

### Return type

[**ExecutionListBankModel**](ExecutionListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

