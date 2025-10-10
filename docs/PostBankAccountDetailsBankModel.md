# CybridApiBank::PostBankAccountDetailsBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_code_type** | **String** | The type of bank code. |  |
| **bank_code** | **String** | The bank code. | [optional] |
| **account_identifier** | **String** | The account number or unique identifier for the account. |  |
| **account_identifier_type** | **String** | The type of account identifier. | [optional] |
| **payment_rail** | **String** | The payment rail used for the account. |  |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostBankAccountDetailsBankModel.new(
  bank_code_type: null,
  bank_code: null,
  account_identifier: null,
  account_identifier_type: null,
  payment_rail: null
)
```

