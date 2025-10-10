# CybridApiBank::InternalExchangeSettlementBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the exchange settlement. |  |
| **environment** | **String** | The environment that the settlement is for. |  |
| **exchange_guid** | **String** | The identifier of the exchange that corresponds to this settlement. |  |
| **name** | **String** | The name of the exchange settlement. |  |
| **trade_guids** | **Array&lt;String&gt;** | The exchange settlement&#39;s set of included trade guids. |  |
| **trade_amounts** | [**Array&lt;InternalExchangeSettlementTradeAmountsInnerBankModel&gt;**](InternalExchangeSettlementTradeAmountsInnerBankModel.md) | The exchange settlement&#39;s set of trade amounts. |  |
| **order_guids** | **Array&lt;String&gt;** | The exchange settlement&#39;s set of included order guids. |  |
| **order_amounts** | [**Array&lt;InternalExchangeSettlementOrderAmountsInnerBankModel&gt;**](InternalExchangeSettlementOrderAmountsInnerBankModel.md) | The exchange settlement&#39;s set of order amounts. |  |
| **exchange_settlement_obligation_guids** | **Array&lt;String&gt;** | The exchange settlement&#39;s set of obligation guids. | [optional] |
| **state** | **String** | The exchange settlement&#39;s state |  |
| **created_at** | **Time** | ISO8601 datetime the record was created at. |  |
| **updated_at** | **Time** | ISO8601 datetime the record was last updated at. |  |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::InternalExchangeSettlementBankModel.new(
  guid: null,
  environment: null,
  exchange_guid: null,
  name: null,
  trade_guids: null,
  trade_amounts: null,
  order_guids: null,
  order_amounts: null,
  exchange_settlement_obligation_guids: null,
  state: null,
  created_at: null,
  updated_at: null
)
```

