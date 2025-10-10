# CybridApiBank::PostExternalBankAccountBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the account. |  |
| **account_kind** | **String** | The account type |  |
| **customer_guid** | **String** | The customer identifier. | [optional] |
| **asset** | **String** | The asset code. If not set will try and default to the Bank&#39;s configured fiat asset. | [optional] |
| **plaid_public_token** | **String** | The public token for the account. Required for &#39;plaid&#39; accounts. Required when account_kind is plaid. | [optional] |
| **plaid_account_id** | **String** | The account identifier in plaid. Required for &#39;plaid&#39; accounts. Required when account_kind is plaid. | [optional] |
| **plaid_processor_token** | **String** | The Plaid processor token used to access the account. Required when account_kind is plaid_processor_token. | [optional] |
| **plaid_institution_id** | **String** | Plaid&#39;s institution ID for the account&#39;s institution. Required when account_kind is plaid_processor_token. | [optional] |
| **plaid_account_mask** | **String** | The account mask for the account. Required when account_kind is plaid_processor_token. | [optional] |
| **plaid_account_name** | **String** | The name of the account. Required when account_kind is plaid_processor_token. | [optional] |
| **counterparty_guid** | **String** | The counterparty identifier. Optional when account_kind is raw_routing_details. | [optional] |
| **counterparty_bank_account_details** | [**Array&lt;PostBankAccountDetailsBankModel&gt;**](PostBankAccountDetailsBankModel.md) | The counterparty&#39;s checking bank account information. Required when account_kind is raw_routing_details. | [optional] |
| **counterparty_name** | [**PostExternalBankAccountCounterpartyNameBankModel**](PostExternalBankAccountCounterpartyNameBankModel.md) |  | [optional] |
| **counterparty_address** | [**PostExternalBankAccountCounterpartyAddressBankModel**](PostExternalBankAccountCounterpartyAddressBankModel.md) |  | [optional] |
| **counterparty_email_address** | **String** | The counterparty&#39;s email address on their checking account. Optional when account_kind is raw_routing_details and counterparty_guid is not present. | [optional] |

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
  counterparty_guid: null,
  counterparty_bank_account_details: null,
  counterparty_name: null,
  counterparty_address: null,
  counterparty_email_address: null
)
```

