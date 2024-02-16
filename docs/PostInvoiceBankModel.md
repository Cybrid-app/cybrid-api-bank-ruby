# CybridApiBank::PostInvoiceBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset** | **String** | The asset code the customer will receive the funds in. |  |
| **customer_guid** | **String** | The unique identifier for the customer. | [optional] |
| **receive_amount** | **Integer** | The amount to be received in base units of the asset, i.e., the amount the customer will receive after fees. ONLY one of receive_amount or deliver_amount is required. | [optional] |
| **deliver_amount** | **Integer** | The amount to be delivered in base units of the asset, i.e., the amount the customer will receive before fees. ONLY one of receive_amount or deliver_amount is required. | [optional] |
| **labels** | **Array&lt;String&gt;** | The labels associated with the customer. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostInvoiceBankModel.new(
  asset: null,
  customer_guid: null,
  receive_amount: null,
  deliver_amount: null,
  labels: null
)
```

