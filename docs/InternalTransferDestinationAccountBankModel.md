# CybridApiBank::InternalTransferDestinationAccountBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the transfer account. | [optional] |
| **type** | **String** | The type of transfer account. | [optional] |
| **bank_guid** | **String** | The account&#39;s identifier. | [optional] |
| **customer_guid** | **String** | The account&#39;s identifier. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::InternalTransferDestinationAccountBankModel.new(
  guid: null,
  type: null,
  bank_guid: null,
  customer_guid: null
)
```

