# CybridApiBank::FeeAssociationBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of fee; one of platform, network, or bank. |  |
| **stage_guid** | **String** | The identifier of the stage the fee belongs to. | [optional] |
| **asset** | **String** | The asset the fee is denominated in, e.g., USD. |  |
| **quoted_amount** | **Integer** | The quoted amount in base units for the fee. |  |
| **executed_amount** | **Integer** | The executed amount in base units for the fee. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::FeeAssociationBankModel.new(
  type: null,
  stage_guid: null,
  asset: null,
  quoted_amount: null,
  executed_amount: null
)
```

