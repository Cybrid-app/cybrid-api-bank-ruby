# CybridApiBank::PostCounterpartyBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The counterparty&#39;s type. |  |
| **customer_guid** | **String** | The owning customer&#39;s identifier. | [optional] |
| **name** | [**PostCounterpartyNameBankModel**](PostCounterpartyNameBankModel.md) |  | [optional] |
| **address** | [**PostCounterpartyAddressBankModel**](PostCounterpartyAddressBankModel.md) |  | [optional] |
| **aliases** | [**Array&lt;PostCounterpartyAliasesInnerBankModel&gt;**](PostCounterpartyAliasesInnerBankModel.md) | The counterparty&#39;s aliases. | [optional] |
| **date_of_birth** | **Date** | The counterparty&#39;s date of birth; optional for individual counterparties.. | [optional] |
| **labels** | **Array&lt;String&gt;** | The labels associated with the counterparty. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostCounterpartyBankModel.new(
  type: null,
  customer_guid: null,
  name: null,
  address: null,
  aliases: null,
  date_of_birth: null,
  labels: null
)
```

