# CybridApiBank::PostInternalSystemTransactionBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | The internal identifier for the system transaction. |  |
| **provider_id** | **String** | The external identifier for the system transaction. |  |
| **system_account_guid** | **String** | The identifier of the account the transaction is associated to. |  |
| **amount** | **Integer** | The amount in the transaction. |  |
| **asset_code** | **String** | The asset code. |  |
| **direction** | **String** | The direction of the transaction: debit or credit. |  |
| **details** | **String** | The description for the transaction. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostInternalSystemTransactionBankModel.new(
  guid: null,
  provider_id: null,
  system_account_guid: null,
  amount: null,
  asset_code: null,
  direction: null,
  details: null
)
```

