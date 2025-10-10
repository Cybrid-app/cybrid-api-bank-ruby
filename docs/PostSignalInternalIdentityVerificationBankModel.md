# CybridApiBank::PostSignalInternalIdentityVerificationBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reference_id** | **String** | An internal reference to look up the case. |  |
| **comment** | **String** | The comment to justify the manual decision. |  |
| **bank_account_holder_name** | [**PostSignalInternalIdentityVerificationBankAccountHolderNameBankModel**](PostSignalInternalIdentityVerificationBankAccountHolderNameBankModel.md) |  | [optional] |
| **bank_account_holder_address** | [**PostSignalInternalIdentityVerificationBankAccountHolderAddressBankModel**](PostSignalInternalIdentityVerificationBankAccountHolderAddressBankModel.md) |  | [optional] |
| **decision** | **String** | The manual decision. |  |
| **failure_codes** | **Array&lt;String&gt;** | The reason codes explaining the outcome. |  |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostSignalInternalIdentityVerificationBankModel.new(
  reference_id: null,
  comment: null,
  bank_account_holder_name: null,
  bank_account_holder_address: null,
  decision: null,
  failure_codes: null
)
```

