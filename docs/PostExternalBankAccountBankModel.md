# CybridApiBank::PostExternalBankAccountBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the account. |  |
| **account_kind** | **String** | The account type |  |
| **customer_guid** | **String** | The customer identifier. | [optional] |
| **asset** | **String** | The asset code. If not set will try and default to the Bank&#39;s configured fiat asset. |  |
| **plaid_public_token** | **String** | The public token for the account. Required for &#39;plaid&#39; accounts. | [optional] |
| **plaid_account_id** | **String** | The account identifier in plaid. Required for &#39;plaid&#39; accounts. | [optional] |
| **plaid_processor_token** | **String** | The Plaid processor token used to access the account. Required for &#39;plaid_processor_token&#39; accounts. | [optional] |
| **plaid_institution_id** | **String** | Plaid&#39;s institution ID for the account&#39;s institution. Required for &#39;plaid_processor_token&#39; accounts. | [optional] |
| **plaid_account_mask** | **String** | The account mask for the account. Required for &#39;plaid_processor_token&#39; accounts. | [optional] |
| **plaid_account_name** | **String** | The name of the account. Required for &#39;plaid_processor_token&#39; accounts. | [optional] |
| **counterparty_bank_account** | [**PostExternalBankAccountCounterpartyBankAccountBankModel**](PostExternalBankAccountCounterpartyBankAccountBankModel.md) |  | [optional] |
| **counterparty_name** | [**PostExternalBankAccountCounterpartyNameBankModel**](PostExternalBankAccountCounterpartyNameBankModel.md) |  | [optional] |
| **counterparty_address** | [**PostExternalBankAccountCounterpartyAddressBankModel**](PostExternalBankAccountCounterpartyAddressBankModel.md) |  | [optional] |
| **counterparty_email_address** | **String** | The counterparty&#39;s email address on their checking account. | [optional] |
| **counterparty_guid** | **String** | The counterparty identifier. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostExternalBankAccountBankModel.new(
  name: null,
  account_kind: null,
  customer_guid: null,
  asset: null,
  plaid_public_token: null,
  plaid_account_id: null,
  plaid_processor_token: null,
  plaid_institution_id: null,
  plaid_account_mask: null,
  plaid_account_name: null,
  counterparty_bank_account: null,
  counterparty_name: null,
  counterparty_address: null,
  counterparty_email_address: null,
  counterparty_guid: null
)
```

