# CybridApiBank::AccountBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The account type; one of trading, fee, fiat, gas, reserve, or invoice_operations. | [optional] |
| **guid** | **String** | Auto-generated unique identifier for the account. | [optional] |
| **created_at** | **Time** | ISO8601 datetime the record was created at. | [optional] |
| **updated_at** | **Time** | ISO8601 datetime the record was last updated at. | [optional] |
| **asset** | **String** | The asset code. | [optional] |
| **name** | **String** | The name of the account. | [optional] |
| **bank_guid** | **String** | The bank identifier associated with the account. | [optional] |
| **customer_guid** | **String** | The customer identifier associated with the account. | [optional] |
| **platform_balance** | **Integer** | The amount of funds that are in the account, in base units of the asset. | [optional] |
| **platform_available** | **Integer** | The amount of funds that are in the account, in base units of the asset, that are available for use on the platform. | [optional] |
| **state** | **String** | The state of the account; one of storing or created. | [optional] |
| **labels** | **Array&lt;String&gt;** | The labels associated with the account. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::AccountBankModel.new(
  type: null,
  guid: null,
  created_at: null,
  updated_at: null,
  asset: null,
  name: null,
  bank_guid: null,
  customer_guid: null,
  platform_balance: null,
  platform_available: null,
  state: null,
  labels: null
)
```

