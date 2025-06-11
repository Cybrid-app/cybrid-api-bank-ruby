# CybridApiBank::ActivityLimitBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of the limit; one of rolling, daily, weekly, or monthly. | [optional] |
| **name** | **String** | The name of the limit. | [optional] |
| **asset** | **String** | The asset code for the limit. | [optional] |
| **amount** | **Integer** | The limit amount for the asset. | [optional] |
| **interval** | **Integer** | The limit interval in seconds for the asset. | [optional] |
| **activities** | **Array&lt;String&gt;** | The activities associated with the limit. | [optional] |
| **sides** | **Array&lt;String&gt;** | The sides associated with the limit. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::ActivityLimitBankModel.new(
  type: null,
  name: null,
  asset: null,
  amount: null,
  interval: null,
  activities: null,
  sides: null
)
```

