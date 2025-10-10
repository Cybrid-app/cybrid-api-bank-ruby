# CybridApiBank::InternalPostAccountBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The account type. |  |
| **bank_guid** | **String** | The bank identifier associated with the account. | [optional] |
| **asset** | **String** | The asset code. |  |
| **name** | **String** | The name of the account. |  |
| **labels** | **Array&lt;String&gt;** | The labels associated with the account. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::InternalPostAccountBankModel.new(
  type: null,
  bank_guid: null,
  asset: null,
  name: null,
  labels: null
)
```

