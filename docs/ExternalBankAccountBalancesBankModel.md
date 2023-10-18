# CybridApiBank::ExternalBankAccountBalancesBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **available_balance** | **Integer** | The available balance in the account. | [optional] |
| **current_balance** | **Integer** | The current balance in the account including pending transactions. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::ExternalBankAccountBalancesBankModel.new(
  available_balance: null,
  current_balance: null
)
```

