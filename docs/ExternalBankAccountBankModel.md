# CybridApiBank::ExternalBankAccountBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the account. | [optional] |
| **name** | **String** | The name of the account. | [optional] |
| **asset_code** | **String** | The asset code. | [optional] |
| **account_kind** | **String** | The type of account. | [optional] |
| **environment** | **String** | The environment that the external bank account is operating in. | [optional] |
| **bank_guid** | **String** | The bank identifier. | [optional] |
| **customer_guid** | **String** | The customer identifier. | [optional] |
| **created_at** | **Time** | ISO8601 datetime the exchange was created at. | [optional] |
| **plaid_access_token** | **String** | The Plaid access token for the account. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::ExternalBankAccountBankModel.new(
  guid: null,
  name: null,
  asset_code: null,
  account_kind: null,
  environment: null,
  bank_guid: null,
  customer_guid: null,
  created_at: null,
  plaid_access_token: null
)
```

