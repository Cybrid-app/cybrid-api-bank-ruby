# CybridApiBank::PostInternalInternalWalletBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of internal wallet. |  |
| **name** | **String** | The name of the account. |  |
| **asset** | **String** | The asset code. |  |
| **account_kind** | **String** | The type of account. |  |
| **environment** | **String** | The account environment. |  |
| **provider_id** | **String** | The id of the account at the third-party provider. | [optional] |
| **wallet_service_guid** | **String** | The wallet service guid; required when specifying the provider_id. | [optional] |
| **internal_wallet_group_guid** | **String** | The unique identifier of the wallet group. | [optional] |
| **bank_guid** | **String** | The unique identifier for the bank associated with the trading deposits wallet. | [optional] |
| **customer_guid** | **String** | The unique identifier for the customer associated with the trading deposits wallet. | [optional] |
| **routing_details** | [**Array&lt;PostInternalInternalWalletRoutingDetailBankModel&gt;**](PostInternalInternalWalletRoutingDetailBankModel.md) | The routing details for this wallet. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostInternalInternalWalletBankModel.new(
  type: null,
  name: null,
  asset: null,
  account_kind: null,
  environment: null,
  provider_id: null,
  wallet_service_guid: null,
  internal_wallet_group_guid: null,
  bank_guid: null,
  customer_guid: null,
  routing_details: null
)
```

