# CybridApiBank::PatchInternalCryptoAssetConfigurationBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **deposits_enabled** | **Boolean** | Allow deposits for the configuration. | [optional] |
| **maximum_number_of_addresses** | **Integer** | The maximum number of addresses allowed for the configuration. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PatchInternalCryptoAssetConfigurationBankModel.new(
  deposits_enabled: null,
  maximum_number_of_addresses: null
)
```

