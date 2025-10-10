# CybridApiBank::PostInternalReconciliationBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **category** | **String** | The category of the reconciliation. |  |
| **confidence** | **String** | The confidence of the reconciliation. |  |
| **direction** | **String** | The direction of the reconciliation. |  |
| **transaction_id** | **String** | The provider identifier. |  |
| **transfer_guid** | **String** | The transfer identifier. |  |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostInternalReconciliationBankModel.new(
  category: null,
  confidence: null,
  direction: null,
  transaction_id: null,
  transfer_guid: null
)
```

