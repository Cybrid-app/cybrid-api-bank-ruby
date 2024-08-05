# CybridApiBank::PostDepositBankAccountBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The account type. | [optional] |
| **account_guid** | **String** | The fiat account guid. |  |
| **customer_guid** | **String** | The unique identifier for the customer. | [optional] |
| **parent_deposit_bank_account_guid** | **String** | The unique identifier for the bank-level deposit bank account. This is only required for sub-accounts. | [optional] |
| **labels** | **Array&lt;String&gt;** | The labels associated with the address. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostDepositBankAccountBankModel.new(
  type: null,
  account_guid: null,
  customer_guid: null,
  parent_deposit_bank_account_guid: null,
  labels: null
)
```

