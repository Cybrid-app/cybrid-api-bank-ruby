# CybridApiBank::PostIdentityVerificationNameBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **first** | **String** | The customer&#39;s first name. Required when type is kyc and method is attested, type is kyc and method is attested_id_and_selfie, or type is kyc and method is attested_business_associate. Optional when type is bank_account and method is attested_ownership. | [optional] |
| **middle** | **String** | The customer&#39;s middle name. Optional when type is kyc and method is attested, type is kyc and method is attested_id_and_selfie, type is kyc and method is attested_business_associate, or type is bank_account and method is attested_ownership. | [optional] |
| **last** | **String** | The customer&#39;s last name. Required when type is kyc and method is attested, type is kyc and method is attested_id_and_selfie, or type is kyc and method is attested_business_associate. Optional when type is bank_account and method is attested_ownership. | [optional] |
| **full** | **String** | The customer&#39;s full name. Required when type is kyc and method is attested_business_registration or type is bank_account and method is attested_ownership. Optional when type is kyc and method is attested, type is kyc and method is attested_id_and_selfie, or type is kyc and method is attested_business_associate. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostIdentityVerificationNameBankModel.new(
  first: null,
  middle: null,
  last: null,
  full: null
)
```

