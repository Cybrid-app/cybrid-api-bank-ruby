# CybridApiBank::SardineSessionBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the sardine session key. |  |
| **sardine_session_key** | **String** | The session key to initialize the Sardine SDK with. |  |
| **customer_guid** | **String** | The unique identifier for the customer. |  |
| **expires_at** | **Time** | The expiration datetime of the session key. Null if the session key does not expire. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::SardineSessionBankModel.new(
  guid: null,
  sardine_session_key: null,
  customer_guid: null,
  expires_at: null
)
```

