# CybridApiBank::VerificationCheckBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of verification check. |  |
| **state** | **String** | The state of the verification check. |  |
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

