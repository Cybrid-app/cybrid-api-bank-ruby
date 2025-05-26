# CybridApiBank::IdentityVerificationWithDetailsPiiBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | [**IdentityVerificationWithDetailsPiiNameBankModel**](IdentityVerificationWithDetailsPiiNameBankModel.md) |  | [optional] |
| **aliases** | [**Array&lt;IdentityVerificationWithDetailsPiiAliasesInnerBankModel&gt;**](IdentityVerificationWithDetailsPiiAliasesInnerBankModel.md) | The business attested aliases. | [optional] |
| **address** | [**IdentityVerificationWithDetailsPiiAddressBankModel**](IdentityVerificationWithDetailsPiiAddressBankModel.md) |  | [optional] |
| **date_of_birth** | **Date** | The attested date of birth. | [optional] |
| **phone_number** | **String** | The attested phone number. | [optional] |
| **email_address** | **String** | The attested email address. | [optional] |
| **occupation** | **String** | The attested occupation. | [optional] |
| **website** | **String** | The attested website. | [optional] |
| **nature_of_business** | **String** | The attested nature of business. | [optional] |
| **identification_numbers** | [**Array&lt;IdentificationNumberBankModel&gt;**](IdentificationNumberBankModel.md) | The attested identification numbers. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::IdentityVerificationWithDetailsPiiBankModel.new(
  name: null,
  aliases: null,
  address: null,
  date_of_birth: null,
  phone_number: null,
  email_address: null,
  occupation: null,
  website: null,
  nature_of_business: null,
  identification_numbers: null
)
```

