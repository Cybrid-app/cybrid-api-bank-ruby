# CybridApiBank::PlansBankApi

All URIs are relative to *https://bank.sandbox.cybrid.app*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_plan**](PlansBankApi.md#create_plan) | **POST** /api/plans | Create Plan |
| [**get_plan**](PlansBankApi.md#get_plan) | **GET** /api/plans/{plan_guid} | Get Plan |
| [**list_plans**](PlansBankApi.md#list_plans) | **GET** /api/plans | Get plans list |


## create_plan

> <PlanBankModel> create_plan(post_plan_bank_model)

Create Plan

Creates a plan.  ## Create a plan  Plans can be created for a Bank or a Customer.  To create plan for your Bank, omit the `customer_guid` parameter in the request body. To create plans for your Customers, include the `customer_guid` parameter in the request body.  | State | Description | |-------|-------------| | storing | The Platform is storing the plan details in our private store | | planning | The Platform is currently building the plan | | completed | The Platform has successfully completed the plan | | failed | The Platform was not able to successfully complete the plan |    Required scope: **plans:execute**

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

api_instance = CybridApiBank::PlansBankApi.new
post_plan_bank_model = CybridApiBank::PostPlanBankModel.new({type: 'remittance', source_account: CybridApiBank::PostPlanSourceAccountBankModel.new({guid: 'guid_example'}), destination_account: CybridApiBank::PostPlanDestinationAccountBankModel.new({guid: 'guid_example'})}) # PostPlanBankModel | 

begin
  # Create Plan
  result = api_instance.create_plan(post_plan_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling PlansBankApi->create_plan: #{e}"
end
```

#### Using the create_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBankModel>, Integer, Hash)> create_plan_with_http_info(post_plan_bank_model)

```ruby
begin
  # Create Plan
  data, status_code, headers = api_instance.create_plan_with_http_info(post_plan_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling PlansBankApi->create_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_plan_bank_model** | [**PostPlanBankModel**](PostPlanBankModel.md) |  |  |

### Return type

[**PlanBankModel**](PlanBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_plan

> <PlanBankModel> get_plan(plan_guid)

Get Plan

Retrieves a plan.  Required scope: **plans:read**

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

api_instance = CybridApiBank::PlansBankApi.new
plan_guid = 'plan_guid_example' # String | Identifier for the payment instruction.

begin
  # Get Plan
  result = api_instance.get_plan(plan_guid)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling PlansBankApi->get_plan: #{e}"
end
```

#### Using the get_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBankModel>, Integer, Hash)> get_plan_with_http_info(plan_guid)

```ruby
begin
  # Get Plan
  data, status_code, headers = api_instance.get_plan_with_http_info(plan_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling PlansBankApi->get_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_guid** | **String** | Identifier for the payment instruction. |  |

### Return type

[**PlanBankModel**](PlanBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_plans

> <PlanListBankModel> list_plans(opts)

Get plans list

Retrieves a listing of plans. Records are sorted by creation date in descending order.  Required scope: **plans:read**

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

api_instance = CybridApiBank::PlansBankApi.new
opts = {
  page: 56, # Integer | The page index to retrieve.
  per_page: 56, # Integer | The number of entities per page to return.
  guid: 'guid_example', # String | Comma separated plan_guids to list plans for.
  bank_guid: 'bank_guid_example', # String | Comma separated bank_guids to list plans for.
  customer_guid: 'customer_guid_example', # String | Comma separated customer_guids to list plans for.
  type: 'type_example', # String | Comma separated types to list plans for.
  state: 'state_example', # String | Comma separated states to list plans for.
  source_account_guid: 'source_account_guid_example', # String | Comma separated source account guids to list plans for.
  destination_account_guid: 'destination_account_guid_example', # String | Comma separated destination account guids to list plans for.
  created_at_gte: 'created_at_gte_example', # String | Created at start date-time inclusive lower bound, ISO8601.
  created_at_lt: 'created_at_lt_example', # String | Created at end date-time exclusive upper bound, ISO8601.
  updated_at_gte: 'updated_at_gte_example', # String | Updated at start date-time inclusive lower bound, ISO8601.
  updated_at_lt: 'updated_at_lt_example' # String | Updated at end date-time exclusive upper bound, ISO8601.
}

begin
  # Get plans list
  result = api_instance.list_plans(opts)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling PlansBankApi->list_plans: #{e}"
end
```

#### Using the list_plans_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanListBankModel>, Integer, Hash)> list_plans_with_http_info(opts)

```ruby
begin
  # Get plans list
  data, status_code, headers = api_instance.list_plans_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanListBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling PlansBankApi->list_plans_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | The page index to retrieve. | [optional] |
| **per_page** | **Integer** | The number of entities per page to return. | [optional] |
| **guid** | **String** | Comma separated plan_guids to list plans for. | [optional] |
| **bank_guid** | **String** | Comma separated bank_guids to list plans for. | [optional] |
| **customer_guid** | **String** | Comma separated customer_guids to list plans for. | [optional] |
| **type** | **String** | Comma separated types to list plans for. | [optional] |
| **state** | **String** | Comma separated states to list plans for. | [optional] |
| **source_account_guid** | **String** | Comma separated source account guids to list plans for. | [optional] |
| **destination_account_guid** | **String** | Comma separated destination account guids to list plans for. | [optional] |
| **created_at_gte** | **String** | Created at start date-time inclusive lower bound, ISO8601. | [optional] |
| **created_at_lt** | **String** | Created at end date-time exclusive upper bound, ISO8601. | [optional] |
| **updated_at_gte** | **String** | Updated at start date-time inclusive lower bound, ISO8601. | [optional] |
| **updated_at_lt** | **String** | Updated at end date-time exclusive upper bound, ISO8601. | [optional] |

### Return type

[**PlanListBankModel**](PlanListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

