# CybridApiBank::TradeBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the trade. | [optional] |
| **trade_type** | **String** | The type of trade; one of platform or liquidation. | [optional] |
| **customer_guid** | **String** | The associated customer&#39;s identifier. | [optional] |
| **quote_guid** | **String** | The associated quote&#39;s identifier. | [optional] |
| **symbol** | **String** | The trade symbol the pricing is related to. Format is asset-counter_asset, e.g., BTC-USD. | [optional] |
| **side** | **String** | The direction of the trade; one of buy or sell. | [optional] |
| **state** | **String** | The state of the trade; one of storing, pending, cancelled, completed, settling, or failed. | [optional] |
| **failure_code** | **String** | The failure code for failed trades; one of non_sufficient_funds, unsupported, limit_exceeded, expired_quote, or market_volatility. | [optional] |
| **receive_amount** | **Integer** | The amount to be received in base units of the currency: currency is \&quot;asset\&quot; for buy and \&quot;counter_asset\&quot; for sell. | [optional] |
| **deliver_amount** | **Integer** | The amount to be delivered in base units of the currency: currency is \&quot;counter_asset\&quot; for buy and \&quot;asset\&quot; for sell. | [optional] |
| **fee** | **Integer** | The fee associated with the trade. Denominated in \&quot;counter_asset\&quot; base units | [optional] |
| **created_at** | **Time** | ISO8601 datetime the record was created at. | [optional] |
| **updated_at** | **Time** | ISO8601 datetime the record was last updated at. | [optional] |
| **labels** | **Array&lt;String&gt;** | The labels associated with the trade. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::TradeBankModel.new(
  guid: null,
  trade_type: null,
  customer_guid: null,
  quote_guid: null,
  symbol: null,
  side: null,
  state: null,
  failure_code: null,
  receive_amount: null,
  deliver_amount: null,
  fee: null,
  created_at: null,
  updated_at: null,
  labels: null
)
```

