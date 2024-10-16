# CybridApiBank::PostIdentityVerificationBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of identity verification. |  |
| **customer_guid** | **String** | The customer&#39;s identifier. | [optional] |
| **expected_behaviours** | **Array&lt;String&gt;** | The optional expected behaviour to simulate. | [optional] |
| **method** | **String** | The identity verification method. Required when type is counterparty, type is kyc, or type is bank_account. | [optional] |
| **counterparty_guid** | **String** | The counterparty&#39;s identifier. Required when type is counterparty. | [optional] |
| **country_code** | **String** | The ISO 3166 country 2-Alpha country the customer is being verified in. If not present, will default to the Bank&#39;s configured country code. Optional when type is kyc and method is id_and_selfie, type is kyc and method is tax_id_and_selfie, or type is kyc and method is business_registration. | [optional] |
| **name** | [**PostIdentityVerificationNameBankModel**](PostIdentityVerificationNameBankModel.md) |  | [optional] |
| **address** | [**PostIdentityVerificationAddressBankModel**](PostIdentityVerificationAddressBankModel.md) |  | [optional] |
| **date_of_birth** | **Date** | The customer&#39;s date of birth. Required when type is kyc and method is attested. | [optional] |
| **identification_numbers** | [**Array&lt;PostIdentificationNumberBankModel&gt;**](PostIdentificationNumberBankModel.md) | The customer&#39;s identification numbers. Required when type is kyc and method is attested. | [optional] |
| **external_bank_account_guid** | **String** | The external bank account&#39;s identifier. Required when type is bank_account. | [optional] |
| **phone_number** | **String** | The customer&#39;s phone number. Optional when type is bank_account and method is attested or type is bank_account and method is attested_ownership. | [optional] |
| **email_address** | **String** | The customer&#39;s email address. Optional when type is bank_account and method is attested or type is bank_account and method is attested_ownership. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostIdentityVerificationBankModel.new(
  type: null,
  customer_guid: null,
  expected_behaviours: null,
  method: null,
  counterparty_guid: null,
  country_code: null,
  name: null,
  address: null,
  date_of_birth: null,
  identification_numbers: null,
  external_bank_account_guid: null,
  phone_number: null,
  email_address: null
)
```

