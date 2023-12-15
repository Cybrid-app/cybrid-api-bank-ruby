# CybridApiBank::IdentityVerificationWithDetailsAllOfBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **persona_inquiry_id** | **String** | The Persona identifier of the backing inquiry. | [optional] |
| **persona_state** | **String** | The Persona state of the backing inquiry; one of waiting, pending, reviewing, processing, expired, completed, or unknown. | [optional] |
| **external_bank_account_guid** | **String** | The external bank account&#39;s identifier. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::IdentityVerificationWithDetailsAllOfBankModel.new(
  persona_inquiry_id: null,
  persona_state: null,
  external_bank_account_guid: null
)
```

