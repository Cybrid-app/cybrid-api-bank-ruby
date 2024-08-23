# CybridApiBank::ExternalBankAccountPiiInnerBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **names** | **Array&lt;String&gt;** | Array of names on the account | [optional] |
| **addresses** | [**Array&lt;ExternalBankAccountPiiInnerAddressesInnerBankModel&gt;**](ExternalBankAccountPiiInnerAddressesInnerBankModel.md) | Array of addresses associated to the account | [optional] |
| **email_addresses** | **Array&lt;String&gt;** | Array of email addresses associated to the account | [optional] |
| **phone_numbers** | **Array&lt;String&gt;** | Array of phone numbers associated to the account | [optional] |
| **account_details** | [**Array&lt;DepositBankAccountAccountDetailsInnerBankModel&gt;**](DepositBankAccountAccountDetailsInnerBankModel.md) | The account details for the bank account. | [optional] |
| **routing_details** | [**Array&lt;ExternalBankAccountPiiInnerRoutingDetailsInnerBankModel&gt;**](ExternalBankAccountPiiInnerRoutingDetailsInnerBankModel.md) | The routing details for the bank account. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::ExternalBankAccountPiiInnerBankModel.new(
  names: null,
  addresses: null,
  email_addresses: null,
  phone_numbers: null,
  account_details: null,
  routing_details: null
)
```

