# CybridApiBank::PostPlanDestinationAccountBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | The destination account&#39;s identifier. |  |
| **amount** | **Integer** | The amount to be delivered in base units of the source account currency | [optional] |
| **payment_rail** | **String** | The desired payment rail to use to initiate a fiat transfer to the destination account. | [optional] |
| **security_question** | **String** | The security question for an Interac e-Transfer withdrawal or conversion. Only accepted for an e-transfer rail destination; must be paired with security_answer. | [optional] |
| **security_answer** | **String** | The security answer the recipient must provide to claim an Interac e-Transfer. Only accepted for an e-transfer rail destination; must be paired with security_question. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostPlanDestinationAccountBankModel.new(
  guid: null,
  amount: null,
  payment_rail: null,
  security_question: null,
  security_answer: null
)
```

