# CybridApiBank::BankSupportedPayoutSymbolsInnerBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol** | **String** | The payout symbol code. | [optional] |
| **country_code** | **String** | The ISO 3166 country 2-Alpha country code of the payout symbol. | [optional] |
| **participants_type** | **String** | The participants type; one of C2C, C2B, B2C, or B2B. | [optional] |
| **route** | **String** | The payout symbol route; one of bank_account or mobile_wallet. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::BankSupportedPayoutSymbolsInnerBankModel.new(
  symbol: null,
  country_code: null,
  participants_type: null,
  route: null
)
```

