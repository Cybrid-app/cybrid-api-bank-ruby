# CybridApiBank::PostFileBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of file. |  |
| **customer_guid** | **String** | The customer identifier. |  |
| **filename** | **String** | The name of the file. |  |
| **content_type** | **String** | The content type of the file. |  |
| **data** | **String** | Base64 encoded file content | [optional] |
| **metadata** | [**PostFileMetadataBankModel**](PostFileMetadataBankModel.md) |  | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostFileBankModel.new(
  type: null,
  customer_guid: null,
  filename: null,
  content_type: null,
  data: null,
  metadata: null
)
```

