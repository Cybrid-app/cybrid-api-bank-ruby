# CybridApiBank::PostExecutionBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_guid** | **String** | The unique identifier for the plan. |  |
| **sardine_session_guid** | **String** | The GUID of a previously created Sardine session. Used to correlate device signals from the Sardine SDK with the execution screening. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostExecutionBankModel.new(
  plan_guid: null,
  sardine_session_guid: null
)
```

