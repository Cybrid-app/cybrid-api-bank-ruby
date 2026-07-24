# CybridApiBank::PostDepositAddressBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the deposit address. | [optional] |
| **account_guid** | **String** | The trading account guid. |  |
| **labels** | **Array&lt;String&gt;** | The labels associated with the address. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostDepositAddressBankModel.new(
  name: null,
  account_guid: null,
  labels: null
)
```

