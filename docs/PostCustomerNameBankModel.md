# CybridApiBank::PostCustomerNameBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **first** | **String** | The customer&#39;s first name. Required when type is individual. | [optional] |
| **middle** | **String** | The customer&#39;s middle name. Optional when type is individual. | [optional] |
| **last** | **String** | The customer&#39;s last name. Required when type is individual. | [optional] |
| **full** | **String** | The customer&#39;s full name. Required when type is business. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostCustomerNameBankModel.new(
  first: null,
  middle: null,
  last: null,
  full: null
)
```

