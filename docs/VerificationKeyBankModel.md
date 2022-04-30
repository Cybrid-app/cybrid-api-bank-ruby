# CybridApiBank::VerificationKeyBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the verification key. | [optional] |
| **bank_guid** | **String** | The banks&#39;s identifier. | [optional] |
| **type** | **String** | The verification key&#39;s type. | [optional] |
| **state** | **String** | The verification key&#39;s state. | [optional] |
| **algorithm** | **String** | The verification key&#39;s algorithm. | [optional] |
| **fingerprint** | **String** | The verification key&#39;s cryptographic fingerprint. | [optional] |
| **created_at** | **Time** | ISO8601 datetime the verification key was created at. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::VerificationKeyBankModel.new(
  guid: null,
  bank_guid: null,
  type: null,
  state: null,
  algorithm: null,
  fingerprint: null,
  created_at: null
)
```

