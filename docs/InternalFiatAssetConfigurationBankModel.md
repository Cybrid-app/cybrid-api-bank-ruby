# CybridApiBank::InternalFiatAssetConfigurationBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the configuration. | [optional] |
| **type** | **String** | The type of fiat asset configuration: bank or platform. | [optional] |
| **environment** | **String** | The environment the configuration is associated with. | [optional] |
| **bank_guid** | **String** | The bank identifier that the configuration is associated with. | [optional] |
| **enabled** | **Boolean** | Flag indicating if the asset is enabled for fiat accounts on the platform. | [optional] |
| **invoices_enabled** | **Boolean** | Flag indicating if the asset is enabled for invoices on the platform. | [optional] |
| **maximum_number_of_accounts** | **Integer** | The maximum number of accounts allowed for the asset on the platform. Must be omitted or set to nil if enabled is False. | [optional] |
| **maximum_funding_quote_amount** | **Object** | The maximum funding quote amounts by rail for the asset. | [optional] |
| **asset** | **String** | The asset code. | [optional] |
| **created_at** | **Time** | ISO8601 datetime the record was created at. | [optional] |
| **updated_at** | **Time** | ISO8601 datetime the record was last updated at. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::InternalFiatAssetConfigurationBankModel.new(
  guid: null,
  type: null,
  environment: null,
  bank_guid: null,
  enabled: null,
  invoices_enabled: null,
  maximum_number_of_accounts: null,
  maximum_funding_quote_amount: null,
  asset: null,
  created_at: null,
  updated_at: null
)
```

