# CybridApiBank::InternalActivityReportItemBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The item&#39;s type | [optional] |
| **asset** | **String** | The asset code. | [optional] |
| **pending_amount** | **Integer** | The pending amount in base units of the asset | [optional] |
| **completed_amount** | **Integer** | The completed amount in base units of the asset | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::InternalActivityReportItemBankModel.new(
  type: null,
  asset: null,
  pending_amount: null,
  completed_amount: null
)
```

