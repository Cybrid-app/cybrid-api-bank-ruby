# CybridApiBank::PatchInternalIdentityVerificationBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **started_at** | **Time** | ISO8601 datetime the identity verification was started at. | [optional] |
| **external_bank_account_check_guid** | **String** | The GUID of the external bank account check backing the verification. | [optional] |
| **attested_check_guid** | **String** | The GUID of the attested check backing the verification. | [optional] |
| **identity_workflow_guid** | **String** | The GUID of the identity workflow backing the verification. | [optional] |
| **pending_at** | **Time** | ISO8601 datetime the identity verification was started by the user at. | [optional] |
| **reviewing_at** | **Time** | ISO8601 datetime the identity verification was marked for review at. | [optional] |
| **expired_at** | **Time** | ISO8601 datetime the identity verification was expired at. | [optional] |
| **completed_at** | **Time** | ISO8601 datetime the identity verification was completed at. | [optional] |
| **outcome** | **String** | The outcome of the identity verification. | [optional] |
| **failure_codes** | **Array&lt;String&gt;** | The reason codes explaining the outcome. | [optional] |
| **supporting_file_guids** | **Array&lt;String&gt;** | The GUIDs of the supporting files backing the verification. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PatchInternalIdentityVerificationBankModel.new(
  started_at: null,
  external_bank_account_check_guid: null,
  attested_check_guid: null,
  identity_workflow_guid: null,
  pending_at: null,
  reviewing_at: null,
  expired_at: null,
  completed_at: null,
  outcome: null,
  failure_codes: null,
  supporting_file_guids: null
)
```

