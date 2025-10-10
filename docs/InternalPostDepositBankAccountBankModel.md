# CybridApiBank::InternalPostDepositBankAccountBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The account type. | [optional] |
| **account_guid** | **String** | The trading account guid. |  |
| **customer_guid** | **String** | The unique identifier for the customer. | [optional] |
| **parent_deposit_bank_account_guid** | **String** | The unique identifier for the bank-level deposit bank account. This is only required for sub-accounts. | [optional] |
| **provider_id** | **String** | Optional provider_id to use for the account.  Can only be set in Sandbox mode. It is automatically set in Production. Strictly for testing purposes. | [optional] |
| **unique_memo_id** | **String** | Optional unique_memo_id to use for the account.  Can only be set in Sandbox mode. It is automatically set in Production. Strictly for testing purposes. | [optional] |
| **labels** | **Array&lt;String&gt;** | The labels associated with the address. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::InternalPostDepositBankAccountBankModel.new(
  type: null,
  account_guid: null,
  customer_guid: null,
  parent_deposit_bank_account_guid: null,
  provider_id: null,
  unique_memo_id: null,
  labels: null
)
```

