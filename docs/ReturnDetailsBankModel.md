# CybridApiBank::ReturnDetailsBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **returned_at** | **Time** | The timestamp when the return was initiated by the provider. |  |
| **return_code** | **String** | The ACH/EFT return code (e.g. R01, R10) received from the provider. Absent when the provider did not report a return code. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::ReturnDetailsBankModel.new(
  returned_at: null,
  return_code: null
)
```

