# CybridApiBank::PatchTransferBankModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_participants** | [**Array&lt;PatchTransferParticipantBankModel&gt;**](PatchTransferParticipantBankModel.md) | The source participants for the transfer. | [optional] |
| **destination_participants** | [**Array&lt;PatchTransferParticipantBankModel&gt;**](PatchTransferParticipantBankModel.md) | The destination participants for the transfer. | [optional] |

## Example

```ruby
require 'cybrid_api_bank_ruby'

instance = CybridApiBank::PatchTransferBankModel.new(
  source_participants: null,
  destination_participants: null
)
```

