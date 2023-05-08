# CybridApiBank::PostExternalWalletBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the account. |  |
| **customer_guid** | **String** | The customer identifier. |  |
| **asset** | **String** | The asset code. |  |
| **address** | **String** | The blockchain wallet address for the wallet. |  |
| **tag** | **String** | The blockchain tag to use when transferring crypto to the wallet. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostExternalWalletBankModel.new(
  name: null,
  customer_guid: null,
  asset: null,
  address: null,
  tag: null
)
```

