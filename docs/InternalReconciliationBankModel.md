# CybridApiBank::InternalReconciliationBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **category** | **String** | The category of the reconciliation | [optional] |
| **confidence** | **String** | The confidence of the reconciliation | [optional] |
| **direction** | **String** | The direction of the reconciliation: \&quot;debit\&quot; or \&quot;credit\&quot; | [optional] |
| **transfer_guid** | **String** | The transfer guid associated with the reconciliation | [optional] |
| **transaction_id** | **String** | The provider supplied identifier for the reconciliation | [optional] |
| **created_at** | **Time** | ISO8601 datetime the record was created at. | [optional] |
| **updated_at** | **Time** | ISO8601 datetime the record was last updated at. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::InternalReconciliationBankModel.new(
  category: null,
  confidence: null,
  direction: null,
  transfer_guid: null,
  transaction_id: null,
  created_at: null,
  updated_at: null
)
```

