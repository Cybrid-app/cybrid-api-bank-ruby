# CybridApiBank::PostInternalFeeChargeBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **environment** | **String** | The environment for the configuration. |  |
| **type** | **String** | The order type. |  |
| **exchange_order_guid** | **String** | The exchange order guid to generate a fee charge for Required when type is platform_assignment. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostInternalFeeChargeBankModel.new(
  environment: null,
  type: null,
  exchange_order_guid: null
)
```

