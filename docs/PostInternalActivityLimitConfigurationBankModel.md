# CybridApiBank::PostInternalActivityLimitConfigurationBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of the configuration. |  |
| **activity** | **String** | The activity type of the configuration. | [optional] |
| **side** | **String** | The side of the activity. | [optional] |
| **limits** | [**Array&lt;ParamInternalActivityLimitBankModel&gt;**](ParamInternalActivityLimitBankModel.md) | The limits for the configuration. |  |
| **environment** | **String** | The environment for the configuration. Required when type is platform. | [optional] |
| **audience** | **String** | The audience for the configuration. Required when type is platform or type is bank. | [optional] |
| **country_code** | **String** | The country code for the configuration. Required when type is platform. | [optional] |
| **bank_guid** | **String** | The bank GUID for the configuration. Required when type is bank. | [optional] |
| **customer_guid** | **String** | The customer GUID for the configuration. Required when type is customer. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostInternalActivityLimitConfigurationBankModel.new(
  type: null,
  activity: null,
  side: null,
  limits: null,
  environment: null,
  audience: null,
  country_code: null,
  bank_guid: null,
  customer_guid: null
)
```

