# CybridApiBank::PostDepositBankAccountBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The account type. To generate deposit bank accounts with their own unique account number set this to \&quot;main\&quot;. To generate deposit bank accounts with the same account number as the parent deposit bank account set this to \&quot;sub_account\&quot;. This setting will only generate a unique identifier for the deposit bank and will not result in a unique account number being generated. \&quot;sub_account\&quot; is only  available for customer-level deposit bank accounts. |  |
| **account_guid** | **String** | The fiat account guid. |  |
| **customer_guid** | **String** | The unique identifier for the customer. | [optional] |
| **parent_deposit_bank_account_guid** | **String** | The unique identifier for the bank-level deposit bank account. This is only required for sub-accounts. Required when type is sub_account. | [optional] |
| **labels** | **Array&lt;String&gt;** | The labels associated with the bank account. | [optional] |

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

