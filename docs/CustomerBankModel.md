# CybridApiBank::CustomerBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the customer. | [optional] |
| **bank_guid** | **String** | Auto-generated unique identifier for the customer&#39;s bank. | [optional] |
| **type** | **String** | The customer type; one of business or individual. | [optional] |
| **created_at** | **Time** | ISO8601 datetime the record was created at. | [optional] |
| **updated_at** | **Time** | ISO8601 datetime the record was last updated at. | [optional] |
| **state** | **String** | The customer state; one of storing, unverified, verified, rejected, or frozen. | [optional] |
| **name** | [**CustomerNameBankModel**](CustomerNameBankModel.md) |  | [optional] |
| **address** | [**CustomerAddressBankModel**](CustomerAddressBankModel.md) |  | [optional] |
| **aliases** | [**Array&lt;CustomerAliasesInnerBankModel&gt;**](CustomerAliasesInnerBankModel.md) | The customer&#39;s aliases. Only available for GET operations when &#39;include_pii&#39; is set. | [optional] |
| **website** | **String** | The customer&#39;s website. Only available for GET operations when &#39;include_pii&#39; is set. | [optional] |
| **date_of_birth** | **Date** | The customer&#39;s DOB. Only available for GET operations when &#39;include_pii&#39; is set. | [optional] |
| **phone_number** | **String** | The customer&#39;s phone number. Only available for GET operations when &#39;include_pii&#39; is set. | [optional] |
| **email_address** | **String** | The customer&#39;s email address. Only available for GET operations when &#39;include_pii&#39; is set. | [optional] |
| **labels** | **Array&lt;String&gt;** | The labels associated with the customer. | [optional] |
| **compliance_decisions** | [**Array&lt;ComplianceDecisionBankModel&gt;**](ComplianceDecisionBankModel.md) | The compliance decisions associated with the customer. | [optional] |
| **identification_numbers** | [**Array&lt;IdentificationNumberBankModel&gt;**](IdentificationNumberBankModel.md) | The customer&#39;s identification numbers. Only available for GET operations when &#39;include_pii&#39; is set and bank has access. | [optional] |
| **activity_limits** | [**Array&lt;ActivityLimitBankModel&gt;**](ActivityLimitBankModel.md) | The asset limits associated with the customer. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::CustomerBankModel.new(
  guid: null,
  bank_guid: null,
  type: null,
  created_at: null,
  updated_at: null,
  state: null,
  name: null,
  address: null,
  aliases: null,
  website: null,
  date_of_birth: null,
  phone_number: null,
  email_address: null,
  labels: null,
  compliance_decisions: null,
  identification_numbers: null,
  activity_limits: null
)
```

