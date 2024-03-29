# CybridApiBank::DepositAddressBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the identity verification. | [optional] |
| **bank_guid** | **String** | The address&#39; bank identifier. | [optional] |
| **customer_guid** | **String** | The address&#39; customer identifier. | [optional] |
| **account_guid** | **String** | The address&#39; account identifier. | [optional] |
| **created_at** | **Time** | ISO8601 datetime the record was created at. | [optional] |
| **updated_at** | **Time** | ISO8601 datetime the record was last updated at. | [optional] |
| **asset** | **String** | The asset the transfer is related to, e.g., USD. | [optional] |
| **state** | **String** | The state of the address; one of storing or created. | [optional] |
| **address** | **String** | The blockchain address. | [optional] |
| **format** | **String** | The blockchain address format; one of standard or legacy. | [optional] |
| **tag** | **String** | The blockchain address tag. | [optional] |
| **labels** | **Array&lt;String&gt;** | The labels associated with the address. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::DepositAddressBankModel.new(
  guid: null,
  bank_guid: null,
  customer_guid: null,
  account_guid: null,
  created_at: null,
  updated_at: null,
  asset: null,
  state: null,
  address: null,
  format: null,
  tag: null,
  labels: null
)
```

