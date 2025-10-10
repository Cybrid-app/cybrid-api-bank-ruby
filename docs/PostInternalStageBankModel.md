# CybridApiBank::PostInternalStageBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of stage. |  |
| **plan_guid** | **String** | The unique identifier for the  plan. |  |
| **failure_code** | **String** | The failure code for the stage, if applicable. | [optional] |
| **failed_at** | **Time** | The timestamp when the stage failed, if applicable. | [optional] |
| **planned_at** | **Time** | The timestamp when the stage is planned, if applicable. | [optional] |
| **accounts** | [**Array&lt;PostInternalAccountAssociationBankModel&gt;**](PostInternalAccountAssociationBankModel.md) | The accounts associated with the stage. |  |
| **fees** | [**Array&lt;PostInternalFeeAssociationBankModel&gt;**](PostInternalFeeAssociationBankModel.md) | The custom fees associated with the stage |  |
| **stage_index** | **Integer** | The index of the stage within the plan, starting from 0. |  |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostInternalStageBankModel.new(
  type: null,
  plan_guid: null,
  failure_code: null,
  failed_at: null,
  planned_at: null,
  accounts: null,
  fees: null,
  stage_index: null
)
```

