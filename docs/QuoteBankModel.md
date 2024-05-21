# CybridApiBank::QuoteBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the quote. | [optional] |
| **product_type** | **String** | The type of product the quote is for; one of trading, funding, book_transfer, crypto_transfer, inter_account, or lightning_transfer. | [optional] |
| **bank_guid** | **String** | The unique identifier for the bank. | [optional] |
| **customer_guid** | **String** | The unique identifier for the customer. | [optional] |
| **symbol** | **String** | Symbol the quote was requested for. Format is \&quot;asset-counter_asset\&quot; in uppercase. Populated for trade quotes. | [optional] |
| **side** | **String** | The direction of the quote; one of buy, sell, deposit, or withdrawal. | [optional] |
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
| **network_address** | **String** | The network address to pay the invoice to. Populated for lightning_transfer quotes. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::QuoteBankModel.new(
  guid: null,
  product_type: null,
  bank_guid: null,
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
  network_address: null
)
```

