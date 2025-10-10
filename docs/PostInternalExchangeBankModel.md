# CybridApiBank::PostInternalExchangeBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the exchange. |  |
| **provider** | **String** | The provider for the exchange. |  |
| **environment** | **String** | The environment that the exchange is operating in. |  |
| **guid** | **String** | The unique identifier for the exchange. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostInternalExchangeBankModel.new(
  name: null,
  provider: null,
  environment: null,
  guid: null
)
```

