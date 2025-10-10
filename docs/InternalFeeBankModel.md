# CybridApiBank::InternalFeeBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The fee&#39;s type | [optional] |
| **spread_fee** | **Integer** | The percentage amount, in basis points, to apply when charging a fee. | [optional] |
| **fixed_fee** | **Integer** | The fixed amount, in the currency of the parent trading configuration, to apply when charging a fee. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::InternalFeeBankModel.new(
  type: null,
  spread_fee: null,
  fixed_fee: null
)
```

