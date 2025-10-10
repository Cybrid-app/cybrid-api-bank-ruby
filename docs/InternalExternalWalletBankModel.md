# CybridApiBank::InternalExternalWalletBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the account. | [optional] |
| **name** | **String** | The name of the account. | [optional] |
| **asset** | **String** | The asset code. | [optional] |
| **account_kind** | **String** | The type of account. | [optional] |
| **environment** | **String** | The environment that the exchange is operating in. | [optional] |
| **exchange_guid** | **String** | The exchange identifier. | [optional] |
| **customer_guid** | **String** | The customer identifier. | [optional] |
| **address** | **String** | The blockchain wallet address for the wallet. | [optional] |
| **tag** | **String** | The blockchain tag to use when transferring crypto to the wallet. | [optional] |
| **created_at** | **Time** | ISO8601 datetime the record was created at. | [optional] |
| **updated_at** | **Time** | ISO8601 datetime the record was last updated at. | [optional] |
| **state** | **String** | The state of an external wallet | [optional] |
| **failure_code** | **String** | The failure code of an external wallet (if any) | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::InternalExternalWalletBankModel.new(
  guid: null,
  name: null,
  asset: null,
  account_kind: null,
  environment: null,
  exchange_guid: null,
  customer_guid: null,
  address: null,
  tag: null,
  created_at: null,
  updated_at: null,
  state: null,
  failure_code: null
)
```

