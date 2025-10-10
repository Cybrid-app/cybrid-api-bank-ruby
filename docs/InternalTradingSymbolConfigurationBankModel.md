# CybridApiBank::InternalTradingSymbolConfigurationBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the configuration. | [optional] |
| **type** | **String** | The type of symbol configuration: bank or platform. | [optional] |
| **environment** | **String** | The environment the configuration is associated with. | [optional] |
| **bank_guid** | **String** | The bank identifier that the configuration is associated with. | [optional] |
| **enabled** | **Boolean** | Flag indicating if the symbol is enabled for trading on the platform. | [optional] |
| **symbol** | **String** | The symbol code of the configuration. | [optional] |
| **execution_mode** | **String** | The quote execution mode of the configuration. | [optional] |
| **created_at** | **Time** | ISO8601 datetime the record was created at. | [optional] |
| **updated_at** | **Time** | ISO8601 datetime the record was last updated at. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::InternalTradingSymbolConfigurationBankModel.new(
  guid: null,
  type: null,
  environment: null,
  bank_guid: null,
  enabled: null,
  symbol: null,
  execution_mode: null,
  created_at: null,
  updated_at: null
)
```

