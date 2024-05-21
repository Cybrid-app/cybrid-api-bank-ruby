# CybridApiBank::PostQuoteBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_type** | **String** | The type of product the quote is for. | [optional][default to &#39;trading&#39;] |
| **bank_guid** | **String** | The unique identifier for the bank. | [optional] |
| **customer_guid** | **String** | The unique identifier for the customer. | [optional] |
| **asset** | **String** | The asset code the quote was requested for. Populated for funding, book transfer and crypto transfer quotes. | [optional] |
| **network_address** | **String** | The network address to pay the invoice to. Populated for lightning_transfer quotes. | [optional] |
| **symbol** | **String** | Symbol the quote is being requested for. Format is \&quot;asset-counter_asset\&quot; in uppercase. See the Symbols API for a complete list of cryptocurrencies supported. Populated for trade quotes. | [optional] |
| **side** | **String** | The direction for trade quotes: either &#39;buy&#39; or &#39;sell&#39;. The direction for funding quotes: either &#39;deposit&#39; or &#39;withdrawal&#39;. The direction for crypto transfer quotes: &#39;withdrawal&#39;. Book transfers do not require a side. They are all &#39;deposit&#39;s.  | [optional] |
| **receive_amount** | **Integer** | The amount to be received in base units of the currency: currency is \&quot;asset\&quot; for buy and \&quot;counter_asset\&quot; for sell for trade quotes. | [optional] |
| **deliver_amount** | **Integer** | The amount to be delivered in base units of the currency: currency is \&quot;counter_asset\&quot; for buy and \&quot;asset\&quot; for sell for trade quotes. | [optional] |
| **fees** | [**Array&lt;PostFeeBankModel&gt;**](PostFeeBankModel.md) | The custom fees associated with the quote | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostQuoteBankModel.new(
  product_type: null,
  bank_guid: null,
  customer_guid: null,
  asset: null,
  network_address: null,
  symbol: null,
  side: null,
  receive_amount: null,
  deliver_amount: null,
  fees: null
)
```

