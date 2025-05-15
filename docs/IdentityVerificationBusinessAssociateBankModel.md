# CybridApiBank::IdentityVerificationBusinessAssociateBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **persona_inquiry_id** | **String** | The Persona identifier of the business associate backing inquiry. | [optional] |
| **persona_state** | **String** | The Persona state of the backing inquiry; one of waiting, pending, reviewing, processing, expired, completed, or unknown. | [optional] |
| **role** | **String** | The business associate role; one of director or owner. | [optional] |
| **email_address** | **String** | The business associate email address. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::IdentityVerificationBusinessAssociateBankModel.new(
  persona_inquiry_id: null,
  persona_state: null,
  role: null,
  email_address: null
)
```

