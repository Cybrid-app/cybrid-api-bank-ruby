# CybridApiBank::FeeDetailBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of fee; one of bank, platform, or network. |  |
| **asset** | **String** | The asset the fee is denominated in, e.g., USD. |  |
| **amount** | **Integer** | The fee amount in base units of the asset. |  |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::FeeDetailBankModel.new(
  type: null,
  asset: null,
  amount: null
)
```

