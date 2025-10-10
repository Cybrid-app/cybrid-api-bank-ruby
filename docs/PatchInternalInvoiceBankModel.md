# CybridApiBank::PatchInternalInvoiceBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **state** | **String** | The state of the invoice. |  |
| **provider_id** | **String** | The external identifier for the invoice. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PatchInternalInvoiceBankModel.new(
  state: null,
  provider_id: null
)
```

