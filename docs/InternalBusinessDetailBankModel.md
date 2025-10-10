# CybridApiBank::InternalBusinessDetailBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the entity. |  |
| **created_at** | **Time** | ISO8601 datetime the entity was created at. |  |
| **business_guid** | **String** | The business identifier. |  |
| **revision** | **Integer** | The revision number of the entity. |  |
| **state** | **String** | The state of the entity. |  |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::InternalBusinessDetailBankModel.new(
  guid: null,
  created_at: null,
  business_guid: null,
  revision: null,
  state: null
)
```

