# CybridApiBank::PostQuoteBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_type** | **String** | The type of product the quote is for. | [optional][default to &#39;trading&#39;] |
| **customer_guid** | **String** | The unique identifier for the customer. |  |
| **symbol** | **String** | Symbol the quote is being requested for. Format is \&quot;asset-counter_asset\&quot; in uppercase. See the Symbols API for a complete list of cryptocurrencies supported. | [optional] |
| **side** | **String** | The direction of the quote: either &#39;buy&#39; or &#39;sell&#39; for trade quotes. |  |
| **receive_amount** | **Integer** | The amount to be received in base units of the currency: currency is \&quot;asset\&quot; for buy and \&quot;counter_asset\&quot; for sell for trade quotes. | [optional] |
| **deliver_amount** | **Integer** | The amount to be delivered in base units of the currency: currency is \&quot;counter_asset\&quot; for buy and \&quot;asset\&quot; for sell for trade quotes. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostQuoteBankModel.new(
  product_type: null,
  customer_guid: null,
  symbol: null,
  side: null,
  receive_amount: null,
  deliver_amount: null
)
```

