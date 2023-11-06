# CybridApiBank::ExternalBankAccountBalancesBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **available** | **Integer** | The available balance in the account. | [optional] |
| **current** | **Integer** | The current balance in the account including pending transactions. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::ExternalBankAccountBalancesBankModel.new(
  available: null,
  current: null
)
```

