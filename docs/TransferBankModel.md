# CybridApiBank::TransferBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the trade. | [optional] |
| **transfer_type** | **String** | The type of transfer. | [optional] |
| **customer_guid** | **String** | The associated customer&#39;s identifier. | [optional] |
| **quote_guid** | **String** | The associated quote&#39;s identifier. | [optional] |
| **asset** | **String** | The asset the transfer is related to, e.g., USD. | [optional] |
| **side** | **String** | The direction of the quote: either &#39;buy&#39; or &#39;sell&#39;. | [optional] |
| **state** | **String** | The trade&#39;s state | [optional] |
| **amount** | **Integer** | The amount being transferred. | [optional] |
| **fee** | **Integer** | The fee associated with the trade. | [optional] |
| **created_at** | **Time** | ISO8601 datetime the bank was created at. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::TransferBankModel.new(
  guid: null,
  transfer_type: null,
  customer_guid: null,
  quote_guid: null,
  asset: null,
  side: null,
  state: null,
  amount: null,
  fee: null,
  created_at: null
)
```

