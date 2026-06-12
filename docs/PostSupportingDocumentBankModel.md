# CybridApiBank::PostSupportingDocumentBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The kind of supporting document. |  |
| **file_guids** | **Array&lt;String&gt;** | File guids backing this document. |  |
| **document_reference_number** | **String** | A reference number identifying this document (e.g. an invoice number). Required for payouts to certain corridors. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostSupportingDocumentBankModel.new(
  type: null,
  file_guids: null,
  document_reference_number: null
)
```

