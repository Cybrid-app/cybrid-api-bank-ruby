# CybridApiBank::CustomerBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the customer. | [optional] |
| **bank_guid** | **String** | Auto-generated unique identifier for the customer&#39;s bank. | [optional] |
| **type** | **String** | The customer&#39;s type. | [optional] |
| **created_at** | **Time** | ISO8601 datetime the customer was created at. | [optional] |
| **state** | **String** | The customer&#39;s state. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::CustomerBankModel.new(
  guid: null,
  bank_guid: null,
  type: null,
  created_at: null,
  state: null
)
```

