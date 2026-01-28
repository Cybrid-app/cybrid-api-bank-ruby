# CybridApiBank::PostIdentityVerificationBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of identity verification. |  |
| **customer_guid** | **String** | The customer&#39;s identifier. Required when type is kyc and method is attested_business_registration, type is kyc and method is attested_id_and_selfie, or type is kyc and method is attested_business_associate. | [optional] |
| **expected_behaviours** | **Array&lt;String&gt;** | The optional expected behaviour to simulate. | [optional] |
| **method** | **String** | The identity verification method. Required when type is counterparty, type is kyc, or type is bank_account. | [optional] |
| **counterparty_guid** | **String** | The counterparty&#39;s identifier. Required when type is counterparty. | [optional] |
| **country_code** | **String** | The ISO 3166 country 2-Alpha country the customer is being verified in. If not present, will default to the Bank&#39;s configured country code. Optional when type is kyc and method is id_and_selfie, type is kyc and method is tax_id_and_selfie, or type is kyc and method is business_registration. | [optional] |
| **require_tax_id** | **Boolean** | Whether the collection of the tax id is required during identity verification. This will default to SSN in USA and SIN in Canada. It&#39;s not used elsewhere. Optional when type is kyc and method is id_and_selfie. | [optional][default to false] |
| **name** | [**PostIdentityVerificationNameBankModel**](PostIdentityVerificationNameBankModel.md) |  | [optional] |
| **address** | [**PostIdentityVerificationAddressBankModel**](PostIdentityVerificationAddressBankModel.md) |  | [optional] |
| **date_of_birth** | **Date** | The customer&#39;s date of birth. Required when type is kyc and method is attested, type is kyc and method is attested_id_and_selfie, or type is kyc and method is attested_business_associate. | [optional] |
| **identification_numbers** | [**Array&lt;PostIdentificationNumberBankModel&gt;**](PostIdentificationNumberBankModel.md) | The customer&#39;s identification numbers. Required when type is kyc and method is attested, type is kyc and method is attested_business_registration, type is kyc and method is attested_id_and_selfie, or type is kyc and method is attested_business_associate. | [optional] |
| **aliases** | [**Array&lt;PostIdentityVerificationAliasesInnerBankModel&gt;**](PostIdentityVerificationAliasesInnerBankModel.md) | The aliases of the customer. Optional when type is kyc and method is attested_business_registration. | [optional] |
| **phone_number** | **String** | The customer&#39;s phone number. Required when type is kyc and method is attested_business_registration, type is kyc and method is attested_id_and_selfie, or type is kyc and method is attested_business_associate. Optional when type is bank_account and method is attested_ownership. | [optional] |
| **email_address** | **String** | The customer&#39;s email address. Required when type is kyc and method is attested_business_registration, type is kyc and method is attested_id_and_selfie, or type is kyc and method is attested_business_associate. Optional when type is bank_account and method is attested_ownership. | [optional] |
| **website** | **String** | The customer&#39;s website. Required when type is kyc and method is attested_business_registration. | [optional] |
| **nature_of_business** | **String** | The customer&#39;s nature of business. Required when type is kyc and method is attested_business_registration. | [optional] |
| **director_customer_guids** | **Array&lt;String&gt;** | The customer guids of the directors of the business Required when type is kyc and method is attested_business_registration. | [optional] |
| **ultimate_beneficial_owners** | [**Array&lt;PostUltimateBeneficialOwnerBankModel&gt;**](PostUltimateBeneficialOwnerBankModel.md) | The ultimate beneficial owners of the business with 10% or more ownership Required when type is kyc and method is attested_business_registration. | [optional] |
| **supporting_file_guids** | **Array&lt;String&gt;** | File guids supporting the verification Required when type is kyc and method is attested_business_registration, type is kyc and method is attested_id_and_selfie, or type is kyc and method is attested_business_associate. | [optional] |
| **occupation** | **String** | The customer&#39;s occupation. Required when type is kyc and method is attested_business_associate. Optional when type is kyc and method is attested_id_and_selfie. | [optional] |
| **biometrics_verified** | **Boolean** | Whether biometrics have been verified Required when type is kyc and method is attested_business_associate. | [optional] |
| **external_bank_account_guid** | **String** | The external bank account&#39;s identifier. Required when type is bank_account. | [optional] |

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
  require_tax_id: null,
  name: null,
  address: null,
  date_of_birth: null,
  identification_numbers: null,
  aliases: null,
  phone_number: null,
  email_address: null,
  website: null,
  nature_of_business: null,
  director_customer_guids: null,
  ultimate_beneficial_owners: null,
  supporting_file_guids: null,
  occupation: null,
  biometrics_verified: null,
  external_bank_account_guid: null
)
```

