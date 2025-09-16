# CybridApiBank::DepositBankAccountBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the identity verification. | [optional] |
| **type** | **String** | The account type; one of main or sub_account. | [optional] |
| **bank_guid** | **String** | The address&#39; bank identifier. | [optional] |
| **customer_guid** | **String** | The address&#39; customer identifier. | [optional] |
| **account_guid** | **String** | The address&#39; account identifier. | [optional] |
| **created_at** | **Time** | ISO8601 datetime the record was created at. | [optional] |
| **updated_at** | **Time** | ISO8601 datetime the record was last updated at. | [optional] |
| **deleted_at** | **Time** | ISO8601 datetime the record was last deleted at. | [optional] |
| **asset** | **String** | The asset the transfer is related to, e.g., USD. | [optional] |
| **state** | **String** | The state of the address; one of storing or created. | [optional] |
| **unique_memo_id** | **String** | The unique memo identifier for the address. This is used to identify the recipient when sending funds to the account. This value MUST be included in all wire transfers to this account. | [optional] |
| **counterparty_name** | **String** | The name of the account holder. | [optional] |
| **counterparty_address** | [**DepositBankAccountCounterpartyAddressBankModel**](DepositBankAccountCounterpartyAddressBankModel.md) |  | [optional] |
| **account_details** | [**Array&lt;DepositBankAccountAccountDetailsInnerBankModel&gt;**](DepositBankAccountAccountDetailsInnerBankModel.md) | The account details for the bank account. | [optional] |
| **routing_details** | [**Array&lt;DepositBankAccountRoutingDetailsInnerBankModel&gt;**](DepositBankAccountRoutingDetailsInnerBankModel.md) | The account details for the bank account. | [optional] |
| **parent_deposit_bank_account_guid** | **String** | The unique identifier for the bank-level deposit bank account. This is only set for sub-accounts. | [optional] |
| **labels** | **Array&lt;String&gt;** | The labels associated with the address. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::DepositBankAccountBankModel.new(
  guid: null,
  type: null,
  bank_guid: null,
  customer_guid: null,
  account_guid: null,
  created_at: null,
  updated_at: null,
  deleted_at: null,
  asset: null,
  state: null,
  unique_memo_id: null,
  counterparty_name: null,
  counterparty_address: null,
  account_details: null,
  routing_details: null,
  parent_deposit_bank_account_guid: null,
  labels: null
)
```

