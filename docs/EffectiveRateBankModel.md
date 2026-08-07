# CybridApiBank::EffectiveRateBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_asset** | **String** | The asset converted from, e.g., USD. |  |
| **destination_asset** | **String** | The asset converted to, e.g., MXN. |  |
| **quoted** | **String** | The quoted effective rate as a decimal string. Null until quoted amounts are known. | [optional] |
| **executed** | **String** | The executed effective rate as a decimal string. Null until execution completes. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::EffectiveRateBankModel.new(
  source_asset: null,
  destination_asset: null,
  quoted: null,
  executed: null
)
```

