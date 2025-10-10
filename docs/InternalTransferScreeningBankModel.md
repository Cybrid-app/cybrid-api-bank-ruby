# CybridApiBank::InternalTransferScreeningBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | The identifier of the transfer screening. | [optional] |
| **created_at** | **Time** | ISO8601 datetime the record was created at. | [optional] |
| **updated_at** | **Time** | ISO8601 datetime the record was last updated at. | [optional] |
| **transfer_guid** | **String** | The identifier of the transfer that was screened. | [optional] |
| **state** | **String** | The state of the transfer screening. | [optional] |
| **outcome** | **String** | The outcome of the transfer screening. | [optional] |
| **failure_code** | **String** | The failure code of the transfer screening. | [optional] |
| **hold_requested** | **String** | The hold type requested for the transfer. | [optional] |
| **features** | **Array&lt;String&gt;** | The enabled features on the screening. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::InternalTransferScreeningBankModel.new(
  guid: null,
  created_at: null,
  updated_at: null,
  transfer_guid: null,
  state: null,
  outcome: null,
  failure_code: null,
  hold_requested: null,
  features: null
)
```

