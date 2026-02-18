# CybridApiBank::PostIdentityVerificationAliasesInnerBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **full** | **String** | The customer&#39;s full name. Required when type is kyc and method is attested_business_registration or type is kyc and method is watchlists. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostIdentityVerificationAliasesInnerBankModel.new(
  full: null
)
```

