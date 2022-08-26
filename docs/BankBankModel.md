# CybridApiBank::BankBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the bank. |  |
| **organization_guid** | **String** | The organization&#39;s identifier. |  |
| **name** | **String** | The bank&#39;s name. |  |
| **type** | **String** | The bank&#39;s type. |  |
| **supported_trading_symbols** | **Array&lt;String&gt;** | The bank&#39;s list of supported trading symbols. | [optional] |
| **supported_savings_configuration** | **Hash&lt;String, Array&lt;String&gt;&gt;** | The bank&#39;s list of supported savings asset by provider. | [optional] |
| **features** | **Array&lt;String&gt;** | The bank&#39;s enabled features. |  |
| **created_at** | **Time** | ISO8601 datetime the bank was created at. |  |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::BankBankModel.new(
  guid: null,
  organization_guid: null,
  name: null,
  type: null,
  supported_trading_symbols: null,
  supported_savings_configuration: null,
  features: null,
  created_at: null
)
```

