# CybridApiBank::PostInternalComplianceDecisionBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The compliance decision&#39;s type |  |
| **decided_at** | **Time** | ISO8601 datetime the compliance decision was rendered. |  |
| **expired_at** | **Time** | ISO8601 datetime the compliance decision is expired. | [optional] |
| **customer_guid** | **String** | The identifier of the customer that corresponds to this decision. | [optional] |
| **identity_verification_guid** | **String** | The identifier of the identity verification that corresponds to this decision. | [optional] |
| **reference_id** | **String** | A link to where the manual compliance decision can be found. | [optional] |
| **comment** | **String** | The comment associated with the manual compliance decision. | [optional] |
| **outcome** | **String** | The outcome of the verification process. |  |
| **failure_codes** | **Array&lt;String&gt;** | The reason codes explaining the outcome. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostInternalComplianceDecisionBankModel.new(
  type: null,
  decided_at: null,
  expired_at: null,
  customer_guid: null,
  identity_verification_guid: null,
  reference_id: null,
  comment: null,
  outcome: null,
  failure_codes: null
)
```

