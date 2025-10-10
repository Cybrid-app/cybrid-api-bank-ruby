# CybridApiBank::InternalCybridGasAccountConfigurationBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the configuration. | [optional] |
| **environment** | **String** | The environment the configuration is associated with. | [optional] |
| **internal_wallet_guid** | **String** | The internal wallet identifier that the configuration is associated with. | [optional] |
| **network_fee_internal_wallet_guid** | **String** | The network fee internal wallet identifier that the configuration is associated with. | [optional] |
| **cybrid_account_guid** | **String** | The cybrid account identifier that the configuration is associated with. | [optional] |
| **asset** | **String** | The asset code. | [optional] |
| **network_fee_asset** | **String** | The network fee asset code. | [optional] |
| **created_at** | **Time** | ISO8601 datetime the record was created at. | [optional] |
| **updated_at** | **Time** | ISO8601 datetime the record was last updated at. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::InternalCybridGasAccountConfigurationBankModel.new(
  guid: null,
  environment: null,
  internal_wallet_guid: null,
  network_fee_internal_wallet_guid: null,
  cybrid_account_guid: null,
  asset: null,
  network_fee_asset: null,
  created_at: null,
  updated_at: null
)
```

