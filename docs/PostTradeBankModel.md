# CybridApiBank::PostTradeBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **quote_guid** | **String** | The associated quote&#39;s identifier. |  |
| **expected_error** | **String** | The optional expected error to simulate trade failure. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostTradeBankModel.new(
  quote_guid: null,
  expected_error: null
)
```

