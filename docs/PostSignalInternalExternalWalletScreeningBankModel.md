# CybridApiBank::PostSignalInternalExternalWalletScreeningBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reference_id** | **String** | An internal reference to look up the case. |  |
| **comment** | **String** | The comment to justify the manual decision. |  |
| **outcome** | **String** | The manual decision. |  |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostSignalInternalExternalWalletScreeningBankModel.new(
  reference_id: null,
  comment: null,
  outcome: null
)
```

