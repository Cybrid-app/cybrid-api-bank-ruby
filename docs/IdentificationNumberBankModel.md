# CybridApiBank::IdentificationNumberBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The source of the identification number; one of drivers_license, passport, passport_card, residence_card, social_security_number, tax_identification_number, identification_card, employer_identification_number, or business_registration_number. |  |
| **issuing_country_code** | **String** | The ISO 3166 country 2-Alpha country code of the identification number issuer. |  |
| **identification_number** | **String** | The identification number. |  |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::IdentificationNumberBankModel.new(
  type: null,
  issuing_country_code: null,
  identification_number: null
)
```

