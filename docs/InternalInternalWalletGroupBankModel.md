# CybridApiBank::InternalInternalWalletGroupBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the account. | [optional] |
| **type** | **String** | The wallet group type. | [optional] |
| **name** | **String** | The name of the account. | [optional] |
| **environment** | **String** | The environment that the exchange is operating in. | [optional] |
| **created_at** | **Time** | ISO8601 datetime the record was created at. | [optional] |
| **updated_at** | **Time** | ISO8601 datetime the record was last updated at. | [optional] |
| **state** | **String** | The state of the wallet group. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::InternalInternalWalletGroupBankModel.new(
  guid: null,
  type: null,
  name: null,
  environment: null,
  created_at: null,
  updated_at: null,
  state: null
)
```

