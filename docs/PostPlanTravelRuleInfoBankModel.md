# CybridApiBank::PostPlanTravelRuleInfoBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ultimate_originating_party_guid** | **String** | The unique identifier for the ultimate originating party. | [optional] |
| **ultimate_receiving_party_guid** | **String** | The unique identifier for the ultimate receiving party. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostPlanTravelRuleInfoBankModel.new(
  ultimate_originating_party_guid: null,
  ultimate_receiving_party_guid: null
)
```

