# CybridApiBank::ComplianceCheckBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of compliance check; one of business_watchlists, business_verification, business_tax_id_verification, business_attested, person_attested, person_tax_id_attested, person_watchlists, person_verification, person_authentication, person_gov_id_verification, person_tax_id_verification, business_associate_gov_id_attested, business_associate_authentication_attested, business_associate_attested, business_associate_tax_id_attested, business_associate_watchlists_attested, external_bank_account_verification, or external_bank_account_attested. |  |
| **outcome** | **String** | The outcome of the compliance check; one of passed, failed, insufficient, or inconclusive. |  |
| **failure_codes** | **Array&lt;String&gt;** | The reason codes explaining the outcome. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::ComplianceCheckBankModel.new(
  type: null,
  outcome: null,
  failure_codes: null
)
```

