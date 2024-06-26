# CybridApiBank::PostIdentityVerificationBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of identity verification. |  |
| **method** | **String** | The identity verification method. |  |
| **customer_guid** | **String** | The customer&#39;s identifier. | [optional] |
| **counterparty_guid** | **String** | The counterparty&#39;s identifier. | [optional] |
| **country_code** | **String** | The ISO 3166 country 2-Alpha country the customer is being verified in; required when method is set to &#39;id_and_selfie&#39;. If not present, will default to the Bank&#39;s configured country code. | [optional] |
| **name** | [**PostIdentityVerificationNameBankModel**](PostIdentityVerificationNameBankModel.md) |  | [optional] |
| **address** | [**PostIdentityVerificationAddressBankModel**](PostIdentityVerificationAddressBankModel.md) |  | [optional] |
| **date_of_birth** | **Date** | The customer&#39;s date of birth; required when type is set to &#39;kyc&#39; and method is set to &#39;attested&#39;. | [optional] |
| **phone_number** | **String** | The customer&#39;s phone number. | [optional] |
| **email_address** | **String** | The customer&#39;s email address. | [optional] |
| **identification_numbers** | [**Array&lt;PostIdentificationNumberBankModel&gt;**](PostIdentificationNumberBankModel.md) | The customer&#39;s identification numbers; required when type is set to &#39;kyc&#39; and method is set to &#39;attested&#39;. | [optional] |
| **external_bank_account_guid** | **String** | The external bank account&#39;s identifier. Required for &#39;bank_account&#39; type. | [optional] |
| **expected_behaviours** | **Array&lt;String&gt;** | The optional expected behaviour to simulate. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostIdentityVerificationBankModel.new(
  type: null,
  method: null,
  customer_guid: null,
  counterparty_guid: null,
  country_code: null,
  name: null,
  address: null,
  date_of_birth: null,
  phone_number: null,
  email_address: null,
  identification_numbers: null,
  external_bank_account_guid: null,
  expected_behaviours: null
)
```

