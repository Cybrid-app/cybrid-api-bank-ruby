# CybridApiBank::ExternalBankAccountPiiInnerRoutingDetailsInnerBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **routing_number_type** | **String** | The type of routing number; one of CPA, ABA, or IFSC. |  |
| **routing_number** | **String** | The routing number. |  |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::ExternalBankAccountPiiInnerRoutingDetailsInnerBankModel.new(
  routing_number_type: null,
  routing_number: null
)
```

