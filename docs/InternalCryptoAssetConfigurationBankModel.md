# CybridApiBank::InternalCryptoAssetConfigurationBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the configuration. | [optional] |
| **type** | **String** | The type of crypto asset configuration: bank or platform. | [optional] |
| **environment** | **String** | The environment the configuration is associated with. | [optional] |
| **bank_guid** | **String** | The bank identifier that the configuration is associated with. | [optional] |
| **deposits_enabled** | **Boolean** | Flag indicating if the asset is enabled for deposit addresses on the platform. | [optional] |
| **invoices_enabled** | **Boolean** | Flag indicating if the asset is enabled for invoices on the platform. | [optional] |
| **storage_enabled** | **Boolean** | Flag indicating if the asset is enabled for storage on the platform. | [optional] |
| **maximum_number_of_addresses** | **Integer** | The maximum number of deposit addresses allowed for the asset on the platform. | [optional] |
| **asset** | **String** | The asset code. | [optional] |
| **created_at** | **Time** | ISO8601 datetime the record was created at. | [optional] |
| **updated_at** | **Time** | ISO8601 datetime the record was last updated at. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::InternalCryptoAssetConfigurationBankModel.new(
  guid: null,
  type: null,
  environment: null,
  bank_guid: null,
  deposits_enabled: null,
  invoices_enabled: null,
  storage_enabled: null,
  maximum_number_of_addresses: null,
  asset: null,
  created_at: null,
  updated_at: null
)
```

