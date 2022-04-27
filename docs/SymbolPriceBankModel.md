# CybridApiBank::SymbolPriceBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol** | **String** | The trade symbol the pricing is related to. Format is asset-counter_asset, e.g., BTC-USD. | [optional] |
| **buy_price** | **Integer** | The purchase price (in base units) for the asset denominated in the counter asset currency. | [optional] |
| **sell_price** | **Integer** | The sale price (in base units) for the asset denominated in the counter asset currency. | [optional] |
| **buy_price_last_updated_at** | **Time** | ISO8601 datetime the purchase price was generated at. | [optional] |
| **sell_price_last_updated_at** | **Time** | ISO8601 datetime the sale price was generated at. | [optional] |

## Example

```ruby
require 'cybrid_api_bank'

instance = CybridApiBank::SymbolPriceBankModel.new(
  symbol: null,
  buy_price: null,
  sell_price: null,
  buy_price_last_updated_at: null,
  sell_price_last_updated_at: null
)
```

