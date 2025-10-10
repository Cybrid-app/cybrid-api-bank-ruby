# CybridApiBank::PatchInternalTransferScreeningBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **started_at** | **Time** | ISO8601 datetime the transfer screening was started at. | [optional] |
| **reviewing_at** | **Time** | ISO8601 datetime the transfer screening was reviewing at. | [optional] |
| **completed_at** | **Time** | ISO8601 datetime the transfer screening was completed at. | [optional] |
| **outcome** | **String** | The outcome of the transfer screening. | [optional] |
| **failure_code** | **String** | The failure code for failed screenings. | [optional] |
| **hold_requested** | **String** | The hold type requested for the transfer. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PatchInternalTransferScreeningBankModel.new(
  started_at: null,
  reviewing_at: null,
  completed_at: null,
  outcome: null,
  failure_code: null,
  hold_requested: null
)
```

