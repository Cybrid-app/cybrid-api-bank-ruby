# CybridApiBank::ExternalWalletBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the wallet. | [optional] |
| **name** | **String** | The name of the wallet. | [optional] |
| **asset** | **String** | The asset code. | [optional] |
| **environment** | **String** | The environment that the wallet is configured for; one of sandbox or production. | [optional] |
| **bank_guid** | **String** | The bank identifier. | [optional] |
| **customer_guid** | **String** | The customer identifier. | [optional] |
| **address** | **String** | The blockchain wallet address for the wallet. | [optional] |
| **tag** | **String** | The blockchain tag to use when transferring crypto to the wallet. | [optional] |
| **created_at** | **Time** | ISO8601 datetime the record was created at. | [optional] |
| **updated_at** | **Time** | ISO8601 datetime the record was last updated at. | [optional] |
| **state** | **String** | The state of the external wallet; one of storing, pending, failed, completed, deleting, or deleted. | [optional] |
| **failure_code** | **String** | The failure code of an external wallet (if any) | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::ExternalWalletBankModel.new(
  guid: null,
  name: null,
  asset: null,
  environment: null,
  bank_guid: null,
  customer_guid: null,
  address: null,
  tag: null,
  created_at: null,
  updated_at: null,
  state: null,
  failure_code: null
)
```

