# CybridApiBank::InternalTransactionBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider_id** | **String** | The provider supplied identifier for the transaction | [optional] |
| **amount** | **Integer** | The transaction amount in base units of the asset | [optional] |
| **asset** | **String** | The asset the transaction is denominated in | [optional] |
| **direction** | **String** | The direction of the transaction: \&quot;debit\&quot; or \&quot;credit\&quot; | [optional] |
| **timestamp** | **Time** | The timestamp of the transaction | [optional] |
| **description** | **String** | The description of the transaction | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::InternalTransactionBankModel.new(
  provider_id: null,
  amount: null,
  asset: null,
  direction: null,
  timestamp: null,
  description: null
)
```

