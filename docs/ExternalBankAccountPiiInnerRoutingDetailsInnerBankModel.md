# CybridApiBank::ExternalBankAccountPiiInnerRoutingDetailsInnerBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **routing_number_type** | **String** | The type of routing number; one of CPA, ABA, or IFSC. |  |
| **routing_number** | **String** | The routing number. |  |
| **payment_rail** | **String** | The payment rail this routing entry is configured for; one of EFT, ACH, RTP, FEDNOW, WIRE, SPEI, PIX, COELSA, PSE, ETRANSFER, IFSC, SBP, BEFTN, NGBANK, LBTR, SEPA, EASY_PAISA, FINJA, JAZZ_CASH, NAYA_PAY, SADA_PAY, KEBANK, HKBANK, MPESA, CNBANK, FPS, ALIPAY, or UNSPECIFIED. Null for accounts that did not specify a rail. | [optional] |
| **account_designation** | **String** | Account designation for India IFSC accounts; one of NRE or NRO. Null for non-IFSC accounts. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::ExternalBankAccountPiiInnerRoutingDetailsInnerBankModel.new(
  routing_number_type: null,
  routing_number: null,
  payment_rail: null,
  account_designation: null
)
```

