# CybridApiBank::PatchInternalExchangeSettlementBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **stored_at** | **Time** | ISO8601 datetime the exchange settlement was stored at. | [optional] |
| **approved_at** | **Time** | ISO8601 datetime the exchange settlement was approved at. | [optional] |
| **completed_at** | **Time** | ISO8601 datetime the exchange settlement was completed at. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PatchInternalExchangeSettlementBankModel.new(
  stored_at: null,
  approved_at: null,
  completed_at: null
)
```

