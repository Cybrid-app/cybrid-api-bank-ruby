# CybridApiBank::PostInternalExpectedPaymentBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_kind** | **String** | The kind of expected payment. |  |
| **nonce** | **Integer** | The sequence number of the expected payment |  |
| **payment_amount** | **Integer** | The amount expected to be received as part of this payment. |  |
| **internal_account_guid** | **String** | The identifier of the internal account that is expected to originate the payment. |  |
| **internal_account_type** | **String** | The type of the internal account that is expected to originate the payment. |  |
| **exchange_settlement_guid** | **String** | The identifier of the exchange settlement that this payment is associated with. | [optional] |
| **exchange_settlement_obligation_guid** | **String** | The identifier of the exchange settlement obligation that this payment is associated with. | [optional] |
| **environment** | **String** | The environment the payment is expeged in. | [optional] |
| **credit_account_guid** | **String** | The identifier of the credit platform account the payment should be credited to. | [optional] |
| **settlement_account_guid** | **String** | The identifier of the settlement cybrid account the funds should be made available in. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostInternalExpectedPaymentBankModel.new(
  payment_kind: null,
  nonce: null,
  payment_amount: null,
  internal_account_guid: null,
  internal_account_type: null,
  exchange_settlement_guid: null,
  exchange_settlement_obligation_guid: null,
  environment: null,
  credit_account_guid: null,
  settlement_account_guid: null
)
```

