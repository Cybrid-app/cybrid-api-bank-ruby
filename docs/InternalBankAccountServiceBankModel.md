# CybridApiBank::InternalBankAccountServiceBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the bank account service. | [optional] |
| **type** | **String** | The service type. | [optional] |
| **name** | **String** | The name of the service. | [optional] |
| **environment** | **String** | The environment that the service is operating in. | [optional] |
| **created_at** | **Time** | ISO8601 datetime the record was created at. | [optional] |
| **updated_at** | **Time** | ISO8601 datetime the record was last updated at. | [optional] |
| **state** | **String** | The state of the service. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::InternalBankAccountServiceBankModel.new(
  guid: null,
  type: null,
  name: null,
  environment: null,
  created_at: null,
  updated_at: null,
  state: null
)
```

