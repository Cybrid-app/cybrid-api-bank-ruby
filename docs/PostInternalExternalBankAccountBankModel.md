# CybridApiBank::PostInternalExternalBankAccountBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the account. |  |
| **account_kind** | **String** | The account type |  |
| **provider_id** | **String** | The id of the account at the third-party provider. | [optional] |
| **beneficiary_memo** | **String** | The memo to send to the counterparty. | [optional] |
| **exchange_guid** | **String** | The exchange identifier. | [optional] |
| **bank_guid** | **String** | The bank identifier. | [optional] |
| **customer_guid** | **String** | The customer identifier. | [optional] |
| **asset** | **String** | The asset code. |  |
| **plaid_public_token** | **String** | The public token for the account. | [optional] |
| **plaid_account_id** | **String** | The account identifier in plaid. | [optional] |
| **counterparty_bank_account** | [**PostInternalExternalBankAccountCounterpartyBankAccountBankModel**](PostInternalExternalBankAccountCounterpartyBankAccountBankModel.md) |  | [optional] |
| **counterparty_name** | [**PostInternalExternalBankAccountCounterpartyNameBankModel**](PostInternalExternalBankAccountCounterpartyNameBankModel.md) |  | [optional] |
| **counterparty_address** | [**PostInternalExternalBankAccountCounterpartyAddressBankModel**](PostInternalExternalBankAccountCounterpartyAddressBankModel.md) |  | [optional] |
| **counterparty_email_address** | **String** | The counterparty&#39;s email address on the account (internal). | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostInternalExternalBankAccountBankModel.new(
  name: null,
  account_kind: null,
  provider_id: null,
  beneficiary_memo: null,
  exchange_guid: null,
  bank_guid: null,
  customer_guid: null,
  asset: null,
  plaid_public_token: null,
  plaid_account_id: null,
  counterparty_bank_account: null,
  counterparty_name: null,
  counterparty_address: null,
  counterparty_email_address: null
)
```

