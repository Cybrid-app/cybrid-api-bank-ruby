# CybridApiBank::BankBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the bank. |  |
| **organization_guid** | **String** | The organization&#39;s identifier. |  |
| **name** | **String** | The bank&#39;s name. |  |
| **type** | **String** | The bank type; one of sandbox or production. |  |
| **supported_trading_symbols** | **Array&lt;String&gt;** | The bank&#39;s list of supported trading symbols. | [optional] |
| **supported_fiat_account_assets** | **Array&lt;String&gt;** | The bank&#39;s list of supported fiat symbols. | [optional] |
| **supported_country_codes** | **Array&lt;String&gt;** | The bank&#39;s list of supported country codes. | [optional] |
| **features** | **Array&lt;String&gt;** | The bank&#39;s enabled features. |  |
| **created_at** | **Time** | ISO8601 datetime the record was created at. |  |
| **updated_at** | **Time** | ISO8601 datetime the record was last updated at. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::BankBankModel.new(
  guid: null,
  organization_guid: null,
  name: null,
  type: null,
  supported_trading_symbols: null,
  supported_fiat_account_assets: null,
  supported_country_codes: null,
  features: null,
  created_at: null,
  updated_at: null
)
```

