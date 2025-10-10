# CybridApiBank::PostInternalTransactionMonitorBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Type of transaction_monitor to create. |  |
| **account_guid** | **String** | The account identifier. Required when type is account. | [optional] |
| **direction** | **String** | The direction to monitor for transactions Optional when type is account. | [optional] |
| **polling_interval** | **Integer** | The interval in seconds to poll for transactions. Required when type is account. | [optional] |
| **start_date** | **Date** | The date to start monitoring transactions. Required when type is account. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostInternalTransactionMonitorBankModel.new(
  type: null,
  account_guid: null,
  direction: null,
  polling_interval: null,
  start_date: null
)
```

