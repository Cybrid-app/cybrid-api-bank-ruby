# CybridApiBank::SymbolPriceBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol** | **String** | The trade symbol the pricing is related to. Format is asset-counter_asset, e.g., BTC-USD. | [optional] |
| **type** | **String** | The type of price; one of trading or payout. | [optional] |
| **buy_price** | **Integer** | The purchase price (in base units) for the asset denominated in the counter asset currency. | [optional] |
| **sell_price** | **Integer** | The sale price (in base units) for the asset denominated in the counter asset currency. | [optional] |
| **buy_price_last_updated_at** | **Time** | ISO8601 datetime the purchase price was generated at. | [optional] |
| **sell_price_last_updated_at** | **Time** | ISO8601 datetime the sale price was generated at. | [optional] |
| **country_code** | **String** | The ISO 3166 country 2-Alpha country code of the price. | [optional] |
| **participants_type** | **String** | The type of participants the price is for; one of C2C, C2B, B2C, or B2B. | [optional] |
| **route** | **String** | The route the price is for; one of bank_account or mobile_wallet. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::SymbolPriceBankModel.new(
  symbol: null,
  type: null,
  buy_price: null,
  sell_price: null,
  buy_price_last_updated_at: null,
  sell_price_last_updated_at: null,
  country_code: null,
  participants_type: null,
  route: null
)
```

