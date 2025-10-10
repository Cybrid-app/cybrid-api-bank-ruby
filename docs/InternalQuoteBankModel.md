# CybridApiBank::InternalQuoteBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the quote. | [optional] |
| **product_type** | **String** | The type of product the quote is for. | [optional] |
| **customer_guid** | **String** | The unique identifier for the customer. | [optional] |
| **symbol** | **String** | Symbol the quote was requested for. Format is \&quot;asset-counter_asset\&quot; in uppercase. Populated for trade quotes. | [optional] |
| **side** | **String** | The direction of the quote: either &#39;buy&#39; or &#39;sell&#39; for trade quotes. | [optional] |
| **receive_amount** | **Integer** | The amount to be received in base units of the currency: currency is \&quot;asset\&quot; for buy and \&quot;counter_asset\&quot; for sell for trade quotes. | [optional] |
| **deliver_amount** | **Integer** | The amount to be delivered in base units of the currency: currency is \&quot;counter_asset\&quot; for buy and \&quot;asset\&quot; for sell for trade quotes. | [optional] |
| **fee** | **Integer** | The fee associated with the trade. Denominated in \&quot;counter_asset\&quot; base units for trade quotes. | [optional] |
| **created_at** | **Time** | ISO8601 datetime the record was created at. | [optional] |
| **updated_at** | **Time** | ISO8601 datetime the record was last updated at. | [optional] |
| **issued_at** | **Time** | ISO8601 datetime the quote was created at. | [optional] |
| **expires_at** | **Time** | ISO8601 datetime the quote is expiring at. Populated for trading quotes. | [optional] |
| **asset** | **String** | The asset code the quote was requested for. Populated for book transfer and funding quotes. | [optional] |
| **network_fee** | **Integer** | The network fee in base units of network_fee_asset. Only present on &#x60;crypto_transfer&#x60; quotes. | [optional] |
| **network_fee_asset** | **String** | The asset code of the network fee. | [optional] |
| **bank_guid** | **String** | The unique identifier for the bank. | [optional] |
| **trade_guid** | **String** | The unique identifier for the trade. | [optional] |
| **transfer_guid** | **String** | The unique identifier for the transfer. | [optional] |
| **entries** | [**Array&lt;QuoteEntryBankModel&gt;**](QuoteEntryBankModel.md) | The entries for the quote. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::InternalQuoteBankModel.new(
  guid: null,
  product_type: null,
  customer_guid: null,
  symbol: null,
  side: null,
  receive_amount: null,
  deliver_amount: null,
  fee: null,
  created_at: null,
  updated_at: null,
  issued_at: null,
  expires_at: null,
  asset: null,
  network_fee: null,
  network_fee_asset: null,
  bank_guid: null,
  trade_guid: null,
  transfer_guid: null,
  entries: null
)
```

