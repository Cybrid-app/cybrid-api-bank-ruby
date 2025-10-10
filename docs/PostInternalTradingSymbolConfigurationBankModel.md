# CybridApiBank::PostInternalTradingSymbolConfigurationBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of the configuration. |  |
| **environment** | **String** | The environment for the configuration. Required when type is platform. | [optional] |
| **execution_mode** | **String** | The execution mode for the configuration Required when type is platform. Optional when type is bank. | [optional] |
| **bank_guid** | **String** | The bank_guid for the configuration. Required when type is bank. | [optional] |
| **enabled** | **Boolean** | Flag indicating if the symbol is enabled |  |
| **symbol** | **String** | The trading symbol being configured |  |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostInternalTradingSymbolConfigurationBankModel.new(
  type: null,
  environment: null,
  execution_mode: null,
  bank_guid: null,
  enabled: null,
  symbol: null
)
```

