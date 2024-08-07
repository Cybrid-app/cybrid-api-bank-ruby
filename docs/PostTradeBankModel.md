# CybridApiBank::PostTradeBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **trade_type** | **String** | The type of trade. | [optional][default to &#39;platform&#39;] |
| **quote_guid** | **String** | The associated quote&#39;s identifier. |  |
| **fiat_account_guid** | **String** | The identifier for the fiat account to use for the trade. Required if the customer or bank has multiple fiat accounts. | [optional] |
| **expected_error** | **String** | The optional expected error to simulate trade failure. | [optional] |
| **labels** | **Array&lt;String&gt;** | The labels associated with the trade. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostTradeBankModel.new(
  trade_type: null,
  quote_guid: null,
  fiat_account_guid: null,
  expected_error: null,
  labels: null
)
```

