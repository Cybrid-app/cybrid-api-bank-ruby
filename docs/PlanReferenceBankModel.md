# CybridApiBank::PlanReferenceBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of object being referenced; one of returned_execution or returned_stage. |  |
| **guid** | **String** | The guid of the referenced object. |  |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PlanReferenceBankModel.new(
  type: null,
  guid: null
)
```

