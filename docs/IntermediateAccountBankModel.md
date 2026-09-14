# CybridApiBank::IntermediateAccountBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the transfer account. |  |
| **type** | **String** | The type of transfer account; one of trading, fiat, external_bank_account, or external_wallet. |  |
| **organization_guid** | **String** | The account&#39;s organization identifier. | [optional] |
| **bank_guid** | **String** | The account&#39;s bank identifier. | [optional] |
| **customer_guid** | **String** | The account&#39;s customer identifier. | [optional] |
| **counterparty_guid** | **String** | The account&#39;s counterparty identifier. | [optional] |
| **asset** | **String** | The account asset, e.g., USD. |  |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::IntermediateAccountBankModel.new(
  guid: null,
  type: null,
  organization_guid: null,
  bank_guid: null,
  customer_guid: null,
  counterparty_guid: null,
  asset: null
)
```

