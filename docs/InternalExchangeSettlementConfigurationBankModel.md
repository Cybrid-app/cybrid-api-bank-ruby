# CybridApiBank::InternalExchangeSettlementConfigurationBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the entity. |  |
| **created_at** | **Time** | ISO8601 datetime the entity was created at. | [optional] |
| **updated_at** | **Time** | ISO8601 datetime the entity was last updated at. | [optional] |
| **asset** | **String** | The asset code. |  |
| **exchange_guid** | **String** | The exchange identifier. |  |
| **omnibus_account_guid** | **String** | The omnibus account identifier. | [optional] |
| **omnibus_account_type** | **String** | The omnibus account type. | [optional] |
| **exchange_account_guid** | **String** | The exchange account identifier. |  |
| **exchange_account_type** | **String** | The exchange account type. |  |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::InternalExchangeSettlementConfigurationBankModel.new(
  guid: null,
  created_at: null,
  updated_at: null,
  asset: null,
  exchange_guid: null,
  omnibus_account_guid: null,
  omnibus_account_type: null,
  exchange_account_guid: null,
  exchange_account_type: null
)
```

