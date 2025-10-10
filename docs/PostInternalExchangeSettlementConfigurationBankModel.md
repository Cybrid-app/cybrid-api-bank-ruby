# CybridApiBank::PostInternalExchangeSettlementConfigurationBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset** | **String** | The asset code for the settlement configuration. |  |
| **exchange_guid** | **String** | The exchange identifier. |  |
| **omnibus_account_guid** | **String** | The omnibus account identifier. | [optional] |
| **exchange_account_guid** | **String** | The exchange account identifier. |  |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostInternalExchangeSettlementConfigurationBankModel.new(
  asset: null,
  exchange_guid: null,
  omnibus_account_guid: null,
  exchange_account_guid: null
)
```

