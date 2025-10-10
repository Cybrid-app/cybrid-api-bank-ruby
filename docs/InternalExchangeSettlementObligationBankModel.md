# CybridApiBank::InternalExchangeSettlementObligationBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the exchange settlement obligation. | [optional] |
| **exchange_settlement_guid** | **String** | The identifier of the exchange settlement that corresponds to this obligation. | [optional] |
| **asset** | **String** | The asset code. | [optional] |
| **state** | **String** | The exchange settlement&#39;s state | [optional] |
| **payable_amount_estimate** | **Integer** | The account&#39;s payable estimate for this obligation. | [optional] |
| **receivable_amount_estimate** | **Integer** | The account&#39;s receivable estimate for this obligation. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::InternalExchangeSettlementObligationBankModel.new(
  guid: null,
  exchange_settlement_guid: null,
  asset: null,
  state: null,
  payable_amount_estimate: null,
  receivable_amount_estimate: null
)
```

