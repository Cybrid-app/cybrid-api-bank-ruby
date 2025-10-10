# CybridApiBank::InternalTransactionMonitorBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the monitor. |  |
| **created_at** | **Time** | ISO8601 datetime the record was created at. |  |
| **updated_at** | **Time** | ISO8601 datetime the record was last updated at. |  |
| **type** | **String** | The type of monitor. |  |
| **account_guid** | **String** | The account guid to monitor. |  |
| **directions** | **Array&lt;String&gt;** | The directions to monitor. |  |
| **polling_interval** | **Integer** | The polling interval in seconds. |  |
| **start_date** | **Date** | The start date to monitor from. |  |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::InternalTransactionMonitorBankModel.new(
  guid: null,
  created_at: null,
  updated_at: null,
  type: null,
  account_guid: null,
  directions: null,
  polling_interval: null,
  start_date: null
)
```

