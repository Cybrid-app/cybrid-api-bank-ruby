# CybridApiBank::ActivityLimitBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
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
  name: null,
  asset: null,
  amount: null,
  interval: null,
  activities: null,
  sides: null
)
```

