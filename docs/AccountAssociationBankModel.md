# CybridApiBank::AccountAssociationBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the transfer account. |  |
| **type** | **String** | The type of transfer account; one of trading or external_bank_account. |  |
| **bank_guid** | **String** | The account&#39;s bank identifier. | [optional] |
| **customer_guid** | **String** | The account&#39;s customer identifier. | [optional] |
| **counterparty_guid** | **String** | The account&#39;s counterparty identifier. | [optional] |
| **asset** | **String** | The account asset, e.g., USD. |  |
| **requested_amount** | **Integer** | The requested amount in base units intended to transfer from or to the account. | [optional] |
| **quoted_amount** | **Integer** | The quoted amount in base units to transfer from or to the account. | [optional] |
| **executed_amount** | **Integer** | The executed amount in base units transferred from or to the account. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::AccountAssociationBankModel.new(
  guid: null,
  type: null,
  bank_guid: null,
  customer_guid: null,
  counterparty_guid: null,
  asset: null,
  requested_amount: null,
  quoted_amount: null,
  executed_amount: null
)
```

