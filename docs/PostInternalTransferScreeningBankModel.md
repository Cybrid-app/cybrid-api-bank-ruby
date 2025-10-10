# CybridApiBank::PostInternalTransferScreeningBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transfer_guid** | **String** | The identifier of the transfer being screened. |  |
| **force_review** | **Boolean** | True if the screening should be forced to review. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostInternalTransferScreeningBankModel.new(
  transfer_guid: null,
  force_review: null
)
```

