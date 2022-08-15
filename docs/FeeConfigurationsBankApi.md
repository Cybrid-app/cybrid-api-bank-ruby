# CybridApiBank::FeeConfigurationsBankApi

All URIs are relative to *https://bank.demo.cybrid.app*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_fee_configuration**](FeeConfigurationsBankApi.md#create_fee_configuration) | **POST** /api/fee_configurations | Create Fee Configuration |
| [**get_fee_configuration**](FeeConfigurationsBankApi.md#get_fee_configuration) | **GET** /api/fee_configurations/{fee_configuration_guid} | Get Fee Configuration |
| [**list_fee_configurations**](FeeConfigurationsBankApi.md#list_fee_configurations) | **GET** /api/fee_configurations | List Fee Configurations |


## create_fee_configuration

> <FeeConfigurationBankModel> create_fee_configuration(post_fee_configuration_bank_model)

Create Fee Configuration

Creates a fee configuration.  Required scope: **banks:write**

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

api_instance = CybridApiBank::FeeConfigurationsBankApi.new
post_fee_configuration_bank_model = CybridApiBank::PostFeeConfigurationBankModel.new({product_type: 'trading', asset: 'asset_example', fees: [CybridApiBank::PostFeeBankModel.new({type: 'spread'})]}) # PostFeeConfigurationBankModel | 

begin
  # Create Fee Configuration
  result = api_instance.create_fee_configuration(post_fee_configuration_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling FeeConfigurationsBankApi->create_fee_configuration: #{e}"
end
```

#### Using the create_fee_configuration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeeConfigurationBankModel>, Integer, Hash)> create_fee_configuration_with_http_info(post_fee_configuration_bank_model)

```ruby
begin
  # Create Fee Configuration
  data, status_code, headers = api_instance.create_fee_configuration_with_http_info(post_fee_configuration_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeeConfigurationBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling FeeConfigurationsBankApi->create_fee_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_fee_configuration_bank_model** | [**PostFeeConfigurationBankModel**](PostFeeConfigurationBankModel.md) |  |  |

### Return type

[**FeeConfigurationBankModel**](FeeConfigurationBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_fee_configuration

> <FeeConfigurationBankModel> get_fee_configuration(fee_configuration_guid)

Get Fee Configuration

Retrieves a fee configuration.  Required scope: **banks:read**

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

api_instance = CybridApiBank::FeeConfigurationsBankApi.new
fee_configuration_guid = 'fee_configuration_guid_example' # String | Identifier for the fee configuration.

begin
  # Get Fee Configuration
  result = api_instance.get_fee_configuration(fee_configuration_guid)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling FeeConfigurationsBankApi->get_fee_configuration: #{e}"
end
```

#### Using the get_fee_configuration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeeConfigurationBankModel>, Integer, Hash)> get_fee_configuration_with_http_info(fee_configuration_guid)

```ruby
begin
  # Get Fee Configuration
  data, status_code, headers = api_instance.get_fee_configuration_with_http_info(fee_configuration_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeeConfigurationBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling FeeConfigurationsBankApi->get_fee_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fee_configuration_guid** | **String** | Identifier for the fee configuration. |  |

### Return type

[**FeeConfigurationBankModel**](FeeConfigurationBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_fee_configurations

> <FeeConfigurationListBankModel> list_fee_configurations(opts)

List Fee Configurations

Retrieves a listing of fee configurations for a bank.  Required scope: **banks:read**

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

api_instance = CybridApiBank::FeeConfigurationsBankApi.new
opts = {
  page: 56, # Integer | 
  per_page: 56 # Integer | 
}

begin
  # List Fee Configurations
  result = api_instance.list_fee_configurations(opts)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling FeeConfigurationsBankApi->list_fee_configurations: #{e}"
end
```

#### Using the list_fee_configurations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeeConfigurationListBankModel>, Integer, Hash)> list_fee_configurations_with_http_info(opts)

```ruby
begin
  # List Fee Configurations
  data, status_code, headers = api_instance.list_fee_configurations_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeeConfigurationListBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling FeeConfigurationsBankApi->list_fee_configurations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |

### Return type

[**FeeConfigurationListBankModel**](FeeConfigurationListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

