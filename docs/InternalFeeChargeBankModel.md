# CybridApiBank::InternalFeeChargeBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **environment** | **String** | The platform environment. |  |
| **guid** | **String** | Auto-generated unique identifier for the entity. |  |
| **type** | **String** | The type of the entity. |  |
| **created_at** | **Time** | ISO8601 datetime the entity was created at. |  |
| **updated_at** | **Time** | ISO8601 datetime the entity was last updated at. |  |
| **asset** | **String** | The fee amount asset code. |  |
| **amount** | **Integer** | The fee amount in cents. |  |
| **source_account_guid** | **String** | The source account identifier. |  |
| **destination_account_guid** | **String** | The destination account identifier. |  |
| **state** | **String** | The state of the entity. |  |
| **failure_code** | **String** | The failure code if the entity is in a failed state. | [optional] |
| **exchange_order_guid** | **String** | The exchange order identifier. Required when type is platform_assignment. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::InternalFeeChargeBankModel.new(
  environment: null,
  guid: null,
  type: null,
  created_at: null,
  updated_at: null,
  asset: null,
  amount: null,
  source_account_guid: null,
  destination_account_guid: null,
  state: null,
  failure_code: null,
  exchange_order_guid: null
)
```

