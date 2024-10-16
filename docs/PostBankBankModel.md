# CybridApiBank::PostBankBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of bank. |  |
| **name** | **String** | The name of the bank. |  |
| **supported_trading_symbols** | **Array&lt;String&gt;** | The trading symbols supported by the bank. |  |
| **supported_fiat_account_assets** | **Array&lt;String&gt;** | The fiat account assets supported by the bank. |  |
| **supported_country_codes** | **Array&lt;String&gt;** | The country codes supported by the bank. |  |
| **features** | **Array&lt;String&gt;** | The features supported by the bank. |  |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostBankBankModel.new(
  type: null,
  name: null,
  supported_trading_symbols: null,
  supported_fiat_account_assets: null,
  supported_country_codes: null,
  features: null
)
```

