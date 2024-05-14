# CybridApiBank::TransferSourceAccountBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the transfer account. | [optional] |
| **type** | **String** | The type of transfer account; one of trading, fiat, external_bank_account, external_wallet, one_time_address, reserve, or invoice_operations. | [optional] |
| **bank_guid** | **String** | The account&#39;s identifier. | [optional] |
| **customer_guid** | **String** | The account&#39;s identifier. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::TransferSourceAccountBankModel.new(
  guid: null,
  type: null,
  bank_guid: null,
  customer_guid: null
)
```

