# CybridApiBank::InternalPostFeeConfigurationBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of configuration. |  |
| **product_type** | **String** | The type of product being configured. |  |
| **asset** | **String** | The asset code. |  |
| **counter_asset** | **String** | The asset code. | [optional] |
| **fees** | [**Array&lt;PostFeeBankModel&gt;**](PostFeeBankModel.md) | The fees associated with the configuration |  |
| **bank_guid** | **String** | The bank identifier that the configuration is associated with. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::InternalPostFeeConfigurationBankModel.new(
  type: null,
  product_type: null,
  asset: null,
  counter_asset: null,
  fees: null,
  bank_guid: null
)
```

