# CybridApiBank::PostPlanSourceAccountBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | The source account&#39;s identifier. |  |
| **amount** | **Integer** | The amount to be delivered in base units of the source account currency | [optional] |
| **payment_rail** | **String** | The desired payment rail to use to initiate a fiat transfer from the source account. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostPlanSourceAccountBankModel.new(
  guid: null,
  amount: null,
  payment_rail: null
)
```

