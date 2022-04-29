# CybridApiBank::AssetBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The asset type. |  |
| **code** | **String** | The unique code for the asset. |  |
| **name** | **String** | The name of the asset. |  |
| **symbol** | **String** | The currency symbol for the asset. |  |
| **decimals** | **Integer** | The number of decimals for the default unit of the asset. |  |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::AssetBankModel.new(
  type: null,
  code: null,
  name: null,
  symbol: null,
  decimals: null
)
```

