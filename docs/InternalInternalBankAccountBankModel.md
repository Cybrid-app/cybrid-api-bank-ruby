# CybridApiBank::InternalInternalBankAccountBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the account. | [optional] |
| **name** | **String** | The name of the account. | [optional] |
| **asset** | **String** | The asset code. | [optional] |
| **account_kind** | **String** | The type of account. | [optional] |
| **environment** | **String** | The environment that the exchange is operating in. | [optional] |
| **created_at** | **Time** | ISO8601 datetime the record was created at. | [optional] |
| **updated_at** | **Time** | ISO8601 datetime the record was last updated at. | [optional] |
| **state** | **String** | The state of the verification process. | [optional] |
| **platform_balance** | **Integer** | The amount of funds that are in the account, in base units of the asset. | [optional] |
| **platform_available** | **Integer** | The amount of funds that are in the account, in base units of the asset, that are available for use on the platform. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::InternalInternalBankAccountBankModel.new(
  guid: null,
  name: null,
  asset: null,
  account_kind: null,
  environment: null,
  created_at: null,
  updated_at: null,
  state: null,
  platform_balance: null,
  platform_available: null
)
```

