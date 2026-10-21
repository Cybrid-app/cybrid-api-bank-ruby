# CybridApiBank::PostPlanBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of product the plan is for. |  |
| **bank_guid** | **String** | The unique identifier for the bank. | [optional] |
| **customer_guid** | **String** | The unique identifier for the customer. | [optional] |
| **source_account** | [**PostPlanSourceAccountBankModel**](PostPlanSourceAccountBankModel.md) |  |  |
| **destination_account** | [**PostPlanDestinationAccountBankModel**](PostPlanDestinationAccountBankModel.md) |  |  |
| **intermediate_accounts** | [**Array&lt;PostPlanIntermediateAccountsInnerBankModel&gt;**](PostPlanIntermediateAccountsInnerBankModel.md) | Accounts to disambiguate a multi-stage plan when more than one account of the same asset is eligible for a stage. | [optional] |
| **travel_rule_info** | [**PostPlanTravelRuleInfoBankModel**](PostPlanTravelRuleInfoBankModel.md) |  | [optional] |
| **purpose_of_transaction** | **String** | The purpose of transaction for the plan. | [optional] |
| **labels** | **Array&lt;String&gt;** | The labels associated with the plan. | [optional] |
| **supporting_documents** | [**Array&lt;PostSupportingDocumentBankModel&gt;**](PostSupportingDocumentBankModel.md) | Supporting documents to attach to the plan. Optional when type is remittance or type is invoice_pay. | [optional] |
| **fees** | [**Array&lt;PostFeeBankModel&gt;**](PostFeeBankModel.md) | Custom fees charged on the bank side of the plan, replacing the bank&#39;s configured pricing for it; Cybrid&#39;s platform fee still applies. Omit to use the configured pricing, or send an empty array to charge no bank fee. A fixed fee is denominated in the source account asset, which can be a cryptocurrency for payout-family plans. Not available to customers. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostPlanBankModel.new(
  type: null,
  bank_guid: null,
  customer_guid: null,
  source_account: null,
  destination_account: null,
  intermediate_accounts: null,
  travel_rule_info: null,
  purpose_of_transaction: null,
  labels: null,
  supporting_documents: null,
  fees: null
)
```

