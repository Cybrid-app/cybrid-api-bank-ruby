# CybridApiBank::TravelRuleInfoPartyBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of entity; one of bank, customer, or counterparty. |  |
| **participant_guid** | **String** | The unique identifier for the participant. |  |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::TravelRuleInfoPartyBankModel.new(
  type: null,
  participant_guid: null
)
```

