# CybridApiBank::IdentityVerificationWithDetailsBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the identity verification. | [optional] |
| **type** | **String** | The identity verification type; one of kyc, bank_account, or counterparty. | [optional] |
| **method** | **String** | The identity verification method; one of attested, document_submission, enhanced_due_diligence, id_and_selfie, tax_id_and_selfie, business_registration, attested_id_and_selfie, attested_business_registration, watchlists, attested_ownership, or account_ownership. | [optional] |
| **created_at** | **Time** | ISO8601 datetime the record was created at. | [optional] |
| **updated_at** | **Time** | ISO8601 datetime the record was last updated at. | [optional] |
| **customer_guid** | **String** | The identity verification&#39;s identifier. | [optional] |
| **counterparty_guid** | **String** | The identity verification&#39;s identifier. | [optional] |
| **external_bank_account_guid** | **String** | The identity verification&#39;s identifier. | [optional] |
| **state** | **String** | The identity verification state; one of storing, waiting, pending, reviewing, expired, or completed. | [optional] |
| **outcome** | **String** | The identity verification outcome; one of passed or failed. | [optional] |
| **failure_codes** | **Array&lt;String&gt;** | The reason codes explaining the outcome. | [optional] |
| **compliance_checks** | [**Array&lt;ComplianceCheckBankModel&gt;**](ComplianceCheckBankModel.md) | The compliance checks associated with the identity verification. | [optional] |
| **compliance_decisions** | [**Array&lt;ComplianceDecisionBankModel&gt;**](ComplianceDecisionBankModel.md) | The compliance decisions associated with the identity verification. | [optional] |
| **persona_inquiry_id** | **String** | The Persona identifier of the backing inquiry. | [optional] |
| **persona_state** | **String** | The Persona state of the backing inquiry; one of waiting, pending, reviewing, processing, expired, completed, or unknown. | [optional] |
| **pii** | [**IdentityVerificationWithDetailsPiiBankModel**](IdentityVerificationWithDetailsPiiBankModel.md) |  | [optional] |
| **documents** | [**Array&lt;IdentityVerificationDocumentBankModel&gt;**](IdentityVerificationDocumentBankModel.md) | The documents associated with the identity verification. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::IdentityVerificationWithDetailsBankModel.new(
  guid: null,
  type: null,
  method: null,
  created_at: null,
  updated_at: null,
  customer_guid: null,
  counterparty_guid: null,
  external_bank_account_guid: null,
  state: null,
  outcome: null,
  failure_codes: null,
  compliance_checks: null,
  compliance_decisions: null,
  persona_inquiry_id: null,
  persona_state: null,
  pii: null,
  documents: null
)
```

