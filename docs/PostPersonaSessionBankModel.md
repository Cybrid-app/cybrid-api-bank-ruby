# CybridApiBank::PostPersonaSessionBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **persona_inquiry_id** | **String** | The ID of the Persona inquiry to create a session for |  |
| **identity_verification_guid** | **String** | The GUID of the identity verification associated with the session |  |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostPersonaSessionBankModel.new(
  persona_inquiry_id: null,
  identity_verification_guid: null
)
```

