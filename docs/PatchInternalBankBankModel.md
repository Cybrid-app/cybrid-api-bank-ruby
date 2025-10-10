# CybridApiBank::PatchInternalBankBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **raw_routing_details** | **Boolean** | True if the bank supports raw routing details for external bank accounts. | [optional] |
| **counterparty_external_accounts** | **Boolean** | True if the bank counterparty external bank accounts. | [optional] |
| **persona_theme_id** | **String** | The persona theme ID for the bank. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PatchInternalBankBankModel.new(
  raw_routing_details: null,
  counterparty_external_accounts: null,
  persona_theme_id: null
)
```

