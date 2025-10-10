# CybridApiBank::PostInternalExternalBankAccountCounterpartyNameBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **first** | **String** | The customer&#39;s first name. Used for individual accounts. | [optional] |
| **middle** | **String** | The customer&#39;s middle name. Used for individual accounts. | [optional] |
| **last** | **String** | The customer&#39;s last name. Used for individual accounts. | [optional] |
| **full** | **String** | The customers&#39;s full name on the account. Used for business accounts. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostInternalExternalBankAccountCounterpartyNameBankModel.new(
  first: null,
  middle: null,
  last: null,
  full: null
)
```

