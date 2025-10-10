# CybridApiBank::PatchInternalStageBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **state** | **String** | The state of the stage. |  |
| **failure_code** | **String** | The failure code for the stage, if applicable. | [optional] |
| **completed_at** | **Time** | The timestamp when the stage failed, if applicable. | [optional] |
| **failed_at** | **Time** | The timestamp when the stage failed, if applicable. | [optional] |
| **accounts** | [**Array&lt;PatchInternalAccountAssociationBankModel&gt;**](PatchInternalAccountAssociationBankModel.md) | The accounts associated with the stage. | [optional] |
| **fees** | [**Array&lt;PatchInternalFeeAssociationBankModel&gt;**](PatchInternalFeeAssociationBankModel.md) | The custom fees associated with the stage | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PatchInternalStageBankModel.new(
  state: null,
  failure_code: null,
  completed_at: null,
  failed_at: null,
  accounts: null,
  fees: null
)
```

