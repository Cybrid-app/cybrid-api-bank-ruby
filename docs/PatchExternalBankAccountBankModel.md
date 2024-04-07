# CybridApiBank::PatchExternalBankAccountBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **state** | **String** | The state of the external bank account. If set to \&quot;completed,\&quot; the returned state of the external bank account will be either \&quot;completed\&quot;, if the bank account has been verified, or \&quot;unverified\&quot; if the bank account has not been verified. |  |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PatchExternalBankAccountBankModel.new(
  state: null
)
```

