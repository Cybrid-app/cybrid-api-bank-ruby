# CybridApiBank::TransactionBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_guid** | **String** | The unique identifier for the platform account. |  |
| **amount** | **Integer** | The transaction amount in base units. |  |
| **asset** | **String** | The asset code, e.g., USD. |  |
| **bank_guid** | **String** | The unique identifier for the bank. |  |
| **customer_guid** | **String** | The unique identifier for the customer. Absent for bank-owned accounts. | [optional] |
| **direction** | **String** | The direction of the transaction; one of credit or debit. |  |
| **category** | **String** | The type of ledger line item, e.g., principal or fee. | [optional] |
| **resource** | [**TransactionResourceBankModel**](TransactionResourceBankModel.md) |  | [optional] |
| **posted** | **Boolean** | Whether the transaction has posted. |  |
| **balance** | [**BalanceBankModel**](BalanceBankModel.md) |  | [optional] |
| **created_at** | **Time** | ISO8601 datetime the record was created at. |  |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::TransactionBankModel.new(
  account_guid: null,
  amount: null,
  asset: null,
  bank_guid: null,
  customer_guid: null,
  direction: null,
  category: null,
  resource: null,
  posted: null,
  balance: null,
  created_at: null
)
```

