# CybridApiBank::PostInternalCountryCodeConfigurationBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of country code configuration: bank or platform. |  |
| **environment** | **String** | The environment the configuration is associated with. | [optional] |
| **bank_guid** | **String** | The bank identifier that the configuration is associated with. | [optional] |
| **jurisdiction_enabled** | **Boolean** | Flag indicating if the country code is configured for jurisdiction use. |  |
| **business_customers_enabled** | **Boolean** | Flag indicating if the country code is configured for business customers. |  |
| **individual_customers_enabled** | **Boolean** | Flag indicating if the country code is configured for individual customers. |  |
| **business_counterparties_enabled** | **Boolean** | Flag indicating if the country code is configured for business counterparties. |  |
| **individual_counterparties_enabled** | **Boolean** | Flag indicating if the country code is configured for individual counterparties. |  |
| **code** | **String** | The ISO 3166 2-Alpha country code. |  |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostInternalCountryCodeConfigurationBankModel.new(
  type: null,
  environment: null,
  bank_guid: null,
  jurisdiction_enabled: null,
  business_customers_enabled: null,
  individual_customers_enabled: null,
  business_counterparties_enabled: null,
  individual_counterparties_enabled: null,
  code: null
)
```

