# CybridApiBank::VerificationCheckBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of verification check; one of business_watchlists, business_verification, business_tax_id_verification, person_attested, person_tax_id_attested, person_watchlists, person_verification, person_authentication, person_gov_id_verification, person_tax_id_verification, external_bank_account_verification, or external_bank_account_attested. |  |
| **state** | **String** | The state of the verification check; one of passed, failed, expired, or invalidated. |  |
| **failure_codes** | **Array&lt;String&gt;** | The reason codes explaining the outcome. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::VerificationCheckBankModel.new(
  type: null,
  state: null,
  failure_codes: null
)
```

