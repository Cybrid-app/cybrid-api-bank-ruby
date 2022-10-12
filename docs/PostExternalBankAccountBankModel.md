# CybridApiBank::PostExternalBankAccountBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the account. |  |
| **account_kind** | **String** | The account type |  |
| **customer_guid** | **String** | The customer identifier. | [optional] |
| **asset** | **String** | The asset code. |  |
| **plaid_public_token** | **String** | The public token for the account. | [optional] |
| **plaid_account_id** | **String** | The account identifier in plaid. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostExternalBankAccountBankModel.new(
  name: null,
  account_kind: null,
  customer_guid: null,
  asset: null,
  plaid_public_token: null,
  plaid_account_id: null
)
```

