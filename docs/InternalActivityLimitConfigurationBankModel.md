# CybridApiBank::InternalActivityLimitConfigurationBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Auto-generated unique identifier for the configuration. | [optional] |
| **type** | **String** | The type of configuration; one of platform, bank, or customer. | [optional] |
| **activity** | **String** | The (optional) activity the configuration is associated with; one of trading, funding, book_transfer, or crypto_transfer. | [optional] |
| **side** | **String** | The (optional) side the configuration is associated with; one of deposit or withdrawal. | [optional] |
| **environment** | **String** | The environment the configuration is associated with. | [optional] |
| **bank_guid** | **String** | The bank identifier that the configuration is associated with. | [optional] |
| **customer_guid** | **String** | The customer identifier that the configuration is associated with. | [optional] |
| **audience** | **String** | The payment rail. | [optional] |
| **country_code** | **String** | The ISO 3166 country 2-Alpha country code the configuration. | [optional] |
| **limits** | [**Array&lt;InternalActivityLimitBankModel&gt;**](InternalActivityLimitBankModel.md) | The limits for the configuration. | [optional] |
| **created_at** | **Time** | ISO8601 datetime the record was created at. | [optional] |
| **updated_at** | **Time** | ISO8601 datetime the record was last updated at. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::InternalActivityLimitConfigurationBankModel.new(
  guid: null,
  type: null,
  activity: null,
  side: null,
  environment: null,
  bank_guid: null,
  customer_guid: null,
  audience: null,
  country_code: null,
  limits: null,
  created_at: null,
  updated_at: null
)
```

