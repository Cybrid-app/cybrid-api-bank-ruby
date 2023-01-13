# CybridApiBank::PostIdentityVerificationBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of identity verification. |  |
| **method** | **String** | The identity verification method. |  |
| **country_code** | **String** | The ISO 3166 country 2-Alpha country the customer is being verified in. If not present, will default to the Bank&#39;s configured country code. | [optional] |
| **customer_guid** | **String** | The customer&#39;s identifier. | [optional] |
| **expected_behaviours** | **Array&lt;String&gt;** | The optional expected behaviour to simulate. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostIdentityVerificationBankModel.new(
  type: null,
  method: null,
  country_code: null,
  customer_guid: null,
  expected_behaviours: null
)
```

