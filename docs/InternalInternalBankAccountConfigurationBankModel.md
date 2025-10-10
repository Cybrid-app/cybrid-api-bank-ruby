# CybridApiBank::InternalInternalBankAccountConfigurationBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the configuration. | [optional] |
| **type** | **String** | The type of configuration: bank or platform. | [optional] |
| **environment** | **String** | The environment the configuration is associated with. | [optional] |
| **bank_guid** | **String** | The bank identifier that the configuration is associated with. | [optional] |
| **transfer_bank_account_guid** | **String** | The identifier of the internal bank account to use for transfers. | [optional] |
| **deposit_bank_account_guid** | **String** | The identifier of the internal bank account to use for creating deposit accounts. | [optional] |
| **invoice_bank_account_guid** | **String** | The identifier of the internal bank account to use for creating invoice accounts. | [optional] |
| **asset** | **String** | The asset code. | [optional] |
| **created_at** | **Time** | ISO8601 datetime the record was created at. | [optional] |
| **updated_at** | **Time** | ISO8601 datetime the record was last updated at. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::InternalInternalBankAccountConfigurationBankModel.new(
  guid: null,
  type: null,
  environment: null,
  bank_guid: null,
  transfer_bank_account_guid: null,
  deposit_bank_account_guid: null,
  invoice_bank_account_guid: null,
  asset: null,
  created_at: null,
  updated_at: null
)
```

