# CybridApiBank::PostInternalFeeAssociationBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of fee. |  |
| **asset** | **String** | The asset code associated with the stage. |  |
| **step_identifier** | **String** | The unique identifier for the step. |  |
| **quoted_amount** | **Integer** | The estimated fee amount in base units of the currency. | [optional] |
| **executed_amount** | **Integer** | The executed fee amount in base units of the currency. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostInternalFeeAssociationBankModel.new(
  type: null,
  asset: null,
  step_identifier: null,
  quoted_amount: null,
  executed_amount: null
)
```

