# CybridApiBank::PatchInternalDepositAddressBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **stored_at** | **Time** | ISO8601 datetime the deposit address was stored at. | [optional] |
| **address** | **String** | The blockchain address. | [optional] |
| **format** | **String** | The blockchain address format. | [optional] |
| **tag** | **String** | The blockchain address tag. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PatchInternalDepositAddressBankModel.new(
  stored_at: null,
  address: null,
  format: null,
  tag: null
)
```

