# CybridApiBank::PlatformFileBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | The unique identifier for the file. | [optional] |
| **organization_guid** | **String** | The organization identifier. | [optional] |
| **bank_guid** | **String** | The bank identifier. | [optional] |
| **customer_guid** | **String** | The customer identifier. | [optional] |
| **type** | **String** | The file type; one of drivers_license_front, drivers_license_back, passport, passport_card, visa, identification_card, residence_card, work_permit, indigenous_id_document, selfie, selfie_video, selfie_left, selfie_right, utility_bill, proof_of_address, bank_statement, property_tax, tax_document, ein_letter, incorporation_certificate, persona_inquiry_report, or persona_inquiry_export. | [optional] |
| **content_type** | **String** | The media type; one of image/jpeg, image/png, application/pdf, application/json, or video/mp4. | [optional] |
| **filename** | **String** | The name of the file. | [optional] |
| **completed_at** | **Time** | The ISO8601 datetime the file was completed at. | [optional] |
| **failed_at** | **Time** | The ISO8601 datetime the file failed at. | [optional] |
| **state** | **String** | The state of the file. One of storing, completed, or failed. | [optional] |
| **failure_code** | **String** | The failure code for failed files. | [optional] |
| **upload_url** | **String** | The URL to upload the file to. | [optional] |
| **upload_expires_at** | **Time** | The ISO8601 datetime the upload URL expires at. | [optional] |
| **download_url** | **String** | The URL to download the file from. | [optional] |
| **download_expires_at** | **Time** | The ISO8601 datetime the download URL expires at. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PlatformFileBankModel.new(
  guid: null,
  organization_guid: null,
  bank_guid: null,
  customer_guid: null,
  type: null,
  content_type: null,
  filename: null,
  completed_at: null,
  failed_at: null,
  state: null,
  failure_code: null,
  upload_url: null,
  upload_expires_at: null,
  download_url: null,
  download_expires_at: null
)
```

