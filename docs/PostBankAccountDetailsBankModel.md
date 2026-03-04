# CybridApiBank::PostBankAccountDetailsBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_code** | **String** | The bank code. | [optional] |
| **account_identifier** | **String** | The account number or unique identifier for the account. |  |
| **account_identifier_type** | **String** | The type of account identifier. Must be PHONE_NUMBER for mobile wallet rails. Required when payment_rail is EASY_PAISA, payment_rail is FINJA, payment_rail is JAZZ_CASH, payment_rail is NAYA_PAY, or payment_rail is SADA_PAY. | [optional] |
| **payment_rail** | **String** | The payment rail used for the account. |  |
| **bank_code_type** | **String** | The type of bank code. Required when payment_rail is EFT, payment_rail is ACH, payment_rail is RTP, payment_rail is WIRE, payment_rail is SPEI, payment_rail is PIX, payment_rail is COELSA, payment_rail is PSE, payment_rail is ETRANSFER, payment_rail is IFSC, payment_rail is SBP, payment_rail is BEFTN, payment_rail is NGBANK, or payment_rail is UNSPECIFIED. | [optional] |
| **account_type** | **String** | The type of account. Required when payment_rail is PSE. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostBankAccountDetailsBankModel.new(
  bank_code: null,
  account_identifier: null,
  account_identifier_type: null,
  payment_rail: null,
  bank_code_type: null,
  account_type: null
)
```

