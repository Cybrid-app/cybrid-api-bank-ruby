# CybridApiBank::PostAccountBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The account type. |  |
| **provider** | **String** | The account provider, if applicable. | [optional] |
| **customer_guid** | **String** | The customer identifier associated with the account. |  |
| **asset** | **String** | The asset code. |  |
| **name** | **String** | The name of the account. |  |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostAccountBankModel.new(
  type: null,
  provider: null,
  customer_guid: null,
  asset: null,
  name: null
)
```

