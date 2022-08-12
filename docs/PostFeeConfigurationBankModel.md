# CybridApiBank::PostFeeConfigurationBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_type** | **String** | The type of product being configured. |  |
| **asset** | **String** | The asset code. |  |
| **fees** | [**Array&lt;PostFeeBankModel&gt;**](PostFeeBankModel.md) | The fees associated with the configuration |  |
| **product_provider** | **String** | The provider for the product being configured. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostFeeConfigurationBankModel.new(
  product_type: null,
  asset: null,
  fees: null,
  product_provider: null
)
```

