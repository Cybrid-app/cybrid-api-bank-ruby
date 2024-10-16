# CybridApiBank::PostQuoteBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_type** | **String** | The type of product the quote is for. | [optional][default to &#39;trading&#39;] |
| **bank_guid** | **String** | The unique identifier for the bank. | [optional] |
| **customer_guid** | **String** | The unique identifier for the customer. | [optional] |
| **receive_amount** | **Integer** | The amount to be received in base units of the currency: currency is \&quot;asset\&quot; for buy and \&quot;counter_asset\&quot; for sell for trade quotes. | [optional] |
| **deliver_amount** | **Integer** | The amount to be delivered in base units of the currency: currency is \&quot;counter_asset\&quot; for buy and \&quot;asset\&quot; for sell for trade quotes. | [optional] |
| **asset** | **String** | The asset code the quote was requested for. Required when product_type is lightning_transfer, product_type is book_transfer, product_type is funding, product_type is crypto_transfer, or product_type is inter_account. | [optional] |
| **network_address** | **String** | The network address to pay the invoice to. Required when product_type is lightning_transfer. | [optional] |
| **fees** | [**Array&lt;PostFeeBankModel&gt;**](PostFeeBankModel.md) | The custom fees associated with the quote Optional when product_type is lightning_transfer, product_type is funding, product_type is trading, product_type is crypto_transfer, or product_type is trading_exit. | [optional] |
| **side** | **String** | The direction for trade quotes: either &#39;buy&#39; or &#39;sell&#39;. The direction for funding quotes: either &#39;deposit&#39; or &#39;withdrawal&#39;. The direction for crypto transfer quotes: &#39;withdrawal&#39;. Book transfers do not require a side. They are all &#39;deposit&#39;s.  Required when product_type is funding, product_type is trading, or product_type is crypto_transfer. | [optional] |
| **symbol** | **String** | Symbol the quote is being requested for. Format is \&quot;asset-counter_asset\&quot; in uppercase. See the Symbols API for a complete list of cryptocurrencies supported.  Required when product_type is trading. | [optional] |
| **reference_trade_guid** | **String** | The guid of the related trade. Only present on &#x60;exit&#x60; trades. Required when product_type is trading_exit. | [optional] |
| **source_account_guid** | **String** | The source account&#39;s identifier. Required when product_type is inter_account. | [optional] |
| **destination_account_guid** | **String** | The destination account&#39;s identifier. Required when product_type is inter_account. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostQuoteBankModel.new(
  product_type: null,
  bank_guid: null,
  customer_guid: null,
  receive_amount: null,
  deliver_amount: null,
  asset: null,
  network_address: null,
  fees: null,
  side: null,
  symbol: null,
  reference_trade_guid: null,
  source_account_guid: null,
  destination_account_guid: null
)
```

