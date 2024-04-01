# CybridApiBank::IdentityVerificationWithDetailsPiiBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | [**IdentityVerificationWithDetailsPiiNameBankModel**](IdentityVerificationWithDetailsPiiNameBankModel.md) |  | [optional] |
| **address** | [**IdentityVerificationWithDetailsPiiAddressBankModel**](IdentityVerificationWithDetailsPiiAddressBankModel.md) |  | [optional] |
| **date_of_birth** | **Date** | The attested date of birth. | [optional] |
| **phone_number** | **String** | The attested phone number. | [optional] |
| **email_address** | **String** | The attested email address. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::IdentityVerificationWithDetailsPiiBankModel.new(
  name: null,
  address: null,
  date_of_birth: null,
  phone_number: null,
  email_address: null
)
```

