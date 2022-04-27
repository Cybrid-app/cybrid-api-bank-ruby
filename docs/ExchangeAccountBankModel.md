# CybridApiBank::ExchangeAccountBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The exchange account type. | [optional] |
| **guid** | **String** | Auto-generated unique identifier for exchange account. | [optional] |
| **created_at** | **Time** | ISO8601 datetime the exchange account was created at. | [optional] |
| **exchange_guid** | **String** | The identifier of the exchange that owns this exchange account. | [optional] |
| **asset_code** | **String** | The asset code of the exchange account. | [optional] |

## Example

```ruby
require 'cybrid_api_bank'

instance = CybridApiBank::ExchangeAccountBankModel.new(
  type: null,
  guid: null,
  created_at: null,
  exchange_guid: null,
  asset_code: null
)
```

