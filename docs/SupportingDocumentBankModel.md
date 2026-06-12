# CybridApiBank::SupportingDocumentBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the document. |  |
| **type** | **String** | The kind of supporting document; one of invoice, purchase_order, delivery_slip, contract, bill_of_lading, or others. |  |
| **files** | [**Array&lt;SupportingDocumentFileBankModel&gt;**](SupportingDocumentFileBankModel.md) | The files backing this document. |  |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::SupportingDocumentBankModel.new(
  guid: null,
  type: null,
  files: null
)
```

