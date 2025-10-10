# CybridApiBank::InternalBankBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the bank. |  |
| **organization_guid** | **String** | The organization&#39;s identifier. |  |
| **name** | **String** | The bank&#39;s name. |  |
| **type** | **String** | The bank type; one of sandbox or production. |  |
| **supported_trading_symbols** | **Array&lt;String&gt;** | The bank&#39;s list of supported trading symbols. | [optional] |
| **supported_payout_symbols** | [**Array&lt;BankSupportedPayoutSymbolsInnerBankModel&gt;**](BankSupportedPayoutSymbolsInnerBankModel.md) | The bank&#39;s list of supported payout symbols. | [optional] |
| **supported_fiat_account_assets** | **Array&lt;String&gt;** | The bank&#39;s list of supported fiat symbols. | [optional] |
| **supported_country_codes** | **Array&lt;String&gt;** | The bank&#39;s list of supported country codes. | [optional] |
| **features** | **Array&lt;String&gt;** | The bank&#39;s enabled features. |  |
| **cors_allowed_origins** | **Array&lt;String&gt;** | The bank&#39;s list of CORS allowed origins. | [optional] |
| **persona_theme_id** | **String** | The persona theme ID for the bank. | [optional] |
| **return_code_thresholds** | **Hash&lt;String, Integer&gt;** | The bank&#39;s custom return code thresholds. | [optional] |
| **created_at** | **Time** | ISO8601 datetime the record was created at. |  |
| **updated_at** | **Time** | ISO8601 datetime the record was last updated at. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::InternalBankBankModel.new(
  guid: null,
  organization_guid: null,
  name: null,
  type: null,
  supported_trading_symbols: null,
  supported_payout_symbols: null,
  supported_fiat_account_assets: null,
  supported_country_codes: null,
  features: null,
  cors_allowed_origins: null,
  persona_theme_id: null,
  return_code_thresholds: null,
  created_at: null,
  updated_at: null
)
```

