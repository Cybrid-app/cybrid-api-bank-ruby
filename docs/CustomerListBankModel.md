# CybridApiBank::CustomerListBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total** | **Integer** | The total number of records available. |  |
| **page** | **Integer** | The page index to retrieve. |  |
| **per_page** | **Integer** | The number of entities per page to return. |  |
| **objects** | [**Array&lt;CustomerBankModel&gt;**](CustomerBankModel.md) |  |  |

## Example

```ruby
require 'cybrid_api_bank'

instance = CybridApiBank::CustomerListBankModel.new(
  total: null,
  page: null,
  per_page: null,
  objects: null
)
```

