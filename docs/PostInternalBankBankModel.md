# CybridApiBank::PostInternalBankBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization_guid** | **String** | The organization GUID for which to create the bank. |  |
| **type** | **String** | The type of bank. |  |
| **name** | **String** | The name of the bank. |  |
| **supported_trading_symbols** | **Array&lt;String&gt;** | The trading symbols supported by the bank. |  |
| **supported_payout_symbols** | [**Array&lt;PostSupportedPayoutSymbolsBankModel&gt;**](PostSupportedPayoutSymbolsBankModel.md) | The payout symbols supported by the bank. | [optional] |
| **supported_fiat_account_assets** | **Array&lt;String&gt;** | The fiat account assets supported by the bank. |  |
| **supported_country_codes** | **Array&lt;String&gt;** | The country codes supported by the bank. |  |
| **features** | **Array&lt;String&gt;** | The features supported by the bank. |  |
| **cors_allowed_origins** | **Array&lt;String&gt;** | The list of allowed CORS origin URIs. | [optional] |
| **persona_theme_id** | **String** | The persona theme ID for the bank. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostInternalBankBankModel.new(
  organization_guid: null,
  type: null,
  name: null,
  supported_trading_symbols: null,
  supported_payout_symbols: null,
  supported_fiat_account_assets: null,
  supported_country_codes: null,
  features: null,
  cors_allowed_origins: null,
  persona_theme_id: null
)
```

