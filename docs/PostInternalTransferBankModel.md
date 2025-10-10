# CybridApiBank::PostInternalTransferBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transfer_type** | **String** | The type of internal transfer. |  |
| **environment** | **String** | The environment to transfer funds in. |  |
| **quote_guid** | **String** | The associated quote&#39;s identifier. | [optional] |
| **transfer_guid** | **String** | The associated tranfer&#39;s identifier. Used for returns. | [optional] |
| **source_account_guid** | **String** | The source account guid. | [optional] |
| **destination_account_guid** | **String** | The destination account guid. | [optional] |
| **supports_reconciliation** | **Boolean** | Flag indicating if the transfer supports reconciliation. | [optional] |
| **requires_manual_confirmation** | **Boolean** | Override indicating if the transfer requires manual confirmation. | [optional] |
| **external_id** | **String** | The external identifier for the transfer. | [optional] |
| **labels** | **Array&lt;String&gt;** | The labels associated with the transfer. | [optional] |
| **associations** | [**Array&lt;InternalTransferAssociationBankModel&gt;**](InternalTransferAssociationBankModel.md) | Transfers associated with this record. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostInternalTransferBankModel.new(
  transfer_type: null,
  environment: null,
  quote_guid: null,
  transfer_guid: null,
  source_account_guid: null,
  destination_account_guid: null,
  supports_reconciliation: null,
  requires_manual_confirmation: null,
  external_id: null,
  labels: null,
  associations: null
)
```

