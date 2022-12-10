# CybridApiBank::WorkflowBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the workflow. | [optional] |
| **customer_guid** | **String** | The associated customer&#39;s identifier. | [optional] |
| **type** | **String** | The type of workflow. | [optional] |
| **state** | **String** | The state of the workflow. | [optional] |
| **failure_code** | **String** | The failure code for failed workflows. | [optional] |
| **created_at** | **Time** | ISO8601 datetime the bank was created at. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::WorkflowBankModel.new(
  guid: null,
  customer_guid: null,
  type: null,
  state: null,
  failure_code: null,
  created_at: null
)
```

