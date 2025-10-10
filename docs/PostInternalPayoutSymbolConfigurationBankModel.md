# CybridApiBank::PostInternalPayoutSymbolConfigurationBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The payout symbol configuration type. |  |
| **environment** | **String** | The environment the configuration is associated with. | [optional] |
| **bank_guid** | **String** | The bank identifier that the configuration is associated with. | [optional] |
| **enabled** | **Boolean** | Flag indicating if the symbol is enabled for payout on the platform. |  |
| **symbol** | **String** | The symbol code of the configuration. |  |
| **country_code** | **String** | The ISO 3166 2-Alpha country code. |  |
| **participants_type** | **String** | The type of participants the symbol is enabled for. |  |
| **route** | **String** | The route the symbol is enabled for. |  |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostInternalPayoutSymbolConfigurationBankModel.new(
  type: null,
  environment: null,
  bank_guid: null,
  enabled: null,
  symbol: null,
  country_code: null,
  participants_type: null,
  route: null
)
```

