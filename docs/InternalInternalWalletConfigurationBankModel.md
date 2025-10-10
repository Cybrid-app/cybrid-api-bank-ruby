# CybridApiBank::InternalInternalWalletConfigurationBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the configuration. | [optional] |
| **type** | **String** | The type of configuration: bank or platform. | [optional] |
| **environment** | **String** | The environment the configuration is associated with. | [optional] |
| **bank_guid** | **String** | The bank identifier that the configuration is associated with. | [optional] |
| **transfer_wallet_guid** | **String** | The identifier of the internal wallet to use for transfers. | [optional] |
| **invoice_wallet_guid** | **String** | The identifier of the internal wallet to use for creating invoices. | [optional] |
| **storage_wallet_guid** | **String** | The identifier of the internal wallet to use for crypto cold storage. | [optional] |
| **asset** | **String** | The asset code. | [optional] |
| **created_at** | **Time** | ISO8601 datetime the record was created at. | [optional] |
| **updated_at** | **Time** | ISO8601 datetime the record was last updated at. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::InternalInternalWalletConfigurationBankModel.new(
  guid: null,
  type: null,
  environment: null,
  bank_guid: null,
  transfer_wallet_guid: null,
  invoice_wallet_guid: null,
  storage_wallet_guid: null,
  asset: null,
  created_at: null,
  updated_at: null
)
```

