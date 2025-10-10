# CybridApiBank::PostInternalInternalBankAccountRoutingDetailBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **route_type** | **String** |  |  |
| **provider_id** | **String** | The provider supplied identifier for the route |  |
| **bank_account_service_guid** | **String** | The bank account service guid. |  |
| **beneficiary_memo** | **String** | The memo to send to the counterparty. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostInternalInternalBankAccountRoutingDetailBankModel.new(
  route_type: null,
  provider_id: null,
  bank_account_service_guid: null,
  beneficiary_memo: null
)
```

