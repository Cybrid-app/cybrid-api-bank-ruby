# CybridApiBank::PostPersonaSessionBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **persona_inquiry_id** | **String** | The unique identifier for the Persona inquiry. |  |
| **customer_guid** | **String** | The unique identifier for the customer. |  |
| **identity_verification_guid** | **String** | The unique identifier for the identity verification. |  |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostPersonaSessionBankModel.new(
  persona_inquiry_id: null,
  customer_guid: null,
  identity_verification_guid: null
)
```

