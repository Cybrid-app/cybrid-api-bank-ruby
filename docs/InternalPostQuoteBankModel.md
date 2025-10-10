# CybridApiBank::InternalPostQuoteBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_type** | **String** | The type of product the quote is for. |  |
| **bank_guid** | **String** | The unique identifier for the bank. | [optional] |
| **customer_guid** | **String** | The unique identifier for the customer. | [optional] |
| **symbol** | **String** | Symbol the quote is being requested for. Format is \&quot;asset-counter_asset\&quot; in uppercase. See the Symbols API for a complete list of cryptocurrencies supported. Populated for trade quotes. | [optional] |
| **asset** | **String** | The asset code the quote was requested for. | [optional] |
| **side** | **String** | The direction for trade quotes: either &#39;buy&#39; or &#39;sell&#39;. The direction for funding quotes: either &#39;deposit&#39; or &#39;withdrawal&#39;. The direction for book transfer quotes: either &#39;deposit&#39; or &#39;withdrawal&#39;. The direction for crypto transfer quotes: &#39;withdrawal&#39;.  | [optional] |
| **receive_amount** | **Integer** | The amount to be received in base units of the currency: currency is \&quot;asset\&quot; for buy and \&quot;counter_asset\&quot; for sell for trade quotes. | [optional] |
| **deliver_amount** | **Integer** | The amount to be delivered in base units of the currency: currency is \&quot;counter_asset\&quot; for buy and \&quot;asset\&quot; for sell for trade quotes. | [optional] |
| **environment** | **String** | The environment the quote is for. | [optional] |
| **source_account_guid** | **String** | The source account guid. | [optional] |
| **destination_account_guid** | **String** | The destination account guid. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::InternalPostQuoteBankModel.new(
  product_type: null,
  bank_guid: null,
  customer_guid: null,
  symbol: null,
  asset: null,
  side: null,
  receive_amount: null,
  deliver_amount: null,
  environment: null,
  source_account_guid: null,
  destination_account_guid: null
)
```

