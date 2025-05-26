# CybridApiBank::ExternalBankAccountBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the account. | [optional] |
| **name** | **String** | The name of the account. | [optional] |
| **asset** | **String** | The asset code. | [optional] |
| **account_kind** | **String** | The type of account; one of plaid, plaid_processor_token, or raw_routing_details. | [optional] |
| **environment** | **String** | The environment that the external bank account is operating in; one of sandbox or production. | [optional] |
| **bank_guid** | **String** | The bank identifier. | [optional] |
| **customer_guid** | **String** | The customer identifier. | [optional] |
| **counterparty_guid** | **String** | The counterparty identifier. | [optional] |
| **created_at** | **Time** | ISO8601 datetime the record was created at. | [optional] |
| **updated_at** | **Time** | ISO8601 datetime the record was last updated at. | [optional] |
| **plaid_institution_id** | **String** | The Plaid institution ID for the account. | [optional] |
| **plaid_account_mask** | **String** | The account number mask for the account. | [optional] |
| **plaid_account_name** | **String** | The name for the account. | [optional] |
| **state** | **String** | The state of the external bank account; one of storing, completed, failed, refresh_required, unverified, deleting, or deleted. | [optional] |
| **failure_code** | **String** | The failure code for failed transfers. | [optional] |
| **balance_updated_at** | **Time** | The timestamp that the balance information was last updated at. | [optional] |
| **balances** | [**ExternalBankAccountBalancesBankModel**](ExternalBankAccountBalancesBankModel.md) |  | [optional] |
| **pii** | [**Array&lt;ExternalBankAccountPiiInnerBankModel&gt;**](ExternalBankAccountPiiInnerBankModel.md) | The account holder information. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::ExternalBankAccountBankModel.new(
  guid: null,
  name: null,
  asset: null,
  account_kind: null,
  environment: null,
  bank_guid: null,
  customer_guid: null,
  counterparty_guid: null,
  created_at: null,
  updated_at: null,
  plaid_institution_id: null,
  plaid_account_mask: null,
  plaid_account_name: null,
  state: null,
  failure_code: null,
  balance_updated_at: null,
  balances: null,
  pii: null
)
```

