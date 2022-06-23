# CybridApiBank::ExchangeSettlementBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the exchange settlement. | [optional] |
| **exchange_guid** | **String** | The identifier of the exchange that corresponds to this settlement. | [optional] |
| **name** | **String** | The name of the exchange settlement. | [optional] |
| **trade_guids** | **Array&lt;String&gt;** | The exchange settlement&#39;s set of included trade guids. | [optional] |
| **exchange_settlement_obligation_guids** | **Array&lt;String&gt;** | The exchange settlement&#39;s set of obligation guids. | [optional] |
| **state** | **String** | The exchange settlement&#39;s state | [optional] |
| **created_at** | **Time** | ISO8601 datetime the exchange settlement was created at. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::ExchangeSettlementBankModel.new(
  guid: null,
  exchange_guid: null,
  name: null,
  trade_guids: null,
  exchange_settlement_obligation_guids: null,
  state: null,
  created_at: null
)
```

