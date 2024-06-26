# CybridApiBank::TransferParticipantBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of participant; one of unknown, bank, customer, or counterparty. |  |
| **amount** | **Integer** | The amount in base units of the asset. |  |
| **guid** | **String** | The participant&#39;s identifier. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::TransferParticipantBankModel.new(
  type: null,
  amount: null,
  guid: null
)
```

