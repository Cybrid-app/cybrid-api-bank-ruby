# CybridApiBank::IdentityVerificationDocumentFileBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | The unique identifier for the file. | [optional] |
| **type** | **String** | The file type; one of drivers_license_front, drivers_license_back, passport, passport_card, identification_card, residence_card, work_permit, indigenous_id_document, selfie, selfie_video, selfie_left, selfie_right, proof_of_address, or incorporation_certificate. | [optional] |
| **content_type** | **String** | The media type; one of image/jpeg, image/png, application/pdf, application/json, or video/mp4. | [optional] |
| **filename** | **String** | The name of the file. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::IdentityVerificationDocumentFileBankModel.new(
  guid: null,
  type: null,
  content_type: null,
  filename: null
)
```

