# CybridApiBank::CounterpartyListBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total** | **Integer** | The total number of records available. |  |
| **page** | **Integer** | The page index to retrieve. |  |
| **per_page** | **Integer** | The number of entities per page to return. |  |
| **objects** | [**Array&lt;CounterpartyBankModel&gt;**](CounterpartyBankModel.md) |  |  |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::CounterpartyListBankModel.new(
  total: null,
  page: null,
  per_page: null,
  objects: null
)
```

