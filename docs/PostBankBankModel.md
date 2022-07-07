# CybridApiBank::PostBankBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The bank&#39;s name. |  |
| **type** | **String** | The bank&#39;s type. At present, only **sandbox** is supported. |  |
| **supported_trading_symbols** | **Array&lt;String&gt;** | The bank&#39;s list of supported trading symbols. |  |
| **features** | **Array&lt;String&gt;** | The bank&#39;s enabled features. At present, both **attestation_identity_records** and **backstopped_funding_source** must be set. |  |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostBankBankModel.new(
  name: null,
  type: null,
  supported_trading_symbols: null,
  features: null
)
```

