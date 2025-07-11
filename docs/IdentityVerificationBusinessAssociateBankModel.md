# CybridApiBank::IdentityVerificationBusinessAssociateBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **persona_inquiry_id** | **String** | The Persona identifier of the business associate backing inquiry. Available only for attested_business_registration verification method | [optional] |
| **persona_state** | **String** | The Persona state of the backing inquiry; one of waiting, pending, reviewing, processing, expired, completed, or unknown. Available only for attested_business_registration verification method | [optional] |
| **customer_guid** | **String** | The business associate&#39;s customer identifier. Available only for attested_business_registration verification method | [optional] |
| **role** | **String** | The business associate role; one of director or owner. | [optional] |
| **email_address** | **String** | The business associate email address. Available only for business_registration verification method | [optional] |
| **state** | **String** | The business associate state; one of completed, waiting, or pending. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::IdentityVerificationBusinessAssociateBankModel.new(
  persona_inquiry_id: null,
  persona_state: null,
  customer_guid: null,
  role: null,
  email_address: null,
  state: null
)
```

