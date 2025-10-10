# CybridApiBank::PatchInternalFileBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **state** | **String** | File state | [optional] |
| **failure_code** | **String** | The failure code for failed files. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PatchInternalFileBankModel.new(
  state: null,
  failure_code: null
)
```

