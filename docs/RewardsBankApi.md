# CybridApiBank::RewardsBankApi

All URIs are relative to *https://bank.demo.cybrid.app*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_rewards**](RewardsBankApi.md#create_rewards) | **POST** /api/rewards | Create Reward |
| [**get_reward**](RewardsBankApi.md#get_reward) | **GET** /api/rewards/{reward_guid} | Get Reward |
| [**list_rewards**](RewardsBankApi.md#list_rewards) | **GET** /api/rewards | Get rewards list |


## create_rewards

> <RewardBankModel> create_rewards(post_reward_bank_model)

Create Reward

Creates a reward.  Required scope: **rewards:execute**

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

api_instance = CybridApiBank::RewardsBankApi.new
post_reward_bank_model = CybridApiBank::PostRewardBankModel.new({customer_guid: 'customer_guid_example', symbol: 'symbol_example'}) # PostRewardBankModel | 

begin
  # Create Reward
  result = api_instance.create_rewards(post_reward_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling RewardsBankApi->create_rewards: #{e}"
end
```

#### Using the create_rewards_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RewardBankModel>, Integer, Hash)> create_rewards_with_http_info(post_reward_bank_model)

```ruby
begin
  # Create Reward
  data, status_code, headers = api_instance.create_rewards_with_http_info(post_reward_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RewardBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling RewardsBankApi->create_rewards_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_reward_bank_model** | [**PostRewardBankModel**](PostRewardBankModel.md) |  |  |

### Return type

[**RewardBankModel**](RewardBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_reward

> <RewardBankModel> get_reward(reward_guid)

Get Reward

Retrieves a reward.  Required scope: **rewards:read**

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

api_instance = CybridApiBank::RewardsBankApi.new
reward_guid = 'reward_guid_example' # String | Identifier for the reward.

begin
  # Get Reward
  result = api_instance.get_reward(reward_guid)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling RewardsBankApi->get_reward: #{e}"
end
```

#### Using the get_reward_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RewardBankModel>, Integer, Hash)> get_reward_with_http_info(reward_guid)

```ruby
begin
  # Get Reward
  data, status_code, headers = api_instance.get_reward_with_http_info(reward_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RewardBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling RewardsBankApi->get_reward_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reward_guid** | **String** | Identifier for the reward. |  |

### Return type

[**RewardBankModel**](RewardBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_rewards

> <RewardListBankModel> list_rewards(opts)

Get rewards list

Retrieves a listing of rewards.  Required scope: **rewards:read**

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

api_instance = CybridApiBank::RewardsBankApi.new
opts = {
  page: 56, # Integer | The page index to retrieve.
  per_page: 56, # Integer | The number of entities per page to return.
  guid: 'guid_example', # String | Comma separated reward_guids to list rewards for.
  bank_guid: 'bank_guid_example', # String | Comma separated bank_guids to list rewards for.
  customer_guid: 'customer_guid_example' # String | Comma separated customer_guids to list rewards for.
}

begin
  # Get rewards list
  result = api_instance.list_rewards(opts)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling RewardsBankApi->list_rewards: #{e}"
end
```

#### Using the list_rewards_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RewardListBankModel>, Integer, Hash)> list_rewards_with_http_info(opts)

```ruby
begin
  # Get rewards list
  data, status_code, headers = api_instance.list_rewards_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RewardListBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling RewardsBankApi->list_rewards_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | The page index to retrieve. | [optional] |
| **per_page** | **Integer** | The number of entities per page to return. | [optional] |
| **guid** | **String** | Comma separated reward_guids to list rewards for. | [optional] |
| **bank_guid** | **String** | Comma separated bank_guids to list rewards for. | [optional] |
| **customer_guid** | **String** | Comma separated customer_guids to list rewards for. | [optional] |

### Return type

[**RewardListBankModel**](RewardListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

