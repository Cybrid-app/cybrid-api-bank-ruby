# CybridApiBank::InternalPayoutSymbolConfigurationBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the configuration. | [optional] |
| **type** | **String** | The type of symbol configuration: bank or platform. | [optional] |
| **environment** | **String** | The environment the configuration is associated with. | [optional] |
| **bank_guid** | **String** | The bank identifier that the configuration is associated with. | [optional] |
| **enabled** | **Boolean** | Flag indicating if the symbol is enabled for payout on the platform. | [optional] |
| **symbol** | **String** | The symbol code of the configuration. | [optional] |
| **country_code** | **String** | The ISO 3166 2-Alpha country code. | [optional] |
| **participants_type** | **String** | The type of participants the symbol is enabled for. | [optional] |
| **route** | **String** | The route the symbol is enabled for. | [optional] |
| **created_at** | **Time** | ISO8601 datetime the record was created at. | [optional] |
| **updated_at** | **Time** | ISO8601 datetime the record was last updated at. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::InternalPayoutSymbolConfigurationBankModel.new(
  guid: null,
  type: null,
  environment: null,
  bank_guid: null,
  enabled: null,
  symbol: null,
  country_code: null,
  participants_type: null,
  route: null,
  created_at: null,
  updated_at: null
)
```

