# CybridApiBank::PatchBankBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the bank. | [optional] |
| **supported_trading_symbols** | **Array&lt;String&gt;** | The trading symbols supported by the bank. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PatchBankBankModel.new(
  name: null,
  supported_trading_symbols: null
)
```

