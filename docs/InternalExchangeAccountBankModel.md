# CybridApiBank::InternalExchangeAccountBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The exchange account type. | [optional] |
| **guid** | **String** | Auto-generated unique identifier for exchange account. | [optional] |
| **created_at** | **Time** | ISO8601 datetime the record was created at. | [optional] |
| **updated_at** | **Time** | ISO8601 datetime the record was last updated at. | [optional] |
| **exchange_guid** | **String** | The identifier of the exchange that owns this exchange account. | [optional] |
| **asset_code** | **String** | The asset code of the exchange account. | [optional] |
| **state** | **String** | The state of the account. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::InternalExchangeAccountBankModel.new(
  type: null,
  guid: null,
  created_at: null,
  updated_at: null,
  exchange_guid: null,
  asset_code: null,
  state: null
)
```

