# CybridApiBank::ParamInternalActivityLimitBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the limit. |  |
| **limit_type** | **String** | The type of the limit. |  |
| **limit_asset** | **String** | The asset of the limit. |  |
| **limit_amount** | **Integer** | The amount of the limit. |  |
| **limit_interval** | **Integer** | The interval of the limit. Required when limit_type is rolling. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::ParamInternalActivityLimitBankModel.new(
  name: null,
  limit_type: null,
  limit_asset: null,
  limit_amount: null,
  limit_interval: null
)
```

