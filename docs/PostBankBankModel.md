# CybridApiBank::PostBankBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The bank&#39;s name. |  |
| **type** | **String** | The bank&#39;s type. At present, only **sandbox** is supported. |  |
| **supported_trading_symbols** | **Array&lt;String&gt;** | The bank&#39;s list of supported trading symbols. |  |
| **features** | **Array&lt;String&gt;** | The bank&#39;s enabled features. |  |
| **supported_fiat_account_assets** | **Array&lt;String&gt;** | The bank&#39;s list of supported fiat assets. |  |
| **supported_country_codes** | **Array&lt;String&gt;** | The bank&#39;s list of supported country codes. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostBankBankModel.new(
  name: null,
  type: null,
  supported_trading_symbols: null,
  features: null,
  supported_fiat_account_assets: null,
  supported_country_codes: null
)
```

