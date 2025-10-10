# CybridApiBank::PatchInternalFeeChargeBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **state** | **String** | The state of the resource. | [optional] |
| **pending_at** | **Time** | The timestamp when the order was set to pending. | [optional] |
| **failed_at** | **Time** | The timestamp when the order was set to failed. | [optional] |
| **completed_at** | **Time** | The timestamp when the order was set to completed. | [optional] |
| **failure_code** | **String** | The error message in case of failure. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PatchInternalFeeChargeBankModel.new(
  state: null,
  pending_at: null,
  failed_at: null,
  completed_at: null,
  failure_code: null
)
```

