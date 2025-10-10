# CybridApiBank::InternalExternalWalletScreeningBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | The identifier of the external wallet screening. | [optional] |
| **created_at** | **Time** | ISO8601 datetime the record was created at. | [optional] |
| **updated_at** | **Time** | ISO8601 datetime the record was last updated at. | [optional] |
| **external_wallet_guid** | **String** | The identifier of the external wallet that was screened. | [optional] |
| **state** | **String** | The state of the external wallet screening. | [optional] |
| **outcome** | **String** | The outcome of the external wallet screening. | [optional] |
| **failure_code** | **String** | The failure code of the external wallet screening. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::InternalExternalWalletScreeningBankModel.new(
  guid: null,
  created_at: null,
  updated_at: null,
  external_wallet_guid: null,
  state: null,
  outcome: null,
  failure_code: null
)
```

