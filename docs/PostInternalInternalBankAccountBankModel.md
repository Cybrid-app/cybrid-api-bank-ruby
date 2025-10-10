# CybridApiBank::PostInternalInternalBankAccountBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the account. |  |
| **asset** | **String** | The asset code. |  |
| **account_kind** | **String** | The type of account. |  |
| **environment** | **String** | The account environment. |  |
| **provider_id** | **String** | The id of the account at the third-party provider. |  |
| **bank_account_service_guid** | **String** | The bank account service guid. |  |
| **routing_details** | [**Array&lt;PostInternalInternalBankAccountRoutingDetailBankModel&gt;**](PostInternalInternalBankAccountRoutingDetailBankModel.md) | The routing details for this wallet. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostInternalInternalBankAccountBankModel.new(
  name: null,
  asset: null,
  account_kind: null,
  environment: null,
  provider_id: null,
  bank_account_service_guid: null,
  routing_details: null
)
```

