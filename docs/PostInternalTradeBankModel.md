# CybridApiBank::PostInternalTradeBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **trade_type** | **String** | The type of trade. |  |
| **fiat_account_guid** | **String** | The identifier for the fiat account to use for the trade. Required if the customer or bank has multiple fiat accounts. | [optional] |
| **source_account_guid** | **String** | The identifier for the source account to use for the trade. Required if there are multiple cybrid accounts. | [optional] |
| **destination_account_guid** | **String** | The identifier for the destination account to use for the trade. Required if there are multiple cybrid accounts. | [optional] |
| **quote_guid** | **String** | The associated quote&#39;s identifier. |  |
| **environment** | **String** | The environment the quote is for. |  |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostInternalTradeBankModel.new(
  trade_type: null,
  fiat_account_guid: null,
  source_account_guid: null,
  destination_account_guid: null,
  quote_guid: null,
  environment: null
)
```

