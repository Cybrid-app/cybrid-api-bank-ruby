# CybridApiBank::TransferBankModel

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
| **amount** | **Integer** | The actual amount in base units of the asset. | [optional] |
| **estimated_amount** | **Integer** | The estimated amount in base units of the asset. | [optional] |
| **fee** | **Integer** | The fee associated with the transfer. | [optional] |
| **estimated_network_fee** | **Integer** | The estimated network fee in base units of network_fee_asset. Only present on &#x60;crypto&#x60; transfers. | [optional] |
| **network_fee** | **Integer** | The actual network fee in base units of network_fee_asset. Only present on &#x60;crypto&#x60; transfers that have successfully completed. | [optional] |
| **network_fee_asset** | **String** | The asset code of the network fee. Only present on &#x60;crypto&#x60; transfers that have successfully completed. | [optional] |
| **network_fee_liability_amount** | **Integer** | The equivalent fiat network fee in base units of network_fee_liability_amount_asset. Only present on &#x60;crypto&#x60; transfers that have successfully completed. | [optional] |
| **network_fee_liability_amount_asset** | **String** | The fiat asset the network_fee_liability_amount is denominated in. Only present on &#x60;crypto&#x60; transfers that have successfully completed. | [optional] |
| **txn_hash** | **String** | The hash of the blockchain transaction | [optional] |
| **reference_transfer_guid** | **String** | The guid of the related transfer. Only present on &#x60;funding_return&#x60; transfers. | [optional] |
| **source_account** | [**TransferSourceAccountBankModel**](TransferSourceAccountBankModel.md) |  | [optional] |
| **destination_account** | [**TransferDestinationAccountBankModel**](TransferDestinationAccountBankModel.md) |  | [optional] |
| **created_at** | **Time** | ISO8601 datetime the bank was created at. | [optional] |
| **updated_at** | **Time** | ISO8601 datetime the transfer was last updated at. | [optional] |
| **labels** | **Array&lt;String&gt;** | The labels associated with the transfer. | [optional] |

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
  amount: null,
  estimated_amount: null,
  fee: null,
  estimated_network_fee: null,
  network_fee: null,
  network_fee_asset: null,
  network_fee_liability_amount: null,
  network_fee_liability_amount_asset: null,
  txn_hash: null,
  reference_transfer_guid: null,
  source_account: null,
  destination_account: null,
  created_at: null,
  updated_at: null,
  labels: null
)
```

