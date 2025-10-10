# CybridApiBank::PostInternalExternalWalletBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the account. |  |
| **account_kind** | **String** | The account type |  |
| **wallet_service_guid** | **String** | The wallet service guid. |  |
| **provider_id** | **String** | The id of the account at the third-party provider. |  |
| **exchange_guid** | **String** | The exchange identifier. |  |
| **asset** | **String** | The asset code. |  |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostInternalExternalWalletBankModel.new(
  name: null,
  account_kind: null,
  wallet_service_guid: null,
  provider_id: null,
  exchange_guid: null,
  asset: null
)
```

