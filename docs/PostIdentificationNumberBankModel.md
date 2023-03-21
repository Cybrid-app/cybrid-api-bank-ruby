# CybridApiBank::PostIdentificationNumberBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The source of the identification number. |  |
| **issuing_country_code** | **String** | The ISO 3166 country 2-Alpha country code of the identification number issuer. |  |
| **identification_number** | **String** | The identification number. |  |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostIdentificationNumberBankModel.new(
  type: null,
  issuing_country_code: null,
  identification_number: null
)
```

