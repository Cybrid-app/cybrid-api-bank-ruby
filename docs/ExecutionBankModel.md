# CybridApiBank::ExecutionBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the quote. |  |
| **type** | **String** | The type of product the plan is for; one of remittance. |  |
| **plan_guid** | **String** | The unique identifier for the plan. |  |
| **bank_guid** | **String** | The unique identifier for the bank. | [optional] |
| **customer_guid** | **String** | The unique identifier for the customer. | [optional] |
| **created_at** | **Time** | ISO8601 datetime the record was created at. |  |
| **updated_at** | **Time** | ISO8601 datetime the record was last updated at. |  |
| **state** | **String** | The state of the execution; one of storing, executing, completed, or failed. |  |
| **failure_code** | **String** | The failure code for failed executions. | [optional] |
| **source_account** | [**AccountAssociationBankModel**](AccountAssociationBankModel.md) |  |  |
| **destination_account** | [**AccountAssociationBankModel**](AccountAssociationBankModel.md) |  |  |
| **stages** | [**Array&lt;StageBankModel&gt;**](StageBankModel.md) | The stages of the execution. |  |
| **fees** | [**Array&lt;FeeAssociationBankModel&gt;**](FeeAssociationBankModel.md) | The fees associated with the execution. |  |
| **travel_rule_info** | [**ExecutionTravelRuleInfoBankModel**](ExecutionTravelRuleInfoBankModel.md) |  |  |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::ExecutionBankModel.new(
  guid: null,
  type: null,
  plan_guid: null,
  bank_guid: null,
  customer_guid: null,
  created_at: null,
  updated_at: null,
  state: null,
  failure_code: null,
  source_account: null,
  destination_account: null,
  stages: null,
  fees: null,
  travel_rule_info: null
)
```

