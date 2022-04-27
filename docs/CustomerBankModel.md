# CybridApiBank::CustomerBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the customer. | [optional] |
| **customer_type** | **String** | The customer&#39;s type. | [optional] |
| **created_at** | **Time** | ISO8601 datetime the customer was created at. | [optional] |

## Example

```ruby
require 'cybrid_api_bank'

instance = CybridApiBank::CustomerBankModel.new(
  guid: null,
  customer_type: null,
  created_at: null
)
```

