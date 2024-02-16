# CybridApiBank::InvoiceBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the payment instruction. | [optional] |
| **customer_guid** | **String** | The customer identifier. | [optional] |
| **account_guid** | **String** | The account payment will ultimately be received into. | [optional] |
| **created_at** | **Time** | ISO8601 datetime the record was created at. | [optional] |
| **updated_at** | **Time** | ISO8601 datetime the record was last updated at. | [optional] |
| **invoice_type** | **String** | The type of invoice; one of lightning. | [optional] |
| **asset** | **String** | The asset code the customer will receive the funds in. | [optional] |
| **receive_amount** | **Integer** | The amount to be received in base units of the asset, i.e., the amount the customer will receive after fees. ONLY one of receive_amount or deliver_amount is required. | [optional] |
| **deliver_amount** | **Integer** | The amount to be delivered in base units of the asset, i.e., the amount the customer will receive before fees. ONLY one of receive_amount or deliver_amount is required. | [optional] |
| **fee** | **Integer** | The fee associated with this invoice in base units of the asset. | [optional] |
| **state** | **String** | The state of the invoice; one of storing, unpaid, cancelling, cancelled, settling, or paid. | [optional] |
| **labels** | **Array&lt;String&gt;** | The labels associated with the invoice. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::InvoiceBankModel.new(
  guid: null,
  customer_guid: null,
  account_guid: null,
  created_at: null,
  updated_at: null,
  invoice_type: null,
  asset: null,
  receive_amount: null,
  deliver_amount: null,
  fee: null,
  state: null,
  labels: null
)
```

