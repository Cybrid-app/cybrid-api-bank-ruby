# CybridApiBank::InternalFeeAssociationBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of fee; one of platform, network, or bank. |  |
| **asset** | **String** | The asset the fee is denominated in, e.g., USD. |  |
| **quoted_amount** | **Integer** | The quoted amount in base units for the fee. |  |
| **executed_amount** | **Integer** | The executed amount in base units for the fee. | [optional] |
| **step_identifier** | **String** | The unique identifier for the step the fee is associated with. |  |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::InternalFeeAssociationBankModel.new(
  type: null,
  asset: null,
  quoted_amount: null,
  executed_amount: null,
  step_identifier: null
)
```

