# CybridApiBank::PostCustomerBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of customer. |  |
| **name** | [**PostCustomerNameBankModel**](PostCustomerNameBankModel.md) |  | [optional] |
| **address** | [**PostCustomerAddressBankModel**](PostCustomerAddressBankModel.md) |  | [optional] |
| **date_of_birth** | **Date** | The customer&#39;s date of birth. Optional when type is individual. | [optional] |
| **phone_number** | **String** | The customer&#39;s phone number. Optional when type is individual. | [optional] |
| **email_address** | **String** | The customer&#39;s email address. Optional when type is individual. | [optional] |
| **identification_numbers** | [**Array&lt;PostIdentificationNumberBankModel&gt;**](PostIdentificationNumberBankModel.md) | The customer&#39;s identification numbers. Optional when type is individual. | [optional] |
| **labels** | **Array&lt;String&gt;** | The labels associated with the customer. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostCustomerBankModel.new(
  type: null,
  name: null,
  address: null,
  date_of_birth: null,
  phone_number: null,
  email_address: null,
  identification_numbers: null,
  labels: null
)
```

