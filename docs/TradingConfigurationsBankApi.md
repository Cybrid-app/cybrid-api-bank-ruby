# CybridApiBank::TradingConfigurationsBankApi

All URIs are relative to *https://bank.demo.cybrid.app*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_trading_configuration**](TradingConfigurationsBankApi.md#create_trading_configuration) | **POST** /api/trading_configurations | Create TradingConfiguration |
| [**get_trading_configuration**](TradingConfigurationsBankApi.md#get_trading_configuration) | **GET** /api/trading_configurations/{trading_configuration_guid} | Get TradingConfiguration |
| [**list_trading_configurations**](TradingConfigurationsBankApi.md#list_trading_configurations) | **GET** /api/trading_configurations | List trading configurations |


## create_trading_configuration

> <TradingConfigurationBankModel> create_trading_configuration(post_trading_configuration_bank_model)

Create TradingConfiguration

Creates a trading configuration.  Required scope: **banks:write**

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

api_instance = CybridApiBank::TradingConfigurationsBankApi.new
post_trading_configuration_bank_model = CybridApiBank::PostTradingConfigurationBankModel.new({asset: 'asset_example', fees: [CybridApiBank::PostFeeBankModel.new({type: 'spread'})]}) # PostTradingConfigurationBankModel | 

begin
  # Create TradingConfiguration
  result = api_instance.create_trading_configuration(post_trading_configuration_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling TradingConfigurationsBankApi->create_trading_configuration: #{e}"
end
```

#### Using the create_trading_configuration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TradingConfigurationBankModel>, Integer, Hash)> create_trading_configuration_with_http_info(post_trading_configuration_bank_model)

```ruby
begin
  # Create TradingConfiguration
  data, status_code, headers = api_instance.create_trading_configuration_with_http_info(post_trading_configuration_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TradingConfigurationBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling TradingConfigurationsBankApi->create_trading_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_trading_configuration_bank_model** | [**PostTradingConfigurationBankModel**](PostTradingConfigurationBankModel.md) |  |  |

### Return type

[**TradingConfigurationBankModel**](TradingConfigurationBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_trading_configuration

> <TradingConfigurationBankModel> get_trading_configuration(trading_configuration_guid)

Get TradingConfiguration

Retrieves a trading configuration.  Required scope: **banks:read**

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

api_instance = CybridApiBank::TradingConfigurationsBankApi.new
trading_configuration_guid = 'trading_configuration_guid_example' # String | Identifier for the trading configuration.

begin
  # Get TradingConfiguration
  result = api_instance.get_trading_configuration(trading_configuration_guid)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling TradingConfigurationsBankApi->get_trading_configuration: #{e}"
end
```

#### Using the get_trading_configuration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TradingConfigurationBankModel>, Integer, Hash)> get_trading_configuration_with_http_info(trading_configuration_guid)

```ruby
begin
  # Get TradingConfiguration
  data, status_code, headers = api_instance.get_trading_configuration_with_http_info(trading_configuration_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TradingConfigurationBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling TradingConfigurationsBankApi->get_trading_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **trading_configuration_guid** | **String** | Identifier for the trading configuration. |  |

### Return type

[**TradingConfigurationBankModel**](TradingConfigurationBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_trading_configurations

> <TradingConfigurationListBankModel> list_trading_configurations(opts)

List trading configurations

Retrieves a listing of trading configurations for a bank.  Required scope: **banks:read**

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

api_instance = CybridApiBank::TradingConfigurationsBankApi.new
opts = {
  page: 56, # Integer | 
  per_page: 56 # Integer | 
}

begin
  # List trading configurations
  result = api_instance.list_trading_configurations(opts)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling TradingConfigurationsBankApi->list_trading_configurations: #{e}"
end
```

#### Using the list_trading_configurations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TradingConfigurationListBankModel>, Integer, Hash)> list_trading_configurations_with_http_info(opts)

```ruby
begin
  # List trading configurations
  data, status_code, headers = api_instance.list_trading_configurations_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TradingConfigurationListBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling TradingConfigurationsBankApi->list_trading_configurations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |

### Return type

[**TradingConfigurationListBankModel**](TradingConfigurationListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

