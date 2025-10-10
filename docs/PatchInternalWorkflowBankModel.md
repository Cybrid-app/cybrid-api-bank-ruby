# CybridApiBank::PatchInternalWorkflowBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **state** | **String** | The state of the workflow. |  |
| **failure_code** | **String** | The failure code for failed workflows. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PatchInternalWorkflowBankModel.new(
  state: null,
  failure_code: null
)
```

