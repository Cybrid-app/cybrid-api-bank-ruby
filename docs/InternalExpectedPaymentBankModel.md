# CybridApiBank::InternalExpectedPaymentBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the exchange settlement expected payment. | [optional] |
| **payment_kind** | **String** | The kind of expected payment. | [optional] |
| **environment** | **String** | The environment that the payment is expected in. | [optional] |
| **exchange_settlement_obligation_guid** | **String** | The identifier of the exchange settlement obligation that this payment is associated with. | [optional] |
| **credit_account_guid** | **String** | The identifier of the platform account that this payment is associated with. | [optional] |
| **settlement_account_guid** | **String** | The identifier of the settlement account that this payment is made available in. | [optional] |
| **nonce** | **Integer** | The nonce of the expected payment | [optional] |
| **payment_amount** | **Integer** | The amount expected to be received as part of this payment. | [optional] |
| **internal_account_guid** | **String** | The identifier of the internal account that is expected to originate the payment. | [optional] |
| **internal_account_type** | **String** | The type of the internal account that is expected to originate the payment. | [optional] |
| **state** | **String** | The exchange settlement expected payment&#39;s state | [optional] |
| **created_at** | **Time** | ISO8601 datetime the record was created at. | [optional] |
| **updated_at** | **Time** | ISO8601 datetime the record was last updated at. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::InternalExpectedPaymentBankModel.new(
  guid: null,
  payment_kind: null,
  environment: null,
  exchange_settlement_obligation_guid: null,
  credit_account_guid: null,
  settlement_account_guid: null,
  nonce: null,
  payment_amount: null,
  internal_account_guid: null,
  internal_account_type: null,
  state: null,
  created_at: null,
  updated_at: null
)
```

