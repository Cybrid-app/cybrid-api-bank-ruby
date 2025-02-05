# CybridApiBank::PostSupportedPayoutSymbolsBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **primary_asset** | **String** | The primary asset of the payout symbol, e.g., MXN. |  |
| **counter_asset** | **String** | The counter asset of the payout symbol, e.g., USD. |  |
| **country_code** | **String** | The ISO 3166 country 2-Alpha country code is permitted in, e.g., MX. |  |
| **participants_type** | **String** | The participants the symbol is permitted for. |  |
| **route** | **String** | The route the symbol is permitted for. |  |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostSupportedPayoutSymbolsBankModel.new(
  primary_asset: null,
  counter_asset: null,
  country_code: null,
  participants_type: null,
  route: null
)
```

