# CybridApiBank::InternalCybridAccountBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The account type. | [optional] |
| **guid** | **String** | Auto-generated unique identifier for the account. | [optional] |
| **created_at** | **Time** | ISO8601 datetime the record was created at. | [optional] |
| **updated_at** | **Time** | ISO8601 datetime the record was last updated at. | [optional] |
| **asset** | **String** | The asset code. | [optional] |
| **name** | **String** | The name of the account. | [optional] |
| **environment** | **String** | The environment the account is configured for. | [optional] |
| **state** | **String** | The state of the account. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::InternalCybridAccountBankModel.new(
  type: null,
  guid: null,
  created_at: null,
  updated_at: null,
  asset: null,
  name: null,
  environment: null,
  state: null
)
```

