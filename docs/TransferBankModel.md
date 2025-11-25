# CybridApiBank::TransferBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the transfer. | [optional] |
| **transfer_type** | **String** | The type of transfer; one of funding, book, crypto, instant_funding, funding_return, crypto_return, loss_recovery, inter_account, lightning, or instant_funding_return. | [optional] |
| **bank_guid** | **String** | The associated bank&#39;s identifier. | [optional] |
| **customer_guid** | **String** | The associated customer&#39;s identifier. | [optional] |
| **quote_guid** | **String** | The associated quote&#39;s identifier. | [optional] |
| **external_bank_account_guid** | **String** | The associated external bank account&#39;s identifier. | [optional] |
| **asset** | **String** | The asset the transfer is related to, e.g., USD. | [optional] |
| **side** | **String** | The direction of the quote; one of deposit or withdrawal. | [optional] |
| **state** | **String** | The state of the transfer; one of storing, pending, holding, reviewing, completed, or failed. | [optional] |
| **failure_code** | **String** | The failure code for failed transfers; one of non_sufficient_funds, refresh_required, party_name_invalid, payment_rail_invalid, compliance_rejection, cancelled, reversed, limit_exceeded, network_fee_too_low, amount_too_low, internal_error, invalid_address, invalid_destination, customer_action_required, external_vendor_error, or payment_request_expired. | [optional] |
| **return_code** | **String** | The return code for reversed transfers | [optional] |
| **amount** | **Integer** | The actual amount in base units of the asset. | [optional] |
| **estimated_amount** | **Integer** | The estimated amount in base units of the asset. | [optional] |
| **fee** | **Integer** | The fee associated with the transfer. | [optional] |
| **estimated_network_fee** | **Integer** | The estimated network fee in base units of network_fee_asset. Only present on &#x60;crypto&#x60; transfers. | [optional] |
| **network_fee** | **Integer** | The actual network fee in base units of network_fee_asset. Only present on &#x60;crypto&#x60; transfers that have successfully completed. | [optional] |
| **network_fee_asset** | **String** | The asset code of the network fee. Only present on &#x60;crypto&#x60; transfers that have successfully completed. | [optional] |
| **network_fee_liability_amount** | **Integer** | The equivalent fiat network fee in base units of network_fee_liability_amount_asset. Only present on &#x60;crypto&#x60; transfers that have successfully completed. | [optional] |
| **network_fee_liability_amount_asset** | **String** | The fiat asset the network_fee_liability_amount is denominated in. Only present on &#x60;crypto&#x60; transfers that have successfully completed. | [optional] |
| **txn_hash** | **String** | The hash of the blockchain transaction (deprecated: use identifiers array) | [optional] |
| **identifiers** | [**Array&lt;TransferIdentifiersInnerBankModel&gt;**](TransferIdentifiersInnerBankModel.md) | Array of identifiers associated with this transfer (transaction hash, wire reference numbers) | [optional] |
| **reference_transfer_guid** | **String** | The guid of the related transfer. Only present on return type transfers. | [optional] |
| **source_account** | [**TransferSourceAccountBankModel**](TransferSourceAccountBankModel.md) |  | [optional] |
| **source_participants** | [**Array&lt;TransferParticipantBankModel&gt;**](TransferParticipantBankModel.md) | The participants in the source account. | [optional] |
| **destination_account** | [**TransferDestinationAccountBankModel**](TransferDestinationAccountBankModel.md) |  | [optional] |
| **destination_participants** | [**Array&lt;TransferParticipantBankModel&gt;**](TransferParticipantBankModel.md) | The participants in the source account. | [optional] |
| **deposit_address_guid** | **String** | The guid of the deposit address. Only present on crypto deposits. | [optional] |
| **created_at** | **Time** | ISO8601 datetime the record was created at. | [optional] |
| **updated_at** | **Time** | ISO8601 datetime the record was last updated at. | [optional] |
| **hold_details** | [**TransferHoldDetailsBankModel**](TransferHoldDetailsBankModel.md) |  | [optional] |
| **transfer_details** | **Object** | The raw details on the transfer from the bank. | [optional] |
| **payment_rail** | **String** | The rail the payment was done on. One of: ach, eft, wire, rtp, etransfer | [optional] |
| **external_id** | **String** | The external identifier for the transfer. | [optional] |
| **labels** | **Array&lt;String&gt;** | The labels associated with the transfer. | [optional] |
| **entries** | [**Array&lt;TransferEntryBankModel&gt;**](TransferEntryBankModel.md) | Transfer entries associated with the batch transfer | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::TransferBankModel.new(
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
  amount: null,
  estimated_amount: null,
  fee: null,
  estimated_network_fee: null,
  network_fee: null,
  network_fee_asset: null,
  network_fee_liability_amount: null,
  network_fee_liability_amount_asset: null,
  txn_hash: null,
  identifiers: null,
  reference_transfer_guid: null,
  source_account: null,
  source_participants: null,
  destination_account: null,
  destination_participants: null,
  deposit_address_guid: null,
  created_at: null,
  updated_at: null,
  hold_details: null,
  transfer_details: null,
  payment_rail: null,
  external_id: null,
  labels: null,
  entries: null
)
```

