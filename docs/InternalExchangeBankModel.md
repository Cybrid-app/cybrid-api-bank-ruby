# CybridApiBank::InternalExchangeBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the exchange. | [optional] |
| **name** | **String** | The name of the exchange. | [optional] |
| **provider** | **String** | The provider for the exchange. | [optional] |
| **environment** | **String** | The environment that the exchange is operating in. | [optional] |
| **created_at** | **Time** | ISO8601 datetime the record was created at. | [optional] |
| **updated_at** | **Time** | ISO8601 datetime the record was last updated at. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::InternalExchangeBankModel.new(
  guid: null,
  name: null,
  provider: null,
  environment: null,
  created_at: null,
  updated_at: null
)
```

