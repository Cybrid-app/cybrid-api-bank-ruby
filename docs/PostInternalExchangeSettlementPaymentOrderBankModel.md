# CybridApiBank::PostInternalExchangeSettlementPaymentOrderBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **exchange_settlement_guid** | **String** | The identifier of the exchange settlement that this payment is associated with. |  |
| **exchange_settlement_obligation_guid** | **String** | The identifier of the exchange settlement obligation that this payment is associated with. |  |
| **sequence_number** | **Integer** | The sequence number of the payment order |  |
| **payment_amount** | **Integer** | The amount expected to be received as part of this payment. |  |
| **network_fee** | **Integer** | The network fee for the payment. Only required for crypto payments. | [optional] |
| **expected_state** | **String** | The expected state of the underlying money transfer for the payment order (sandbox only) | [optional] |
| **internal_account_guid** | **String** | The identifier of the internal account that is expected to originate the payment. |  |
| **internal_account_type** | **String** | The type of the internal account that is expected to originate the payment. |  |
| **external_account_guid** | **String** | The identifier of the external account that is expected to receive the payment. |  |
| **external_account_type** | **String** | The type of the external account that is expected to receive the payment. |  |
| **network_fee_account_guid** | **String** | The identifier of the liability network fee account that has the network fee. | [optional] |
| **internal_network_fee_wallet_guid** | **String** | The identifier of the cash network fee account that has the network fee. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostInternalExchangeSettlementPaymentOrderBankModel.new(
  exchange_settlement_guid: null,
  exchange_settlement_obligation_guid: null,
  sequence_number: null,
  payment_amount: null,
  network_fee: null,
  expected_state: null,
  internal_account_guid: null,
  internal_account_type: null,
  external_account_guid: null,
  external_account_type: null,
  network_fee_account_guid: null,
  internal_network_fee_wallet_guid: null
)
```

