# CybridApiBank::PostPaymentInstructionBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invoice_guid** | **String** | The invoice guid. |  |
| **expected_behaviour** | **String** | The optional expected behaviour to simulate. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostPaymentInstructionBankModel.new(
  invoice_guid: null,
  expected_behaviour: null
)
```

