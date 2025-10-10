# CybridApiBank::PostInternalExchangeSettlementBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the settlement. |  |
| **exchange_guid** | **String** | The exchange guid for the settlement. |  |
| **automatic** | **Boolean** | Whether the settlement should be automatic. | [optional][default to false] |
| **trade_guids** | **Array&lt;String&gt;** | The trade guids to include in the settlement. | [optional] |
| **trades_created_at_lt** | **Time** | Include trades created before this timestamp (exclusive). | [optional] |
| **allowed_symbols** | **Array&lt;String&gt;** | The trading symbols to include in the settlement. | [optional] |
| **denied_symbols** | **Array&lt;String&gt;** | The trading symbols to exclude from the settlement. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostInternalExchangeSettlementBankModel.new(
  name: null,
  exchange_guid: null,
  automatic: null,
  trade_guids: null,
  trades_created_at_lt: null,
  allowed_symbols: null,
  denied_symbols: null
)
```

