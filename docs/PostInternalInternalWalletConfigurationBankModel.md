# CybridApiBank::PostInternalInternalWalletConfigurationBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of configuration: bank or platform. |  |
| **environment** | **String** | The environment the configuration is associated with. | [optional] |
| **bank_guid** | **String** | The bank identifier that the configuration is associated with. | [optional] |
| **transfer_wallet_guid** | **String** | The identifier of the internal wallet to use for transfers. |  |
| **invoice_wallet_guid** | **String** | The identifier of the internal wallet to use for invoices. This must be a Strike internal wallet. | [optional] |
| **storage_wallet_guid** | **String** | The identifier of the internal wallet to use for storage. This must be a BitGo internal wallet. | [optional] |
| **asset** | **String** | The asset code. |  |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostInternalInternalWalletConfigurationBankModel.new(
  type: null,
  environment: null,
  bank_guid: null,
  transfer_wallet_guid: null,
  invoice_wallet_guid: null,
  storage_wallet_guid: null,
  asset: null
)
```

