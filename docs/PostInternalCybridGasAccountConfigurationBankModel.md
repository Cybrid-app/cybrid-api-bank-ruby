# CybridApiBank::PostInternalCybridGasAccountConfigurationBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **environment** | **String** | The environment the configuration is associated with. |  |
| **internal_wallet_guid** | **String** | The internal wallet identifier that the configuration is associated with. |  |
| **network_fee_internal_wallet_guid** | **String** | The network fee internal wallet identifier that the configuration is associated with. | [optional] |
| **cybrid_account_guid** | **String** | The cybrid account identifier that the configuration is associated with. |  |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostInternalCybridGasAccountConfigurationBankModel.new(
  environment: null,
  internal_wallet_guid: null,
  network_fee_internal_wallet_guid: null,
  cybrid_account_guid: null
)
```

