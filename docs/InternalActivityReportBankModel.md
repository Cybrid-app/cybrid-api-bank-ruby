# CybridApiBank::InternalActivityReportBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The activity report&#39;s type | [optional] |
| **customer_guid** | **String** | The identifier of the customer for the report. | [optional] |
| **asset** | **String** | The asset code to report on. | [optional] |
| **start_time** | **Time** | Inclusive ISO8601 datetime start time of the period to report on. | [optional] |
| **end_time** | **Time** | Inclusive ISO8601 datetime end time of the period to report on. | [optional] |
| **items** | [**Array&lt;InternalActivityReportItemBankModel&gt;**](InternalActivityReportItemBankModel.md) | The items in the report. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::InternalActivityReportBankModel.new(
  type: null,
  customer_guid: null,
  asset: null,
  start_time: null,
  end_time: null,
  items: null
)
```

