# CybridApiBank::IdentityVerificationWithDetailsBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the identity verification. | [optional] |
| **customer_guid** | **String** | The customer&#39;s identifier. | [optional] |
| **type** | **String** | The type of identity verification. | [optional] |
| **method** | **String** | The identity verification method. | [optional] |
| **created_at** | **Time** | ISO8601 datetime the customer was created at. | [optional] |
| **state** | **String** | The state of the verification process. | [optional] |
| **outcome** | **String** | The outcome of the verification process. | [optional] |
| **failure_codes** | **Array&lt;String&gt;** | The reason codes explaining the outcome. | [optional] |
| **persona_inquiry_id** | **String** | The Persona identifier of the backing inquiry. | [optional] |
| **persona_state** | **String** | The Persona state of the backing inquiry. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::IdentityVerificationWithDetailsBankModel.new(
  guid: null,
  customer_guid: null,
  type: null,
  method: null,
  created_at: null,
  state: null,
  outcome: null,
  failure_codes: null,
  persona_inquiry_id: null,
  persona_state: null
)
```

