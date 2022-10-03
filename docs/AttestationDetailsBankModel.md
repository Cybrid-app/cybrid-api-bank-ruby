# CybridApiBank::AttestationDetailsBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **state** | **String** | The state of an identity record attestation | [optional] |
| **failure_code** | **String** | The failure code of an identity record attestation (if any) | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::AttestationDetailsBankModel.new(
  state: null,
  failure_code: null
)
```

