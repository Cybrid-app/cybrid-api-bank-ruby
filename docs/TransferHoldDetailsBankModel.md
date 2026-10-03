# CybridApiBank::TransferHoldDetailsBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **applicable_types** | **Array&lt;String&gt;** | The list of hold types that are applicable for the transfer; one of administrative or non_administrative. | [optional] |
| **kind** | **String** | The kind of hold; one of settlement or cool_off. A settlement hold keeps landed deposit funds unavailable; a cool_off hold delays a withdrawal before it reaches the provider. Null when no hold applies. | [optional] |
| **duration** | **Integer** | The approximate time (in seconds) that the transfer will be held for. | [optional] |
| **started_at** | **Time** | ISO8601 datetime the transfer hold was started at. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::TransferHoldDetailsBankModel.new(
  applicable_types: null,
  kind: null,
  duration: null,
  started_at: null
)
```

