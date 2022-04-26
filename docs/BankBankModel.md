# CybridApiBank::BankBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the bank. |  |
| **organization_guid** | **String** | The organization&#39;s identifier. |  |
| **name** | **String** | The bank&#39;s name. |  |
| **type** | **String** | The bank&#39;s type. |  |
| **features** | **Array&lt;String&gt;** | The bank&#39;s enabled features. |  |
| **created_at** | **Time** | ISO8601 datetime the bank was created at. |  |

## Example

```ruby
require 'cybrid_api_bank'

instance = CybridApiBank::BankBankModel.new(
  guid: null,
  organization_guid: null,
  name: null,
  type: null,
  features: null,
  created_at: null
)
```

