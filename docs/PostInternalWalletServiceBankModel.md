# CybridApiBank::PostInternalWalletServiceBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **environment** | **String** | The account environment. |  |
| **type** | **String** | The type of wallet service. |  |
| **name** | **String** | The name of the wallet service. |  |
| **provider_id** | **String** | The id of the account at the third-party service. | [optional] |
| **guid** | **String** | The unique identifier for the wallet service. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostInternalWalletServiceBankModel.new(
  environment: null,
  type: null,
  name: null,
  provider_id: null,
  guid: null
)
```

