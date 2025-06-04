# CybridApiBank::PersonaSessionBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identity_verification_guid** | **String** | The unique identifier for the identity verification. |  |
| **persona_inquiry_id** | **String** | The unique identifier for the Persona inquiry. |  |
| **persona_session_token** | **String** | The token to be used in the Persona session. |  |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PersonaSessionBankModel.new(
  identity_verification_guid: null,
  persona_inquiry_id: null,
  persona_session_token: null
)
```

