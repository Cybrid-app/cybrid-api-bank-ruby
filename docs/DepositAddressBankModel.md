# CybridApiBank::DepositAddressBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the identity verification. |  |
| **bank_guid** | **String** | The address&#39; bank identifier. |  |
| **customer_guid** | **String** | The address&#39; customer identifier. |  |
| **account_guid** | **String** | The address&#39; account identifier. |  |
| **created_at** | **Time** | ISO8601 datetime the address was created at. |  |
| **asset** | **String** | The asset the transfer is related to, e.g., USD. |  |
| **state** | **String** | The state of the address. |  |
| **address** | **String** | The blockchain address. | [optional] |
| **format** | **String** | The blockchain address format. | [optional] |
| **tag** | **String** | The blockchain address tag. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::DepositAddressBankModel.new(
  guid: null,
  bank_guid: null,
  customer_guid: null,
  account_guid: null,
  created_at: null,
  asset: null,
  state: null,
  address: null,
  format: null,
  tag: null
)
```

