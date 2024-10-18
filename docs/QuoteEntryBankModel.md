# CybridApiBank::QuoteEntryBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_account** | [**QuoteEntrySourceAccountBankModel**](QuoteEntrySourceAccountBankModel.md) |  | [optional] |
| **destination_account** | [**QuoteEntryDestinationAccountBankModel**](QuoteEntryDestinationAccountBankModel.md) |  | [optional] |
| **receive_amount** | **Integer** | The amount to be received in base units of the currency | [optional] |
| **deliver_amount** | **Integer** | The amount to be delivered in base units of the currency | [optional] |
| **fee** | **Integer** | The fee associated with the account entry. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::QuoteEntryBankModel.new(
  source_account: null,
  destination_account: null,
  receive_amount: null,
  deliver_amount: null,
  fee: null
)
```

