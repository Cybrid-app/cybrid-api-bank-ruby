# CybridApiBank::PostCustomerAddressBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **street** | **String** | The first line of the address. Required when type is individual. | [optional] |
| **street2** | **String** | The optional second line of the address. Optional when type is individual. | [optional] |
| **city** | **String** | The city of the address. Required when type is individual. | [optional] |
| **subdivision** | **String** | The ISO 3166-2 subdivision code of the address; not used by all countries. Optional when type is individual. | [optional] |
| **postal_code** | **String** | The postal/post/zip code of the address; not used by all countries. Optional when type is individual. | [optional] |
| **country_code** | **String** | The ISO 3166 country 2-Alpha country code of the address. Required when type is individual. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostCustomerAddressBankModel.new(
  street: null,
  street2: null,
  city: null,
  subdivision: null,
  postal_code: null,
  country_code: null
)
```

