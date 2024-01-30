# CybridApiBank::PostTransferBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **quote_guid** | **String** | The associated quote&#39;s identifier. |  |
| **transfer_type** | **String** | The type of transfer. |  |
| **source_account_guid** | **String** | The source account&#39;s identifier. Required for book transfers. | [optional] |
| **destination_account_guid** | **String** | The destination account&#39;s identifier. Required for book transfers. | [optional] |
| **external_wallet_guid** | **String** | The customer&#39;s external wallet&#39;s identifier. | [optional] |
| **external_bank_account_guid** | **String** | The customer&#39;s &#39;plaid&#39; or &#39;plaid_processor_token&#39; external bank account&#39;s identifier. | [optional] |
| **payment_rail** | **String** | The desired payment rail to initiate the transfer for. Valid values are: ach, eft, wire. Valid for funding transfers only. | [optional] |
| **labels** | **Array&lt;String&gt;** | The labels associated with the transfer. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostTransferBankModel.new(
  quote_guid: null,
  transfer_type: null,
  source_account_guid: null,
  destination_account_guid: null,
  external_wallet_guid: null,
  external_bank_account_guid: null,
  payment_rail: null,
  labels: null
)
```

