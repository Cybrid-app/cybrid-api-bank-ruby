# CybridApiBank::InternalFundingDepositTransferBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** |  | [optional] |
| **created_at** | **Time** | ISO8601 datetime the record was created at. | [optional] |
| **updated_at** | **Time** | ISO8601 datetime the record was last updated at. | [optional] |
| **transfer_type** | **String** |  | [optional] |
| **organization_guid** | **String** |  | [optional] |
| **bank_guid** | **String** |  | [optional] |
| **customer_guid** | **String** |  | [optional] |
| **amount** | **Integer** |  | [optional] |
| **amount_asset** | **String** |  | [optional] |
| **payment_rail** | **String** |  | [optional] |
| **estimated_amount** | **Integer** |  | [optional] |
| **bank_fee** | **Integer** |  | [optional] |
| **bank_fee_asset** | **String** |  | [optional] |
| **platform_fee** | **Integer** |  | [optional] |
| **platform_fee_asset** | **String** |  | [optional] |
| **direction** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **failure_code** | **String** | The failure code for failed transfers. | [optional] |
| **fiat_account_guid** | **String** |  | [optional] |
| **fiat_account_organization_guid** | **String** |  | [optional] |
| **fiat_account_bank_guid** | **String** |  | [optional] |
| **fiat_account_customer_guid** | **String** |  | [optional] |
| **principal_account_guid** | **String** |  | [optional] |
| **bank_fee_account_guid** | **String** |  | [optional] |
| **bank_fee_account_organization_guid** | **String** |  | [optional] |
| **bank_fee_account_bank_guid** | **String** |  | [optional] |
| **bank_fee_account_customer_guid** | **String** |  | [optional] |
| **platform_fee_account_guid** | **String** |  | [optional] |
| **transfer_details** | **Object** | The raw details on the transfer from the bank. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::InternalFundingDepositTransferBankModel.new(
  guid: null,
  created_at: null,
  updated_at: null,
  transfer_type: null,
  organization_guid: null,
  bank_guid: null,
  customer_guid: null,
  amount: null,
  amount_asset: null,
  payment_rail: null,
  estimated_amount: null,
  bank_fee: null,
  bank_fee_asset: null,
  platform_fee: null,
  platform_fee_asset: null,
  direction: null,
  state: null,
  failure_code: null,
  fiat_account_guid: null,
  fiat_account_organization_guid: null,
  fiat_account_bank_guid: null,
  fiat_account_customer_guid: null,
  principal_account_guid: null,
  bank_fee_account_guid: null,
  bank_fee_account_organization_guid: null,
  bank_fee_account_bank_guid: null,
  bank_fee_account_customer_guid: null,
  platform_fee_account_guid: null,
  transfer_details: null
)
```

