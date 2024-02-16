# CybridApiBank::PostPaymentInstructionBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invoice_guid** | **String** | The invoice guid. |  |
| **customer_guid** | **String** | The unique identifier for the customer. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostPaymentInstructionBankModel.new(
  invoice_guid: null,
  customer_guid: null
)
```

