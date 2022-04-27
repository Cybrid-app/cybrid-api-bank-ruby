# CybridApiBank::TradeListBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total** | **Integer** | The total number of records available. |  |
| **page** | **Integer** | The page index to retrieve. |  |
| **per_page** | **Integer** | The number of entities per page to return. |  |
| **objects** | [**Array&lt;TradeBankModel&gt;**](TradeBankModel.md) | Array of trade entities |  |

## Example

```ruby
require 'cybrid_api_bank'

instance = CybridApiBank::TradeListBankModel.new(
  total: null,
  page: null,
  per_page: null,
  objects: null
)
```

