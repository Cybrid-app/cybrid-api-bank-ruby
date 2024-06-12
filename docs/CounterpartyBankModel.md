# CybridApiBank::CounterpartyBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the counterparty. | [optional] |
| **type** | **String** | The counterparty type; one of business or individual. | [optional] |
| **bank_guid** | **String** | Auto-generated unique identifier for the counterparty&#39;s bank. | [optional] |
| **customer_guid** | **String** | Auto-generated unique identifier for the counterparty&#39;s customer. | [optional] |
| **created_at** | **Time** | ISO8601 datetime the record was created at. | [optional] |
| **updated_at** | **Time** | ISO8601 datetime the record was last updated at. | [optional] |
| **state** | **String** | The counterparty state; one of storing, unverified, verified, or rejected. | [optional] |
| **name** | [**CounterpartyNameBankModel**](CounterpartyNameBankModel.md) |  | [optional] |
| **address** | [**CounterpartyAddressBankModel**](CounterpartyAddressBankModel.md) |  | [optional] |
| **aliases** | [**Array&lt;CounterpartyAliasesInnerBankModel&gt;**](CounterpartyAliasesInnerBankModel.md) | The counterparty&#39;s aliases. Only available for GET operations when &#39;include_pii&#39; is set. | [optional] |
| **date_of_birth** | **Date** | The counterparty&#39;s DOB. Only available for GET operations when &#39;include_pii&#39; is set. | [optional] |
| **labels** | **Array&lt;String&gt;** | The labels associated with the counterparty. | [optional] |
| **compliance_decisions** | [**Array&lt;ComplianceDecisionBankModel&gt;**](ComplianceDecisionBankModel.md) | The compliance decisions associated with the counterparty. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::CounterpartyBankModel.new(
  guid: null,
  type: null,
  bank_guid: null,
  customer_guid: null,
  created_at: null,
  updated_at: null,
  state: null,
  name: null,
  address: null,
  aliases: null,
  date_of_birth: null,
  labels: null,
  compliance_decisions: null
)
```

