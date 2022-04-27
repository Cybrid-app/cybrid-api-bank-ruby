# CybridApiBank::QuoteBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the quote. | [optional] |
| **customer_guid** | **String** | The unique identifier for the customer. | [optional] |
| **symbol** | **String** | Symbol the quote is being requested for. Format is \&quot;asset-counter_asset\&quot; in uppercase. | [optional] |
| **side** | **String** | The direction of the quote: either &#39;buy&#39; or &#39;sell&#39;. | [optional] |
| **receive_amount** | **Integer** | The amount to be received in base units of the currency: currency is \&quot;asset\&quot; for buy and \&quot;counter_asset\&quot; for sell. | [optional] |
| **deliver_amount** | **Integer** | The amount to be delivered in base units of the currency: currency is \&quot;counter_asset\&quot; for buy and \&quot;asset\&quot; for sell. | [optional] |
| **fee** | **Integer** | The fee associated with the trade. Denominated in \&quot;counter_asset\&quot; base units | [optional] |
| **issued_at** | **Time** | ISO8601 datetime the quote was created at. | [optional] |
| **expires_at** | **Time** | ISO8601 datetime the quote is expiring at. | [optional] |

## Example

```ruby
require 'cybrid_api_bank'

instance = CybridApiBank::QuoteBankModel.new(
  guid: null,
  customer_guid: null,
  symbol: null,
  side: null,
  receive_amount: null,
  deliver_amount: null,
  fee: null,
  issued_at: null,
  expires_at: null
)
```

