# CybridApiBank::PostInternalActivityReportBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The activity report&#39;s type |  |
| **environment** | **String** | The environment for the customer. |  |
| **customer_guid** | **String** | The identifier of the customer for the report. |  |
| **asset** | **String** | The asset code to report on. |  |
| **start_time** | **Time** | Inclusive ISO8601 datetime start time of the period to report on. |  |
| **end_time** | **Time** | Inclusive ISO8601 datetime end time of the period to report on. |  |
| **exclude_guids** | **Array&lt;String&gt;** | The list of guids to exclude from the report. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostInternalActivityReportBankModel.new(
  type: null,
  environment: null,
  customer_guid: null,
  asset: null,
  start_time: null,
  end_time: null,
  exclude_guids: null
)
```

