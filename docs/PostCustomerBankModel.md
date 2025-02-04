# CybridApiBank::PostCustomerBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of customer. |  |
| **address** | [**PostCustomerAddressBankModel**](PostCustomerAddressBankModel.md) |  | [optional] |
| **phone_number** | **String** | The customer&#39;s phone number. | [optional] |
| **email_address** | **String** | The customer&#39;s email address. | [optional] |
| **identification_numbers** | [**Array&lt;PostIdentificationNumberBankModel&gt;**](PostIdentificationNumberBankModel.md) | The customer&#39;s identification numbers. | [optional] |
| **name** | [**PostCustomerNameBankModel**](PostCustomerNameBankModel.md) |  | [optional] |
| **date_of_birth** | **Date** | The customer&#39;s date of birth. Optional when type is individual. | [optional] |
| **aliases** | [**Array&lt;PostCustomerAliasesInnerBankModel&gt;**](PostCustomerAliasesInnerBankModel.md) | The aliases of the customer. Optional when type is business. | [optional] |
| **website** | **String** | The customer&#39;s website. Optional when type is business. | [optional] |
| **labels** | **Array&lt;String&gt;** | The labels associated with the customer. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostCustomerBankModel.new(
  type: null,
  address: null,
  phone_number: null,
  email_address: null,
  identification_numbers: null,
  name: null,
  date_of_birth: null,
  aliases: null,
  website: null,
  labels: null
)
```

