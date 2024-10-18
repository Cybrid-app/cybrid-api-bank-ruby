# CybridApiBank::TransferEntryBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | The actual amount in base units of the asset. |  |
| **fee** | **Integer** | The fee associated with the transfer entry. |  |
| **source_account** | [**QuoteEntrySourceAccountBankModel**](QuoteEntrySourceAccountBankModel.md) |  |  |
| **destination_account** | [**TransferEntryDestinationAccountBankModel**](TransferEntryDestinationAccountBankModel.md) |  |  |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::TransferEntryBankModel.new(
  amount: null,
  fee: null,
  source_account: null,
  destination_account: null
)
```

