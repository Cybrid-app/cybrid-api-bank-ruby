# CybridApiBank::InternalTransactionsListBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page_info** | [**InternalTransactionsListPageInfoBankModel**](InternalTransactionsListPageInfoBankModel.md) |  | [optional] |
| **objects** | [**Array&lt;InternalTransactionBankModel&gt;**](InternalTransactionBankModel.md) |  | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::InternalTransactionsListBankModel.new(
  page_info: null,
  objects: null
)
```

