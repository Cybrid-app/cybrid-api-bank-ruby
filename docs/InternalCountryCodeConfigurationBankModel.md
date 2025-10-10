# CybridApiBank::InternalCountryCodeConfigurationBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the configuration. | [optional] |
| **type** | **String** | The type of country code configuration: bank or platform. | [optional] |
| **environment** | **String** | The environment the configuration is associated with. | [optional] |
| **bank_guid** | **String** | The bank identifier that the configuration is associated with. | [optional] |
| **jurisdiction_enabled** | **Boolean** | Flag indicating if the country code is configured for jurisdiction use. | [optional] |
| **business_customers_enabled** | **Boolean** | Flag indicating if the country code is configured for individual customers. | [optional] |
| **individual_customers_enabled** | **Boolean** | Flag indicating if the country code is configured for individual customers. | [optional] |
| **business_counterparties_enabled** | **Boolean** | Flag indicating if the country code is configured for business counterparties. | [optional] |
| **individual_counterparties_enabled** | **Boolean** | Flag indicating if the country code is configured for individual counterparties. | [optional] |
| **code** | **String** | The ISO 3166 country 2-Alpha country code. | [optional] |
| **created_at** | **Time** | ISO8601 datetime the record was created at. | [optional] |
| **updated_at** | **Time** | ISO8601 datetime the record was last updated at. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::InternalCountryCodeConfigurationBankModel.new(
  guid: null,
  type: null,
  environment: null,
  bank_guid: null,
  jurisdiction_enabled: null,
  business_customers_enabled: null,
  individual_customers_enabled: null,
  business_counterparties_enabled: null,
  individual_counterparties_enabled: null,
  code: null,
  created_at: null,
  updated_at: null
)
```

