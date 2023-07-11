# CybridApiBank::DepositAddressBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the identity verification. | [optional] |
| **bank_guid** | **String** | The address&#39; bank identifier. | [optional] |
| **customer_guid** | **String** | The address&#39; customer identifier. | [optional] |
| **account_guid** | **String** | The address&#39; account identifier. | [optional] |
| **created_at** | **Time** | ISO8601 datetime the address was created at. | [optional] |
| **asset** | **String** | The asset the transfer is related to, e.g., USD. | [optional] |
| **state** | **String** | The state of the address. | [optional] |
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

