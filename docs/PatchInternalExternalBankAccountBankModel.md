# CybridApiBank::PatchInternalExternalBankAccountBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **state** | **String** | The state of the external bank account. |  |
| **failure_code** | **String** | The failure code for failed external bank accounts. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PatchInternalExternalBankAccountBankModel.new(
  state: null,
  failure_code: null
)
```

