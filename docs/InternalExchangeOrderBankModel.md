# CybridApiBank::InternalExchangeOrderBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **environment** | **String** | The platform environment. |  |
| **guid** | **String** | Auto-generated unique identifier for the entity. |  |
| **type** | **String** | The type of the entity. |  |
| **created_at** | **Time** | ISO8601 datetime the entity was created at. |  |
| **updated_at** | **Time** | ISO8601 datetime the entity was last updated at. |  |
| **exchange_guid** | **String** | The exchange identifier. |  |
| **trade_guids** | **Array&lt;String&gt;** | The set of included trade guids. |  |
| **symbol** | **String** | The symbol code representing the trading pair. |  |
| **side** | **String** | The direction for order. |  |
| **deliver_asset** | **String** | The deliver amount asset code. |  |
| **receive_asset** | **String** | The receive amount asset code. |  |
| **requested_deliver_amount** | **Integer** | The requested deliver amount in cents. |  |
| **requested_receive_amount** | **Integer** | The requested receive amount in cents. |  |
| **executed_deliver_amount** | **Integer** | The executed deliver amount in cents. | [optional] |
| **executed_receive_amount** | **Integer** | The executed receive amount in cents. | [optional] |
| **unassigned_deliver_amount** | **Integer** | The unassigned deliver amount in cents. | [optional] |
| **unassigned_receive_amount** | **Integer** | The unassigned receive amount in cents. | [optional] |
| **source_payable_account_guid** | **String** | The source payable account identifier. |  |
| **destination_payable_account_guid** | **String** | The destination payable account identifier. |  |
| **source_receivable_account_guid** | **String** | The source receivable account identifier. |  |
| **destination_receivable_account_guid** | **String** | The destination receivable account identifier. |  |
| **state** | **String** | The state of the entity. |  |
| **failure_code** | **String** | The failure code if the entity is in a failed state. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::InternalExchangeOrderBankModel.new(
  environment: null,
  guid: null,
  type: null,
  created_at: null,
  updated_at: null,
  exchange_guid: null,
  trade_guids: null,
  symbol: null,
  side: null,
  deliver_asset: null,
  receive_asset: null,
  requested_deliver_amount: null,
  requested_receive_amount: null,
  executed_deliver_amount: null,
  executed_receive_amount: null,
  unassigned_deliver_amount: null,
  unassigned_receive_amount: null,
  source_payable_account_guid: null,
  destination_payable_account_guid: null,
  source_receivable_account_guid: null,
  destination_receivable_account_guid: null,
  state: null,
  failure_code: null
)
```

