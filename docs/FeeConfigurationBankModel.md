# CybridApiBank::FeeConfigurationBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the exchange. | [optional] |
| **bank_guid** | **String** | The bank identifier. | [optional] |
| **product_type** | **String** | The type of product being configured. | [optional] |
| **asset** | **String** | The asset code. | [optional] |
| **created_at** | **Time** | ISO8601 datetime the bank was created at. | [optional] |
| **fees** | [**Array&lt;FeeBankModel&gt;**](FeeBankModel.md) | The fees associated with the configuration | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::FeeConfigurationBankModel.new(
  guid: null,
  bank_guid: null,
  product_type: null,
  asset: null,
  created_at: null,
  fees: null
)
```

