# CybridApiBank::PatchInternalCustomerBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **stored_at** | **Time** | ISO8601 datetime the customer stored at. | [optional] |
| **frozen** | **Boolean** | Flag indicating if the customer is frozen or not. | [optional] |
| **state** | **String** | The customer&#39;s state. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PatchInternalCustomerBankModel.new(
  stored_at: null,
  frozen: null,
  state: null
)
```

