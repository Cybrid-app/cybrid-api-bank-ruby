# CybridApiBank::TransferHoldDetailsBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **applicable_types** | **Array&lt;String&gt;** | The list of hold types that are applicable for the transfer; one of administrative or non_administrative. | [optional] |
| **duration** | **Integer** | The approximate time (in seconds) that the transfer will be held for. | [optional] |
| **started_at** | **Time** | ISO8601 datetime the transfer hold was started at. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::TransferHoldDetailsBankModel.new(
  applicable_types: null,
  duration: null,
  started_at: null
)
```

