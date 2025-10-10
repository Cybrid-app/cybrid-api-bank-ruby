# CybridApiBank::InternalExchangeMonitorBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the monitor. |  |
| **created_at** | **Time** | ISO8601 datetime the record was created at. |  |
| **updated_at** | **Time** | ISO8601 datetime the record was last updated at. |  |
| **exchange_guid** | **String** | The exchange identifier. |  |
| **cron_schedule** | **String** | The cron schedule to run the monitor at. |  |
| **denied_symbols** | **Array&lt;String&gt;** | Array of trading symbol codes to deny; empty if all symbols are allowed. | [optional] |
| **allowed_symbols** | **Array&lt;String&gt;** | Array of trading symbol codes to allow; empty if all symbols should be allowed. | [optional] |
| **workday_countries** | **Array&lt;String&gt;** | Array of ISO 3166 country 2-Alpha country codes to use for workday calculations. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::InternalExchangeMonitorBankModel.new(
  guid: null,
  created_at: null,
  updated_at: null,
  exchange_guid: null,
  cron_schedule: null,
  denied_symbols: null,
  allowed_symbols: null,
  workday_countries: null
)
```

