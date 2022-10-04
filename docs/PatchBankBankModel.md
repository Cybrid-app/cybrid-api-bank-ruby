# CybridApiBank::PatchBankBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The bank&#39;s name. | [optional] |
| **supported_trading_symbols** | **Array&lt;String&gt;** | The bank&#39;s list of supported trading symbols. | [optional] |
| **supported_fiat_account_assets** | **Array&lt;String&gt;** | The bank&#39;s list of supported fiat assets. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PatchBankBankModel.new(
  name: null,
  supported_trading_symbols: null,
  supported_fiat_account_assets: null
)
```

