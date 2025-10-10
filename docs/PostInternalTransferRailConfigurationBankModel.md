# CybridApiBank::PostInternalTransferRailConfigurationBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of configuration: bank or platform. |  |
| **environment** | **String** | The environment the configuration is associated with. | [optional] |
| **bank_guid** | **String** | The bank identifier that the configuration is associated with. | [optional] |
| **hold_duration** | **Integer** | The amount of time that the transfer funds should be held, in seconds. |  |
| **rail** | **String** | The payment rail. |  |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostInternalTransferRailConfigurationBankModel.new(
  type: null,
  environment: null,
  bank_guid: null,
  hold_duration: null,
  rail: null
)
```

