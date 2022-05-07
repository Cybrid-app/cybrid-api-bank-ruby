# CybridApiBank::PostTradingConfigurationBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset** | **String** | The asset code. |  |
| **fees** | [**Array&lt;PostFeeBankModel&gt;**](PostFeeBankModel.md) | The fees associated with the configuration |  |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostTradingConfigurationBankModel.new(
  asset: null,
  fees: null
)
```

