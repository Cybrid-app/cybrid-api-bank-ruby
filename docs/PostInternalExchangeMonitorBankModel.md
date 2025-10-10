# CybridApiBank::PostInternalExchangeMonitorBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **exchange_guid** | **String** | The exchangee identifier. |  |
| **cron_schedule** | **String** | The cron schedule for polling the exchange. |  |
| **allowed_symbols** | **Array&lt;String&gt;** | The trading symbols to allow in the settlement; omit if all symbols should be allowed. | [optional] |
| **denied_symbols** | **Array&lt;String&gt;** | The trading symbols to deny in the settlement; omit if no symbols should be denied. | [optional] |
| **workday_countries** | **Array&lt;String&gt;** | The country codes to skip settlements on non-workdays; omit if workdays should not be factored. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostInternalExchangeMonitorBankModel.new(
  exchange_guid: null,
  cron_schedule: null,
  allowed_symbols: null,
  denied_symbols: null,
  workday_countries: null
)
```

