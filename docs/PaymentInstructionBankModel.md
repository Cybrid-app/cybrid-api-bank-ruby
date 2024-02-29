# CybridApiBank::PaymentInstructionBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the payment instruction. | [optional] |
| **customer_guid** | **String** | The customer identifier. | [optional] |
| **invoice_guid** | **String** | The invoice identifier. | [optional] |
| **created_at** | **Time** | ISO8601 datetime the record was created at. | [optional] |
| **updated_at** | **Time** | ISO8601 datetime the record was last updated at. | [optional] |
| **expired_at** | **Time** | ISO8601 datetime the instructions expired at. | [optional] |
| **failed_at** | **Time** | ISO8601 datetime the instructions failed to be created at. | [optional] |
| **network_address** | **String** | The network address to pay the invoice to. | [optional] |
| **expected_payment_asset** | **String** | The asset the payor must pay the invoice in, e.g., BTC. | [optional] |
| **expected_payment_amount** | **Integer** | The amount to be paid in base units of expected_payment_asset. | [optional] |
| **failure_code** | **String** | The reason code explaining the failure; ond of invoice_paid, invoice_cancelled, or invalid_amount. | [optional] |
| **state** | **String** | The state of the payment instruction; one of storing, created, expired, or failed. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PaymentInstructionBankModel.new(
  guid: null,
  customer_guid: null,
  invoice_guid: null,
  created_at: null,
  updated_at: null,
  expired_at: null,
  failed_at: null,
  network_address: null,
  expected_payment_asset: null,
  expected_payment_amount: null,
  failure_code: null,
  state: null
)
```

