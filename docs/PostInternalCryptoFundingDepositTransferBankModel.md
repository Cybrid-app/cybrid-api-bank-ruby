# CybridApiBank::PostInternalCryptoFundingDepositTransferBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **environment** | **String** | The environment that the deposit is operating in. |  |
| **deposit_address_guid** | **String** | The identifier of the deposit address that corresponds to this transfer. |  |
| **txn_hash** | **String** | The hash of the blockchain transaction |  |
| **amount** | **Integer** | The amount expected being transferred. |  |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostInternalCryptoFundingDepositTransferBankModel.new(
  environment: null,
  deposit_address_guid: null,
  txn_hash: null,
  amount: null
)
```

