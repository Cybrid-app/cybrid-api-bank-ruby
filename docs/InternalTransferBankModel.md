# CybridApiBank::InternalTransferBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the transfer. | [optional] |
| **transfer_type** | **String** | The type of transfer. | [optional] |
| **bank_guid** | **String** | The associated bank&#39;s identifier. | [optional] |
| **customer_guid** | **String** | The associated customer&#39;s identifier. | [optional] |
| **quote_guid** | **String** | The associated quote&#39;s identifier. | [optional] |
| **external_bank_account_guid** | **String** | The associated external bank account&#39;s identifier. | [optional] |
| **asset** | **String** | The asset the transfer is related to, e.g., USD. | [optional] |
| **side** | **String** | The direction of the quote: &#39;deposit&#39; or &#39;withdrawal&#39;. | [optional] |
| **state** | **String** | The transfer&#39;s state | [optional] |
| **failure_code** | **String** | The failure code for failed transfers. | [optional] |
| **return_code** | **String** | The return code for reversed transfers | [optional] |
| **returned_at** | **Time** | ISO8601 datetime the transfer was returned at. | [optional] |
| **reference_transfer_guid** | **String** | The guid of the related transfer. Only present on return type transfers. | [optional] |
| **amount** | **Integer** | The actual amount in base units of the asset. | [optional] |
| **estimated_amount** | **Integer** | The estimated amount in base units of the asset. | [optional] |
| **fee** | **Integer** | The fee associated with the transfer. | [optional] |
| **estimated_network_fee** | **Integer** | The estimated network fee in base units of network_fee_asset. Only present on &#x60;crypto&#x60; transfers. | [optional] |
| **network_fee** | **Integer** | The actual network fee in base units of network_fee_asset. Only present on &#x60;crypto&#x60; transfers that have successfully completed. | [optional] |
| **network_fee_asset** | **String** | The asset code of the network fee. Only present on &#x60;crypto&#x60; transfers that have successfully completed. | [optional] |
| **network_fee_liability_amount** | **Integer** | The equivalent fiat network fee in base units of network_fee_liability_amount_asset. Only present on &#x60;crypto&#x60; transfers that have successfully completed. | [optional] |
| **network_fee_liability_amount_asset** | **String** | The fiat asset the network_fee_liability_amount is denominated in. Only present on &#x60;crypto&#x60; transfers that have successfully completed. | [optional] |
| **txn_hash** | **String** | The hash of the blockchain transaction | [optional] |
| **source_account** | [**InternalTransferSourceAccountBankModel**](InternalTransferSourceAccountBankModel.md) |  | [optional] |
| **source_participants** | [**Array&lt;TransferParticipantBankModel&gt;**](TransferParticipantBankModel.md) | The source participants for the transfer. | [optional] |
| **destination_account** | [**InternalTransferDestinationAccountBankModel**](InternalTransferDestinationAccountBankModel.md) |  | [optional] |
| **destination_participants** | [**Array&lt;TransferParticipantBankModel&gt;**](TransferParticipantBankModel.md) | The destination participants for the transfer. | [optional] |
| **created_at** | **Time** | ISO8601 datetime the transfer was created at. | [optional] |
| **updated_at** | **Time** | ISO8601 datetime the transfer was last updated at. | [optional] |
| **hold_started_at** | **Time** | ISO8601 datetime the transfer hold was started at. | [optional] |
| **hold_duration** | **Integer** | The approximate time (in seconds) that the transfer will be held for. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::InternalTransferBankModel.new(
  guid: null,
  transfer_type: null,
  bank_guid: null,
  customer_guid: null,
  quote_guid: null,
  external_bank_account_guid: null,
  asset: null,
  side: null,
  state: null,
  failure_code: null,
  return_code: null,
  returned_at: null,
  reference_transfer_guid: null,
  amount: null,
  estimated_amount: null,
  fee: null,
  estimated_network_fee: null,
  network_fee: null,
  network_fee_asset: null,
  network_fee_liability_amount: null,
  network_fee_liability_amount_asset: null,
  txn_hash: null,
  source_account: null,
  source_participants: null,
  destination_account: null,
  destination_participants: null,
  created_at: null,
  updated_at: null,
  hold_started_at: null,
  hold_duration: null
)
```

