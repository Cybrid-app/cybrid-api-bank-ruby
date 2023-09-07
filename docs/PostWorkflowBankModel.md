# CybridApiBank::PostWorkflowBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The workflow type. |  |
| **kind** | **String** | The Plaid workflow kind. | [optional] |
| **customer_guid** | **String** | The customer identifier associated with the workflow. | [optional] |
| **external_bank_account_guid** | **String** | The external bank account identifier associated with the workflow. | [optional] |
| **language** | **String** | The language to initialize Plaid link. | [optional] |
| **link_customization_name** | **String** | The customization name for Plaid link. Currently only supports the value \&quot;default\&quot;. | [optional] |
| **redirect_uri** | **String** | The redirect URI for Plaid link. | [optional] |
| **android_package_name** | **String** | The Android package name for Plaid link. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostWorkflowBankModel.new(
  type: null,
  kind: null,
  customer_guid: null,
  external_bank_account_guid: null,
  language: null,
  link_customization_name: null,
  redirect_uri: null,
  android_package_name: null
)
```

