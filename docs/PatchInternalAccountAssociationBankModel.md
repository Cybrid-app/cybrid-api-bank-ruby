# CybridApiBank::PatchInternalAccountAssociationBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **side** | **String** | The side of the account association. |  |
| **executed_amount** | **Integer** | The executed amount in base units of the currency. | [optional] |
| **quoted_amount** | **Integer** | The quoted amount in base units of the currency. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PatchInternalAccountAssociationBankModel.new(
  side: null,
  executed_amount: null,
  quoted_amount: null
)
```

