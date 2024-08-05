# CybridApiBank::PostTransferBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **quote_guid** | **String** | The associated quote&#39;s identifier. |  |
| **transfer_type** | **String** | The type of transfer. |  |
| **customer_guid** | **String** | The customer&#39;s identifier. | [optional] |
| **fiat_account_guid** | **String** | The identifier for the fiat account to use for the transfer. Required if the customer or bank has multiple fiat accounts. Only valid for funding transfers. | [optional] |
| **customer_fiat_account_guid** | **String** | The identifier for the fiat account to use for the transfer. Required if the customer has multiple fiat accounts. Only valid for instant funding and lightning transfers. | [optional] |
| **bank_fiat_account_guid** | **String** | The identifier for the fiat account to use for the transfer. Required if the bank has multiple fiat accounts. Only valid for instant funding and lightning transfers. | [optional] |
| **source_account_guid** | **String** | The source account&#39;s identifier. Required for book transfers. | [optional] |
| **source_participants** | [**Array&lt;PostTransferParticipantBankModel&gt;**](PostTransferParticipantBankModel.md) | The source participants for the transfer. | [optional] |
| **destination_account_guid** | **String** | The destination account&#39;s identifier. Required for book transfers. | [optional] |
| **destination_participants** | [**Array&lt;PostTransferParticipantBankModel&gt;**](PostTransferParticipantBankModel.md) | The destination participants for the transfer. | [optional] |
| **external_wallet_guid** | **String** | The customer&#39;s external wallet&#39;s identifier. | [optional] |
| **external_bank_account_guid** | **String** | The customer&#39;s &#39;plaid&#39; or &#39;plaid_processor_token&#39; external bank account&#39;s identifier. | [optional] |
| **network_fee_account_guid** | **String** | The network fee account&#39;s identifier. Required for network fee transfers. Must be the identifier for the customer&#39;s or bank&#39;s fiat account. For customer&#39;s to pay the network fees, include the customer&#39;s fiat account guid. For bank&#39;s to pay the network fees, include the bank&#39;s fiat account guid. | [optional] |
| **payment_rail** | **String** | The desired payment rail to initiate the transfer for. Valid values are: ach, eft, wire. Valid for funding transfers only. | [optional] |
| **beneficiary_memo** | **String** | The memo to send to the counterparty. | [optional] |
| **send_as_deposit_bank_account_guid** | **String** | The deposit bank account&#39;s identifier. Optional for funding transfers. Only valid for withdrawals. The deposit bank account must be owned by the customer or bank initiating the transfer. | [optional] |
| **labels** | **Array&lt;String&gt;** | The labels associated with the transfer. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostTransferBankModel.new(
  quote_guid: null,
  transfer_type: null,
  customer_guid: null,
  fiat_account_guid: null,
  customer_fiat_account_guid: null,
  bank_fiat_account_guid: null,
  source_account_guid: null,
  source_participants: null,
  destination_account_guid: null,
  destination_participants: null,
  external_wallet_guid: null,
  external_bank_account_guid: null,
  network_fee_account_guid: null,
  payment_rail: null,
  beneficiary_memo: null,
  send_as_deposit_bank_account_guid: null,
  labels: null
)
```

