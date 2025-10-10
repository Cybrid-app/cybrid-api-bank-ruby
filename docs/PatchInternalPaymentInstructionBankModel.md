# CybridApiBank::PatchInternalPaymentInstructionBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **stored_at** | **Time** | ISO8601 datetime the payment instruction was stored at. | [optional] |
| **expired_at** | **Time** | ISO8601 datetime the payment instruction was expired at. | [optional] |
| **failed_at** | **Time** | ISO8601 datetime the payment instruction failed to be created at. | [optional] |
| **network_address** | **String** | The network address to pay the invoice to. | [optional] |
| **expected_payment_asset** | **String** | The asset the payor must pay the invoice in, e.g., BTC. | [optional] |
| **expected_payment_amount** | **Integer** | The amount to be paid in base units of expected_payment_asset. | [optional] |
| **failure_code** | **String** | The failure code for failed payment instructions. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PatchInternalPaymentInstructionBankModel.new(
  stored_at: null,
  expired_at: null,
  failed_at: null,
  network_address: null,
  expected_payment_asset: null,
  expected_payment_amount: null,
  failure_code: null
)
```

