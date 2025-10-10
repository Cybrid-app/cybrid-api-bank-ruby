# CybridApiBank::PatchInternalTransferBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **state** | **String** | The state of the transfer. | [optional] |
| **failure_code** | **String** | The failure code for failed transfers. | [optional] |
| **amount** | **Integer** | The actual amount in base units of asset. | [optional] |
| **txn_hash** | **String** | The hash of the blockchain transaction | [optional] |
| **network_fee** | **Integer** | The actual network fee in base units of network_fee_asset. Only present on &#x60;crypto&#x60; transfers that have successfully completed. | [optional] |
| **network_fee_liability_amount** | **Integer** | The equivalent fiat network fee in base units of network_fee_liability_amount_asset. Only present on &#x60;crypto&#x60; transfers that have successfully completed. | [optional] |
| **network_fee_liability_amount_asset** | **String** | The fiat asset the network_fee_liability_amount is denominated in. Only present on &#x60;crypto&#x60; transfers that have successfully completed. | [optional] |
| **return_code** | **String** | The code for the transfer return. | [optional] |
| **returned_at** | **String** | The ISO8601 datetime when the transfer was returned. | [optional] |
| **hold_started_at** | **String** | The ISO8601 datetime when the transfer entered the hold state. | [optional] |
| **hold_duration** | **Integer** | The approximate time (in seconds) that the transfer will be held for. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PatchInternalTransferBankModel.new(
  state: null,
  failure_code: null,
  amount: null,
  txn_hash: null,
  network_fee: null,
  network_fee_liability_amount: null,
  network_fee_liability_amount_asset: null,
  return_code: null,
  returned_at: null,
  hold_started_at: null,
  hold_duration: null
)
```

