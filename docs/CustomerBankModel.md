# CybridApiBank::CustomerBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the customer. | [optional] |
| **bank_guid** | **String** | Auto-generated unique identifier for the customer&#39;s bank. | [optional] |
| **type** | **String** | The customer&#39;s type. | [optional] |
| **created_at** | **Time** | ISO8601 datetime the customer was created at. | [optional] |
| **state** | **String** | The customer&#39;s state. | [optional] |
| **name** | [**CustomerNameBankModel**](CustomerNameBankModel.md) |  | [optional] |
| **address** | [**CustomerAddressBankModel**](CustomerAddressBankModel.md) |  | [optional] |
| **date_of_birth** | **Date** | The customer&#39;s DOB. Only available for GET operations when &#39;include_pii&#39; is set. | [optional] |
| **phone_number** | **String** | The customer&#39;s phone number. Only available for GET operations when &#39;include_pii&#39; is set. | [optional] |
| **email_address** | **String** | The customer&#39;s email address. Only available for GET operations when &#39;include_pii&#39; is set. | [optional] |
| **labels** | **Array&lt;String&gt;** | The labels associated with the customer. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::CustomerBankModel.new(
  guid: null,
  bank_guid: null,
  type: null,
  created_at: null,
  state: null,
  name: null,
  address: null,
  date_of_birth: null,
  phone_number: null,
  email_address: null,
  labels: null
)
```

