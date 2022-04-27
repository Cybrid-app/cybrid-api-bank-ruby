# CybridApiBank::SystemAccountBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The account type. | [optional] |
| **guid** | **String** | Auto-generated unique identifier for the account. | [optional] |
| **created_at** | **Time** | ISO8601 datetime the account was created at. | [optional] |
| **asset_code** | **String** | The asset code. | [optional] |
| **name** | **String** | The name of the account. | [optional] |

## Example

```ruby
require 'cybrid_api_bank'

instance = CybridApiBank::SystemAccountBankModel.new(
  type: null,
  guid: null,
  created_at: null,
  asset_code: null,
  name: null
)
```

