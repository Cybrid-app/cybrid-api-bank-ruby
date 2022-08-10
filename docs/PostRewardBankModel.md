# CybridApiBank::PostRewardBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_guid** | **String** | The unique identifier for the customer. |  |
| **symbol** | **String** | Symbol the quote is being requested for. Format is \&quot;asset-counter_asset\&quot; in uppercase. See the Symbols API for a complete list of cryptocurrencies supported. |  |
| **receive_amount** | **Integer** | The amount to be received in base units of the currency: currency is \&quot;asset\&quot; for buy and \&quot;counter_asset\&quot; for sell. | [optional] |
| **deliver_amount** | **Integer** | The amount to be delivered in base units of the currency: currency is \&quot;counter_asset\&quot; for buy and \&quot;asset\&quot; for sell. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostRewardBankModel.new(
  customer_guid: null,
  symbol: null,
  receive_amount: null,
  deliver_amount: null
)
```

