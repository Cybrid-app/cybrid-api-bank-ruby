# CybridApiBank::PostCounterpartyNameBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **full** | **String** | The counterparty&#39;s full name. Required when type is business. | [optional] |
| **first** | **String** | The counterparty&#39;s first name. Required when type is individual. | [optional] |
| **middle** | **String** | The counterparty&#39;s middle name. Optional when type is individual. | [optional] |
| **last** | **String** | The counterparty&#39;s last name. Required when type is individual. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostCounterpartyNameBankModel.new(
  full: null,
  first: null,
  middle: null,
  last: null
)
```

