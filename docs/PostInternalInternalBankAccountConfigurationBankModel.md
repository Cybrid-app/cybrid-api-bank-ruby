# CybridApiBank::PostInternalInternalBankAccountConfigurationBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of configuration: bank or platform. |  |
| **environment** | **String** | The environment the configuration is associated with. | [optional] |
| **bank_guid** | **String** | The bank identifier that the configuration is associated with. | [optional] |
| **transfer_bank_account_guid** | **String** | The identifier of the internal bank account to use for transfers. |  |
| **deposit_bank_account_guid** | **String** | The identifier of the internal bank account to use for deposit accounts. |  |
| **invoice_bank_account_guid** | **String** | The identifier of the internal bank account to use for invoice accounts. | [optional] |
| **asset** | **String** | The asset code. |  |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostInternalInternalBankAccountConfigurationBankModel.new(
  type: null,
  environment: null,
  bank_guid: null,
  transfer_bank_account_guid: null,
  deposit_bank_account_guid: null,
  invoice_bank_account_guid: null,
  asset: null
)
```

