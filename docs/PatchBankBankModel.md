# CybridApiBank::PatchBankBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The bank&#39;s name. | [optional] |
| **supported_trading_symbols** | **Array&lt;String&gt;** | The bank&#39;s list of supported trading symbols. | [optional] |
| **supported_savings_configuration** | **Hash&lt;String, Array&lt;String&gt;&gt;** | The bank&#39;s list of supported savings asset by provider. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PatchBankBankModel.new(
  name: null,
  supported_trading_symbols: null,
  supported_savings_configuration: null
)
```

