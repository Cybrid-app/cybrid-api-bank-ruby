# CybridApiBank::PostSardineSessionBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_guid** | **String** | The GUID of the customer the session is for. Required for organization and bank subject tokens. For customer subject tokens, this is inferred from the token. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostSardineSessionBankModel.new(
  customer_guid: null
)
```

