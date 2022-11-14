# CybridApiBank::PostTransferBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **quote_guid** | **String** | The associated quote&#39;s identifier. |  |
| **transfer_type** | **String** | The type of transfer. |  |
| **external_bank_account_guid** | **String** | The customer&#39;s fiat asset external bank account&#39;s identifier. | [optional] |
| **expected_error** | **String** | The optional expected error to simulate transfer failure. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostTransferBankModel.new(
  quote_guid: null,
  transfer_type: null,
  external_bank_account_guid: null,
  expected_error: null
)
```

