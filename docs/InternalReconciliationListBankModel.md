# CybridApiBank::InternalReconciliationListBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total** | **Integer** | The total number of records available. | [optional] |
| **page** | **Integer** | The page index to retrieve. | [optional] |
| **per_page** | **Integer** | The number of records per page to return. | [optional] |
| **objects** | [**Array&lt;InternalReconciliationBankModel&gt;**](InternalReconciliationBankModel.md) |  | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::InternalReconciliationListBankModel.new(
  total: null,
  page: null,
  per_page: null,
  objects: null
)
```

