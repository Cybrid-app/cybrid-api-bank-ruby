# CybridApiBank::PatchInternalExternalWalletBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **state** | **String** | The state of the external wallet. |  |
| **failure_code** | **String** | The failure code for failed external wallets. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PatchInternalExternalWalletBankModel.new(
  state: null,
  failure_code: null
)
```

