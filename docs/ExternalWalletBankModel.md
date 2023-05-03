# CybridApiBank::ExternalWalletBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the account. | [optional] |
| **name** | **String** | The name of the account. | [optional] |
| **asset_code** | **String** | The asset code. | [optional] |
| **account_kind** | **String** | The type of account. | [optional] |
| **environment** | **String** | The environment that the exchange is operating in. | [optional] |
| **exchange_guid** | **String** | The exchange identifier. | [optional] |
| **created_at** | **Time** | ISO8601 datetime the exchange was created at. | [optional] |
| **state** | **String** | The state of an external wallet | [optional] |
| **failure_code** | **String** | The failure code of an external wallet (if any) | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::ExternalWalletBankModel.new(
  guid: null,
  name: null,
  asset_code: null,
  account_kind: null,
  environment: null,
  exchange_guid: null,
  created_at: null,
  state: null,
  failure_code: null
)
```

