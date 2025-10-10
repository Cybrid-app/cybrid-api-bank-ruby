# CybridApiBank::WorkflowsBankApi

All URIs are relative to *http://api-platform-bank.local.cybrid.com:3002*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_workflow**](WorkflowsBankApi.md#create_workflow) | **POST** /api/workflows | Create Workflow |
| [**get_workflow**](WorkflowsBankApi.md#get_workflow) | **GET** /api/workflows/{workflow_guid} | Get Workflow |
| [**list_workflows**](WorkflowsBankApi.md#list_workflows) | **GET** /api/workflows | Get workflows list |


## create_workflow

> <WorkflowBankModel> create_workflow(post_workflow_bank_model)

Create Workflow

Creates a workflow.  ## State  | State | Description | |-------|-------------| | storing | The Platform is storing the workflow details in our private store | | completed | The Platform has created the workflow | | failed | The workflow was not completed successfully |  ## Plaid  | Param | Description | |-------|-------------| | redirect_uri | All URIs must be registered with Cybrid. For local testing use `http://localhost:4200/bank-account-connect` |    Required scope: **workflows:execute**

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

api_instance = CybridApiBank::WorkflowsBankApi.new
post_workflow_bank_model = CybridApiBank::PostWorkflowBankModel.new({type: 'plaid'}) # PostWorkflowBankModel | 

begin
  # Create Workflow
  result = api_instance.create_workflow(post_workflow_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling WorkflowsBankApi->create_workflow: #{e}"
end
```

#### Using the create_workflow_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkflowBankModel>, Integer, Hash)> create_workflow_with_http_info(post_workflow_bank_model)

```ruby
begin
  # Create Workflow
  data, status_code, headers = api_instance.create_workflow_with_http_info(post_workflow_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkflowBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling WorkflowsBankApi->create_workflow_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_workflow_bank_model** | [**PostWorkflowBankModel**](PostWorkflowBankModel.md) |  |  |

### Return type

[**WorkflowBankModel**](WorkflowBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_workflow

> <WorkflowWithDetailsBankModel> get_workflow(workflow_guid)

Get Workflow

Retrieves a workflow.  Required scope: **workflows:read**

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

api_instance = CybridApiBank::WorkflowsBankApi.new
workflow_guid = 'workflow_guid_example' # String | Identifier for the workflow.

begin
  # Get Workflow
  result = api_instance.get_workflow(workflow_guid)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling WorkflowsBankApi->get_workflow: #{e}"
end
```

#### Using the get_workflow_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkflowWithDetailsBankModel>, Integer, Hash)> get_workflow_with_http_info(workflow_guid)

```ruby
begin
  # Get Workflow
  data, status_code, headers = api_instance.get_workflow_with_http_info(workflow_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkflowWithDetailsBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling WorkflowsBankApi->get_workflow_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workflow_guid** | **String** | Identifier for the workflow. |  |

### Return type

[**WorkflowWithDetailsBankModel**](WorkflowWithDetailsBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_workflows

> <WorkflowsListBankModel> list_workflows(opts)

Get workflows list

Retrieves a listing of workflows.  Required scope: **workflows:read**

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

api_instance = CybridApiBank::WorkflowsBankApi.new
opts = {
  page: 56, # Integer | The page index to retrieve.
  per_page: 56, # Integer | The number of entities per page to return.
  guid: 'guid_example', # String | Comma separated workflow_guids to list workflows for.
  bank_guid: 'bank_guid_example', # String | Comma separated bank_guids to list workflows for.
  customer_guid: 'customer_guid_example' # String | Comma separated customer_guids to list workflows for.
}

begin
  # Get workflows list
  result = api_instance.list_workflows(opts)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling WorkflowsBankApi->list_workflows: #{e}"
end
```

#### Using the list_workflows_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkflowsListBankModel>, Integer, Hash)> list_workflows_with_http_info(opts)

```ruby
begin
  # Get workflows list
  data, status_code, headers = api_instance.list_workflows_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkflowsListBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling WorkflowsBankApi->list_workflows_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | The page index to retrieve. | [optional] |
| **per_page** | **Integer** | The number of entities per page to return. | [optional] |
| **guid** | **String** | Comma separated workflow_guids to list workflows for. | [optional] |
| **bank_guid** | **String** | Comma separated bank_guids to list workflows for. | [optional] |
| **customer_guid** | **String** | Comma separated customer_guids to list workflows for. | [optional] |

### Return type

[**WorkflowsListBankModel**](WorkflowsListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

