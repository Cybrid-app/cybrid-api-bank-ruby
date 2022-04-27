# CybridApiBank::AccountBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The account type. | [optional] |
| **guid** | **String** | Auto-generated unique identifier for the account. | [optional] |
| **created_at** | **Time** | ISO8601 datetime the account was created at. | [optional] |
| **asset** | **String** | The asset code. | [optional] |
| **name** | **String** | The name of the account. | [optional] |
| **bank_guid** | **String** | The bank identifier associated with the account. | [optional] |
| **customer_guid** | **String** | The customer identifier associated with the account. | [optional] |
| **selected** | **Boolean** | Flag indicating if the backstopped bank account is selected or not. | [optional] |
| **selected_at** | **Time** | ISO8601 datetime the backstopped bank account was last selected at. | [optional] |
| **deselected_at** | **Time** | ISO8601 datetime the backstopped bank account was last deselected at. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::AccountBankModel.new(
  type: null,
  guid: null,
  created_at: null,
  asset: null,
  name: null,
  bank_guid: null,
  customer_guid: null,
  selected: null,
  selected_at: null,
  deselected_at: null
)
```

