# CybridApiBank::InternalComplianceDecisionBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the compliance decision. | [optional] |
| **type** | **String** | The compliance decision&#39;s type | [optional] |
| **created_at** | **Time** | ISO8601 datetime the record was created at. | [optional] |
| **updated_at** | **Time** | ISO8601 datetime the record was last updated at. | [optional] |
| **decided_at** | **Time** | ISO8601 datetime the compliance decision was rendered. | [optional] |
| **expired_at** | **Time** | ISO8601 datetime the compliance decision is expired. | [optional] |
| **identity_verification_guid** | **String** | The identifier of the identity verification that corresponds to this decision. | [optional] |
| **reference_id** | **String** | A link to where the manual compliance decision can be found. | [optional] |
| **comment** | **String** | The comment associated with the manual compliance decision. | [optional] |
| **state** | **String** | The state of the compliance decision. | [optional] |
| **outcome** | **String** | The outcome of the verification process. | [optional] |
| **failure_codes** | **Array&lt;String&gt;** | The reason codes explaining the outcome. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::InternalComplianceDecisionBankModel.new(
  guid: null,
  type: null,
  created_at: null,
  updated_at: null,
  decided_at: null,
  expired_at: null,
  identity_verification_guid: null,
  reference_id: null,
  comment: null,
  state: null,
  outcome: null,
  failure_codes: null
)
```

