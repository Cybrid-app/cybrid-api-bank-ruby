# CybridApiBank::PatchInternalPlanBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **state** | **String** | The state of the plan. |  |
| **failure_code** | **String** | The failure code for the plan, if applicable. | [optional] |
| **started_at** | **Time** | The timestamp when the plan started. | [optional] |
| **completed_at** | **Time** | The timestamp when the plan completed. | [optional] |
| **failed_at** | **Time** | The timestamp when the plan failed. | [optional] |
| **accounts** | [**Array&lt;PatchInternalAccountAssociationBankModel&gt;**](PatchInternalAccountAssociationBankModel.md) | The accounts with quoted amounts. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PatchInternalPlanBankModel.new(
  state: null,
  failure_code: null,
  started_at: null,
  completed_at: null,
  failed_at: null,
  accounts: null
)
```

