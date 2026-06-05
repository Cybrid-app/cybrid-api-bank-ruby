# CybridApiBank::HoldDetailBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of hold; one of customer_hold_duration, reserve_below_minimum, screening_administrative, or screening_non_administrative. | [optional] |
| **state** | **String** | The state of the hold; one of active, completed, or storing |  |
| **started_at** | **Time** | ISO8601 datetime the hold was started at. |  |
| **completed_at** | **Time** | ISO8601 datetime the hold was completed at. | [optional] |
| **eta_at** | **Time** | ISO8601 datetime the hold is expected to complete at. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::HoldDetailBankModel.new(
  type: null,
  state: null,
  started_at: null,
  completed_at: null,
  eta_at: null
)
```

