# CybridApiBank::PostExternalBankAccountCounterpartyBankAccountBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **routing_number_type** | **String** | The type of routing number. Required when account_kind is raw_routing_details. | [optional] |
| **routing_number** | **String** | The routing number. Required when account_kind is raw_routing_details. | [optional] |
| **account_number** | **String** | The account number. Required when account_kind is raw_routing_details. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostExternalBankAccountCounterpartyBankAccountBankModel.new(
  routing_number_type: null,
  routing_number: null,
  account_number: null
)
```

