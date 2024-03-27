# CybridApiBank::PostDepositBankAccountBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_guid** | **String** | The fiat account guid. |  |
| **customer_guid** | **String** | The unique identifier for the customer. | [optional] |
| **labels** | **Array&lt;String&gt;** | The labels associated with the address. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostDepositBankAccountBankModel.new(
  account_guid: null,
  customer_guid: null,
  labels: null
)
```

