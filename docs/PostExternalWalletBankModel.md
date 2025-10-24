# CybridApiBank::PostExternalWalletBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the external wallet. |  |
| **customer_guid** | **String** | The customer identifier. | [optional] |
| **counterparty_guid** | **String** | The counterparty identifier. | [optional] |
| **asset** | **String** | The asset code. |  |
| **address** | **String** | The blockchain wallet address for the wallet. |  |
| **tag** | **String** | The blockchain tag to use when transferring crypto to the wallet. | [optional] |
| **expected_behaviours** | **Array&lt;String&gt;** | The optional expected behaviour to simulate. Only applicable wallets under sandbox banks. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostExternalWalletBankModel.new(
  name: null,
  customer_guid: null,
  counterparty_guid: null,
  asset: null,
  address: null,
  tag: null,
  expected_behaviours: null
)
```

