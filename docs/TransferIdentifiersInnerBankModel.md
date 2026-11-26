# CybridApiBank::TransferIdentifiersInnerBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Type of identifier (txn_hash, imad, omad, gateway_url, trace_number, uetr) | [optional] |
| **value** | **String** | The identifier value | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::TransferIdentifiersInnerBankModel.new(
  type: null,
  value: null
)
```

