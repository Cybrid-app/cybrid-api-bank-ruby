# CybridApiBank::PatchBankBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the bank. | [optional] |
| **supported_trading_symbols** | **Array&lt;String&gt;** | The trading symbols supported by the bank. | [optional] |
| **supported_payout_symbols** | **Array&lt;Object&gt;** | The payout symbols supported by the bank. This is not yet supported and should be nil or empty. | [optional] |
| **cors_allowed_origins** | **Array&lt;String&gt;** | The list of allowed CORS origin URIs. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PatchBankBankModel.new(
  name: null,
  supported_trading_symbols: null,
  supported_payout_symbols: null,
  cors_allowed_origins: null
)
```

