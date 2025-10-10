# CybridApiBank::PostInternalBankAccountServiceBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **environment** | **String** | The account environment. |  |
| **type** | **String** | The type of bank account service. |  |
| **name** | **String** | The name of the bank account service. |  |
| **provider_id** | **String** | The id of the account at the third-party service. | [optional] |
| **guid** | **String** | The unique identifier for the bank account service. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostInternalBankAccountServiceBankModel.new(
  environment: null,
  type: null,
  name: null,
  provider_id: null,
  guid: null
)
```

