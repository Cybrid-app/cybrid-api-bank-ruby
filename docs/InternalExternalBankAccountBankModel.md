# CybridApiBank::InternalExternalBankAccountBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the account. | [optional] |
| **name** | **String** | The name of the account. | [optional] |
| **asset** | **String** | The asset code. | [optional] |
| **account_kind** | **String** | The type of account. | [optional] |
| **environment** | **String** | The environment that the external bank account is operating in. | [optional] |
| **bank_guid** | **String** | The bank identifier. | [optional] |
| **customer_guid** | **String** | The customer identifier. | [optional] |
| **created_at** | **Time** | ISO8601 datetime the record was created at. | [optional] |
| **updated_at** | **Time** | ISO8601 datetime the record was last updated at. | [optional] |
| **plaid_institution_id** | **String** | The Plaid institution ID for the account. | [optional] |
| **plaid_account_mask** | **String** | The account number mask for the account. | [optional] |
| **plaid_account_name** | **String** | The name for the account. | [optional] |
| **state** | **String** | The state of the external bank account. | [optional] |
| **failure_code** | **String** | The failure code for failed transfers. | [optional] |
| **balances** | [**ExternalBankAccountBalancesBankModel**](ExternalBankAccountBalancesBankModel.md) |  | [optional] |
| **pii** | [**Array&lt;InternalExternalBankAccountPiiInnerBankModel&gt;**](InternalExternalBankAccountPiiInnerBankModel.md) | The account holder information. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::InternalExternalBankAccountBankModel.new(
  guid: null,
  name: null,
  asset: null,
  account_kind: null,
  environment: null,
  bank_guid: null,
  customer_guid: null,
  created_at: null,
  updated_at: null,
  plaid_institution_id: null,
  plaid_account_mask: null,
  plaid_account_name: null,
  state: null,
  failure_code: null,
  balances: null,
  pii: null
)
```

