# CybridApiBank::RewardsBankApi

All URIs are relative to *https://bank.demo.cybrid.app*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_rewards**](RewardsBankApi.md#create_rewards) | **POST** /api/rewards | Create Reward |


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

