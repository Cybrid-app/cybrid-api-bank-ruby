# CybridApiBank::InternalTransferRailConfigurationBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the configuration. | [optional] |
| **type** | **String** | The type of configuration: bank or platform. | [optional] |
| **environment** | **String** | The environment the configuration is associated with. | [optional] |
| **bank_guid** | **String** | The bank identifier that the configuration is associated with. | [optional] |
| **hold_duration** | **Integer** | The amount of time that the transfer funds should be held, in seconds. | [optional] |
| **rail** | **String** | The payment rail. | [optional] |
| **created_at** | **Time** | ISO8601 datetime the record was created at. | [optional] |
| **updated_at** | **Time** | ISO8601 datetime the record was last updated at. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::InternalTransferRailConfigurationBankModel.new(
  guid: null,
  type: null,
  environment: null,
  bank_guid: null,
  hold_duration: null,
  rail: null,
  created_at: null,
  updated_at: null
)
```

