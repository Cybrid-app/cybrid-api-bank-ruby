# CybridApiBank::InternalInvoiceBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the payment instruction. | [optional] |
| **created_at** | **Time** | ISO8601 datetime the record was created at. | [optional] |
| **updated_at** | **Time** | ISO8601 datetime the record was last updated at. | [optional] |
| **type** | **String** | The type of invoice; one of lightning. | [optional] |
| **organization_guid** | **String** |  | [optional] |
| **bank_guid** | **String** |  | [optional] |
| **customer_guid** | **String** |  | [optional] |
| **provider_id** | **String** |  | [optional] |
| **amount** | **Integer** |  | [optional] |
| **amount_asset** | **String** |  | [optional] |
| **bank_fee** | **Integer** |  | [optional] |
| **bank_fee_asset** | **String** |  | [optional] |
| **platform_fee** | **Integer** |  | [optional] |
| **platform_fee_asset** | **String** |  | [optional] |
| **credit_account_guid** | **String** |  | [optional] |
| **credit_account_organization_guid** | **String** |  | [optional] |
| **credit_account_bank_guid** | **String** |  | [optional] |
| **credit_account_customer_guid** | **String** |  | [optional] |
| **principal_account_guid** | **String** |  | [optional] |
| **bank_fee_account_guid** | **String** |  | [optional] |
| **bank_fee_account_organization_guid** | **String** |  | [optional] |
| **bank_fee_account_bank_guid** | **String** |  | [optional] |
| **bank_fee_account_customer_guid** | **String** |  | [optional] |
| **platform_fee_account_guid** | **String** |  | [optional] |
| **state** | **String** | The state of the invoice; one of storing, unpaid, cancelling, cancelled, settling, or paid. | [optional] |
| **labels** | **Array&lt;String&gt;** | The labels associated with the invoice. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::InternalInvoiceBankModel.new(
  guid: null,
  created_at: null,
  updated_at: null,
  type: null,
  organization_guid: null,
  bank_guid: null,
  customer_guid: null,
  provider_id: null,
  amount: null,
  amount_asset: null,
  bank_fee: null,
  bank_fee_asset: null,
  platform_fee: null,
  platform_fee_asset: null,
  credit_account_guid: null,
  credit_account_organization_guid: null,
  credit_account_bank_guid: null,
  credit_account_customer_guid: null,
  principal_account_guid: null,
  bank_fee_account_guid: null,
  bank_fee_account_organization_guid: null,
  bank_fee_account_bank_guid: null,
  bank_fee_account_customer_guid: null,
  platform_fee_account_guid: null,
  state: null,
  labels: null
)
```

