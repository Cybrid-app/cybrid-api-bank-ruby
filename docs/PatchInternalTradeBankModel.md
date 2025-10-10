# CybridApiBank::PatchInternalTradeBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **state** | **String** | The state of the trade. |  |
| **failure_code** | **String** | The failure code for failed trades. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PatchInternalTradeBankModel.new(
  state: null,
  failure_code: null
)
```

