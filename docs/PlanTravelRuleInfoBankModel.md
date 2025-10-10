# CybridApiBank::PlanTravelRuleInfoBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **originating_party** | [**TravelRuleInfoPartyBankModel**](TravelRuleInfoPartyBankModel.md) |  |  |
| **receiving_party** | [**TravelRuleInfoPartyBankModel**](TravelRuleInfoPartyBankModel.md) |  |  |
| **ultimate_originating_party** | [**TravelRuleInfoPartyBankModel**](TravelRuleInfoPartyBankModel.md) |  | [optional] |
| **ultimate_receiving_party** | [**TravelRuleInfoPartyBankModel**](TravelRuleInfoPartyBankModel.md) |  | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PlanTravelRuleInfoBankModel.new(
  originating_party: null,
  receiving_party: null,
  ultimate_originating_party: null,
  ultimate_receiving_party: null
)
```

