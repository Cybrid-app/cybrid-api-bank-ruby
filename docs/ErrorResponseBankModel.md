# CybridApiBank::ErrorResponseBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **Integer** | Status code for Http Request |  |
| **error_message** | **String** | Error message |  |
| **message_code** | **String** | Message code for Error |  |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::ErrorResponseBankModel.new(
  status: null,
  error_message: null,
  message_code: null
)
```

