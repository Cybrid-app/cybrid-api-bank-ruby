# CybridApiBank::PostIdentityRecordBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_guid** | **String** | The customer&#39;s identifier. |  |
| **type** | **String** | The identity record&#39;s type. |  |
| **attestation_details** | [**PostIdentityRecordAttestationDetailsBankModel**](PostIdentityRecordAttestationDetailsBankModel.md) |  |  |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostIdentityRecordBankModel.new(
  customer_guid: null,
  type: null,
  attestation_details: null
)
```

