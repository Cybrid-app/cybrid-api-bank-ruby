# CybridApiBank::StageBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | The unique identifier for the stage. |  |
| **type** | **String** | The type of stage; one of payout. |  |
| **state** | **String** | The state of the stage; one of storing, planning, planned, executing, completed, or failed. |  |
| **failure_code** | **String** | The failure code for failed stages. | [optional] |
| **created_at** | **Time** | The ISO8601 datetime the stage was created at. |  |
| **updated_at** | **Time** | The ISO8601 datetime the stage was last updated at. |  |
| **source_account** | [**AccountAssociationBankModel**](AccountAssociationBankModel.md) |  |  |
| **destination_account** | [**AccountAssociationBankModel**](AccountAssociationBankModel.md) |  |  |
| **fees** | [**Array&lt;FeeAssociationBankModel&gt;**](FeeAssociationBankModel.md) | The fees associated with the stage. |  |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::StageBankModel.new(
  guid: null,
  type: null,
  state: null,
  failure_code: null,
  created_at: null,
  updated_at: null,
  source_account: null,
  destination_account: null,
  fees: null
)
```

