# CybridApiBank::PostOneTimeAddressBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | The blockchain wallet address to transfer crypto to. |  |
| **tag** | **String** | The blockchain tag to use when transferring crypto. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostOneTimeAddressBankModel.new(
  address: null,
  tag: null
)
```

