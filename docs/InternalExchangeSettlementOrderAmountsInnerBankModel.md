# CybridApiBank::InternalExchangeSettlementOrderAmountsInnerBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset** | **String** | The asset code. |  |
| **requested_deliver_amount** | **Integer** | The total requested deliver amount in base units of the asset. |  |
| **executed_deliver_amount** | **Integer** | The total executed deliver amount in base units of the asset. |  |
| **unassigned_deliver_amount** | **Integer** | The total unassigned deliver amount in base units of the asset. |  |
| **requested_receive_amount** | **Integer** | The total requested receive amount in base units of the asset. |  |
| **executed_receive_amount** | **Integer** | The total executed receive amount in base units of the asset. |  |
| **unassigned_receive_amount** | **Integer** | The total unassigned receive amount in base units of the asset. |  |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::InternalExchangeSettlementOrderAmountsInnerBankModel.new(
  asset: null,
  requested_deliver_amount: null,
  executed_deliver_amount: null,
  unassigned_deliver_amount: null,
  requested_receive_amount: null,
  executed_receive_amount: null,
  unassigned_receive_amount: null
)
```

