# CybridApiBank::PostInternalExchangeOrderBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **environment** | **String** | The environment for the configuration. |  |
| **type** | **String** | The order type. |  |
| **trade_guids** | **Array&lt;String&gt;** | The trade guids to generate an order for |  |
| **side** | **String** | The side for the order. | [optional] |
| **symbol** | **String** | The symbol for the order | [optional] |
| **deliver_amount** | **Integer** | The amount to be delivered in base units of the currency | [optional] |
| **receive_amount** | **Integer** | The amount to be received in base units of the currency | [optional] |
| **source_payable_account_guid** | **String** | The source payable account guid to use for the order | [optional] |
| **source_receivable_account_guid** | **String** | The source receivable account guid to use for the order | [optional] |
| **fixed_amount** | **String** | The side to fix Optional when type is fixed. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostInternalExchangeOrderBankModel.new(
  environment: null,
  type: null,
  trade_guids: null,
  side: null,
  symbol: null,
  deliver_amount: null,
  receive_amount: null,
  source_payable_account_guid: null,
  source_receivable_account_guid: null,
  fixed_amount: null
)
```

