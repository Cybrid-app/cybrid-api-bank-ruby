# CybridApiBank::PostPlanBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of product the plan is for. |  |
| **bank_guid** | **String** | The unique identifier for the bank. | [optional] |
| **customer_guid** | **String** | The unique identifier for the customer. | [optional] |
| **source_account** | [**PostPlanSourceAccountBankModel**](PostPlanSourceAccountBankModel.md) |  |  |
| **destination_account** | [**PostPlanDestinationAccountBankModel**](PostPlanDestinationAccountBankModel.md) |  |  |
| **travel_rule_info** | [**PostPlanTravelRuleInfoBankModel**](PostPlanTravelRuleInfoBankModel.md) |  | [optional] |
| **purpose_of_transaction** | **String** | The purpose of transaction for the plan. | [optional] |
| **supporting_documents** | [**Array&lt;PostSupportingDocumentBankModel&gt;**](PostSupportingDocumentBankModel.md) | Supporting documents to attach to the plan. Only valid for remittance plans; requests that include this field on other plan types are rejected. Optional when type is remittance. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostPlanBankModel.new(
  type: null,
  bank_guid: null,
  customer_guid: null,
  source_account: null,
  destination_account: null,
  travel_rule_info: null,
  purpose_of_transaction: null,
  supporting_documents: null
)
```

