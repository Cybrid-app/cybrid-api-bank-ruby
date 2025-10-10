# CybridApiBank::PatchInternalExchangeOrderBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider_order_guid** | **String** | The unique identifier for the order in the provider system. | [optional] |
| **unassigned_receive_amount** | **Integer** | The unassigned receive amount in base units of the currency. | [optional] |
| **unassigned_deliver_amount** | **Integer** | The unassigned deliver in base units of the currency. | [optional] |
| **executed_receive_amount** | **Integer** | The executed receive amount in base units of the currency. | [optional] |
| **executed_deliver_amount** | **Integer** | The executed deliver in base units of the currency. | [optional] |
| **state** | **String** | The state of the resource. | [optional] |
| **pending_at** | **Time** | The timestamp when the order was set to pending. | [optional] |
| **failed_at** | **Time** | The timestamp when the order was set to failed. | [optional] |
| **completed_at** | **Time** | The timestamp when the order was set to completed. | [optional] |
| **failure_code** | **String** | The error message in case of failure. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PatchInternalExchangeOrderBankModel.new(
  provider_order_guid: null,
  unassigned_receive_amount: null,
  unassigned_deliver_amount: null,
  executed_receive_amount: null,
  executed_deliver_amount: null,
  state: null,
  pending_at: null,
  failed_at: null,
  completed_at: null,
  failure_code: null
)
```

