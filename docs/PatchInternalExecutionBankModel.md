# CybridApiBank::PatchInternalExecutionBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_executed_amount** | **Integer** | The executed amount for source account | [optional] |
| **destination_executed_amount** | **Integer** | The executed amount for destination account | [optional] |
| **state** | **String** | The state of the execution. |  |
| **started_at** | **Time** | The timestamp when the plan started. | [optional] |
| **completed_at** | **Time** | The timestamp when the plan completed. | [optional] |
| **failed_at** | **Time** | The timestamp when the plan failed. | [optional] |
| **failure_code** | **String** | The failure code for the plan, if applicable. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PatchInternalExecutionBankModel.new(
  source_executed_amount: null,
  destination_executed_amount: null,
  state: null,
  started_at: null,
  completed_at: null,
  failed_at: null,
  failure_code: null
)
```

