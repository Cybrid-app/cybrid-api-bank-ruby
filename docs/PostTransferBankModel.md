# CybridApiBank::PostTransferBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **quote_guid** | **String** | The associated quote&#39;s identifier. |  |
| **transfer_type** | **String** | The type of transfer. |  |
| **external_wallet_guid** | **String** | The customer&#39;s external wallet&#39;s identifier. | [optional] |
| **external_bank_account_guid** | **String** | The customer&#39;s &#39;plaid&#39; or &#39;plaid_processor_token&#39; external bank account&#39;s identifier. | [optional] |
| **one_time_address** | [**PostOneTimeAddressBankModel**](PostOneTimeAddressBankModel.md) |  | [optional] |
| **expected_error** | **String** | The optional expected error to simulate transfer failure. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostTransferBankModel.new(
  quote_guid: null,
  transfer_type: null,
  external_wallet_guid: null,
  external_bank_account_guid: null,
  one_time_address: null,
  expected_error: null
)
```

