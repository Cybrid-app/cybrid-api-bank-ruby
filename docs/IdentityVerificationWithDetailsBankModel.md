# CybridApiBank::IdentityVerificationWithDetailsBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the identity verification. | [optional] |
| **customer_guid** | **String** | The identity verification&#39;s identifier. | [optional] |
| **type** | **String** | The identity verification type; one of kyc or bank_account. | [optional] |
| **method** | **String** | The identity verification method; one of business_registration, id_and_selfie, tax_id_and_selfie, attested, plaid_identity_match, or document_submission. | [optional] |
| **created_at** | **Time** | ISO8601 datetime the record was created at. | [optional] |
| **updated_at** | **Time** | ISO8601 datetime the record was last updated at. | [optional] |
| **state** | **String** | The identity verification state; one of storing, waiting, expired, or completed. | [optional] |
| **outcome** | **String** | The identity verification outcome; one of passed or failed. | [optional] |
| **failure_codes** | **Array&lt;String&gt;** | The reason codes explaining the outcome. | [optional] |
| **verification_checks** | [**Array&lt;VerificationCheckBankModel&gt;**](VerificationCheckBankModel.md) | The checks associated with the identity verification. | [optional] |
| **persona_inquiry_id** | **String** | The Persona identifier of the backing inquiry. | [optional] |
| **persona_state** | **String** | The Persona state of the backing inquiry; one of waiting, pending, reviewing, processing, expired, completed, or unknown. | [optional] |
| **external_bank_account_guid** | **String** | The external bank account&#39;s identifier. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::IdentityVerificationWithDetailsBankModel.new(
  guid: null,
  customer_guid: null,
  type: null,
  method: null,
  created_at: null,
  updated_at: null,
  state: null,
  outcome: null,
  failure_codes: null,
  verification_checks: null,
  persona_inquiry_id: null,
  persona_state: null,
  external_bank_account_guid: null
)
```

