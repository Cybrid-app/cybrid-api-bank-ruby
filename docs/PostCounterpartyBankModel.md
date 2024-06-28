# CybridApiBank::PostCounterpartyBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The counterparty&#39;s type. |  |
| **customer_guid** | **String** | The owning customer&#39;s identifier. | [optional] |
| **name** | [**PostCounterpartyNameBankModel**](PostCounterpartyNameBankModel.md) |  | [optional] |
| **address** | [**PostCustomerAddressBankModel**](PostCustomerAddressBankModel.md) |  | [optional] |
| **date_of_birth** | **Date** | The counterparty&#39;s date of birth. | [optional] |
| **labels** | **Array&lt;String&gt;** | The labels associated with the counterparty. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostCounterpartyBankModel.new(
  type: null,
  customer_guid: null,
  name: null,
  address: null,
  date_of_birth: null,
  labels: null
)
```

