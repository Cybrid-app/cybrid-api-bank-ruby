# CybridApiBank::PostInternalCryptoAssetConfigurationBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of crypto asset configuration: bank or platform. |  |
| **environment** | **String** | The environment the configuration is associated with. | [optional] |
| **bank_guid** | **String** | The bank identifier that the configuration is associated with. | [optional] |
| **deposits_enabled** | **Boolean** | Flag indicating if the asset is enabled for deposit addresses on the platform. |  |
| **invoices_enabled** | **Boolean** | Flag indicating if the asset is enabled for invoices on the platform. | [optional] |
| **storage_enabled** | **Boolean** | Flag indicating if the asset is enabled for storage on the platform. | [optional] |
| **maximum_number_of_addresses** | **Integer** | The maximum number of deposit addresses allowed for the asset on the platform. Must be omitted or set to nil if deposits_enabled is False. | [optional] |
| **asset** | **String** | The asset code. |  |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostInternalCryptoAssetConfigurationBankModel.new(
  type: null,
  environment: null,
  bank_guid: null,
  deposits_enabled: null,
  invoices_enabled: null,
  storage_enabled: null,
  maximum_number_of_addresses: null,
  asset: null
)
```

