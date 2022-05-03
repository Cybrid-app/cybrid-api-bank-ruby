# CybridApiBank::PostVerificationKeyBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The verification key&#39;s type. |  |
| **algorithm** | **String** | The verification key&#39;s algorithm. |  |
| **public_key** | **String** | DER encoded public key in Base64 format. |  |
| **nonce** | **String** | Value signed in the **signature** field. |  |
| **signature** | **String** | Signature on **nonce** using PKCS1v15 padding and the SHA512 hashing algorithm in Base64 format. |  |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PostVerificationKeyBankModel.new(
  type: null,
  algorithm: null,
  public_key: null,
  nonce: null,
  signature: null
)
```

