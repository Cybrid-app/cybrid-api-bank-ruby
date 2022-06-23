# CybridApiBank::ExchangeSettlementPaymentOrderBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the exchange settlement payment order. | [optional] |
| **exchange_settlement_obligation_guid** | **String** | The identifier of the exchange settlement obligation that this payment is associated with. | [optional] |
| **sequence_number** | **Integer** | The sequence number of the payment order | [optional] |
| **payment_amount** | **Integer** | The amount expected to be received as part of this payment. | [optional] |
| **internal_account_guid** | **String** | The identifier of the internal account that is expected to originate the payment. | [optional] |
| **internal_account_type** | **String** | The type of the internal account that is expected to originate the payment. | [optional] |
| **external_account_guid** | **String** | The identifier of the external account that is expected to receive the payment. | [optional] |
| **external_account_type** | **String** | The type of the external account that is expected to receive the payment. | [optional] |
| **state** | **String** | The exchange settlement payment order&#39;s state | [optional] |
| **created_at** | **Time** | ISO8601 datetime the exchange settlement payment order was created at. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::ExchangeSettlementPaymentOrderBankModel.new(
  guid: null,
  exchange_settlement_obligation_guid: null,
  sequence_number: null,
  payment_amount: null,
  internal_account_guid: null,
  internal_account_type: null,
  external_account_guid: null,
  external_account_type: null,
  state: null,
  created_at: null
)
```

