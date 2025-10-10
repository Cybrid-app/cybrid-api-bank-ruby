# CybridApiBank::InternalFeeConfigurationBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the configuration. | [optional] |
| **bank_guid** | **String** | The bank identifier. | [optional] |
| **type** | **String** | The type of configuration. | [optional] |
| **product_type** | **String** | The type of product being configured. | [optional] |
| **asset** | **String** | The asset code. | [optional] |
| **counter_asset** | **String** | The counter asset code. | [optional] |
| **created_at** | **Time** | ISO8601 datetime the record was created at. | [optional] |
| **updated_at** | **Time** | ISO8601 datetime the record was last updated at. | [optional] |
| **fees** | [**Array&lt;InternalFeeBankModel&gt;**](InternalFeeBankModel.md) | The fees associated with the configuration | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::InternalFeeConfigurationBankModel.new(
  guid: null,
  bank_guid: null,
  type: null,
  product_type: null,
  asset: null,
  counter_asset: null,
  created_at: null,
  updated_at: null,
  fees: null
)
```

