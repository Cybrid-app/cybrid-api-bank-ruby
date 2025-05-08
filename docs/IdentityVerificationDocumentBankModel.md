# CybridApiBank::IdentityVerificationDocumentBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the document. | [optional] |
| **type** | **String** | The document type; one of drivers_license, passport, passport_card, residence_card, visa, social_security_number, tax_identification_number, selfie, proof_of_address, formation_document, or employer_identification_number. | [optional] |
| **validated** | **Boolean** | Whether the document has been validated. | [optional] |
| **expiration_date** | **Date** | The document expiration date. | [optional] |
| **files** | [**Array&lt;IdentityVerificationDocumentFileBankModel&gt;**](IdentityVerificationDocumentFileBankModel.md) | The files associated with the document. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::IdentityVerificationDocumentBankModel.new(
  guid: null,
  type: null,
  validated: null,
  expiration_date: null,
  files: null
)
```

