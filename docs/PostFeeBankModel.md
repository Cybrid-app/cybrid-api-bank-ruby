# CybridApiBank::PostFeeBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The fee&#39;s type |  |
| **spread_fee** | **Integer** | The percentage amount, in basis points, to apply when charging a fee. Required when type is spread. | [optional] |
| **fixed_fee** | **Integer** | The fixed amount to apply when charging a fee; for trades, the fiat asset is used. Required when type is fixed. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostFeeBankModel.new(
  type: null,
  spread_fee: null,
  fixed_fee: null
)
```

