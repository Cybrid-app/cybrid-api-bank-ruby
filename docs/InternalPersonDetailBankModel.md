# CybridApiBank::InternalPersonDetailBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the entity. |  |
| **created_at** | **Time** | ISO8601 datetime the entity was created at. |  |
| **updated_at** | **Time** | ISO8601 datetime the entity was last updated at. |  |
| **person_guid** | **String** | The person identifier. |  |
| **revision** | **Integer** | The revision number. |  |
| **state** | **String** | The state of the entity. |  |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::InternalPersonDetailBankModel.new(
  guid: null,
  created_at: null,
  updated_at: null,
  person_guid: null,
  revision: null,
  state: null
)
```

