# CybridApiBank::PlatformFileBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | The unique identifier for the file. | [optional] |
| **file_type** | **String** | The file type; one of drivers_license_front, drivers_license_back, passport, visa, identification_card, residence_card, selfie, selfie_video, selfie_left, selfie_right, utility_bill, bank_statement, property_tax, tax_document, ein_letter, incorporation_certificate, persona_inquiry_report, or persona_inquiry_export. | [optional] |
| **content_type** | **String** | The media type; one of image/jpeg, image/png, application/pdf, application/json, or video/mp4. | [optional] |
| **completed_at** | **Time** | The ISO8601 datetime the file was completed at. | [optional] |
| **failed_at** | **Time** | The ISO8601 datetime the file failed at. | [optional] |
| **state** | **String** | The state of the file. One of storing, completed, or failed. | [optional] |
| **failure_code** | **String** | The failure code for failed files. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PlatformFileBankModel.new(
  guid: null,
  file_type: null,
  content_type: null,
  completed_at: null,
  failed_at: null,
  state: null,
  failure_code: null
)
```

