# CybridApiBank::BalanceBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **debits** | **Integer** | The total posted debits on the account, in base units. |  |
| **credits** | **Integer** | The total posted credits on the account, in base units. |  |
| **amount** | **Integer** | The balance on the account, in base units. |  |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::BalanceBankModel.new(
  debits: null,
  credits: null,
  amount: null
)
```

