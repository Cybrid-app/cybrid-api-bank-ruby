# CybridApiBank::PostInternalAccountAssociationBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of account. |  |
| **side** | **String** | The side of the account association. |  |
| **asset** | **String** | The asset code associated with the stage. |  |
| **guid** | **String** | The unique identifier for the account. | [optional] |
| **requested_amount** | **Integer** | The requested amount in base units of the currency. | [optional] |
| **quoted_amount** | **Integer** | The quoted amount in base units of the currency. | [optional] |
| **executed_amount** | **Integer** | The executed amount in base units of the currency.  | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostInternalAccountAssociationBankModel.new(
  type: null,
  side: null,
  asset: null,
  guid: null,
  requested_amount: null,
  quoted_amount: null,
  executed_amount: null
)
```

