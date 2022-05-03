# CybridApiBank::IdentityRecordBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the identity record. | [optional] |
| **customer_guid** | **String** | The customer&#39;s identifier. | [optional] |
| **type** | **String** | The identity record&#39;s type. | [optional] |
| **attestation_details** | [**AttestationDetailsBankModel**](AttestationDetailsBankModel.md) |  | [optional] |
| **created_at** | **Time** | ISO8601 datetime the customer was created at. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::IdentityRecordBankModel.new(
  guid: null,
  customer_guid: null,
  type: null,
  attestation_details: null,
  created_at: null
)
```

