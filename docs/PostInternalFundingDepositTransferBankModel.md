# CybridApiBank::PostInternalFundingDepositTransferBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **environment** | **String** | The environment that the deposit is operating in. |  |
| **deposit_bank_account_guid** | **String** | The identifier of the deposit bank account that corresponds to this transfer. |  |
| **parent_deposit_bank_account_guid** | **String** | The identifier of the parent deposit bank account that corresponds to this transfer. |  |
| **details** | **Object** | The details of the transaction |  |
| **amount** | **Integer** | The amount expected being transferred. |  |
| **payment_rail** | **String** | The payment rail the transfer is being made on. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostInternalFundingDepositTransferBankModel.new(
  environment: null,
  deposit_bank_account_guid: null,
  parent_deposit_bank_account_guid: null,
  details: null,
  amount: null,
  payment_rail: null
)
```

