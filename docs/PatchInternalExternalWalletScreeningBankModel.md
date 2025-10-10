# CybridApiBank::PatchInternalExternalWalletScreeningBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **started_at** | **Time** | ISO8601 datetime the external wallet screening was started at. | [optional] |
| **decided_at** | **Time** | ISO8601 datetime the external wallet screening was decided at. | [optional] |
| **outcome** | **String** | The outcome of the external wallet screening. | [optional] |
| **comment** | **String** | The comment to justify the outcome. | [optional] |
| **reference_id** | **String** | An internal reference to look up the case. | [optional] |
| **failure_code** | **String** | The failure code for failed screenings. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PatchInternalExternalWalletScreeningBankModel.new(
  started_at: null,
  decided_at: null,
  outcome: null,
  comment: null,
  reference_id: null,
  failure_code: null
)
```

