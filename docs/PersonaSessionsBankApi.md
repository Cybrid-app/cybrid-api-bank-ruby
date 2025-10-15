# CybridApiBank::PersonaSessionsBankApi

All URIs are relative to *https://bank.sandbox.cybrid.app*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_persona_session**](PersonaSessionsBankApi.md#create_persona_session) | **POST** /api/persona_sessions | Create Persona Session |


## create_persona_session

> <PersonaSessionBankModel> create_persona_session(post_persona_session_bank_model)

Create Persona Session

Create a Persona session.  Required scope: **persona_sessions:execute**

### Examples

```ruby
require 'time'
require 'cybrid_api_bank_ruby'
# setup authorization
CybridApiBank.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = CybridApiBank::PersonaSessionsBankApi.new
post_persona_session_bank_model = CybridApiBank::PostPersonaSessionBankModel.new({persona_inquiry_id: 'persona_inquiry_id_example', identity_verification_guid: 'identity_verification_guid_example'}) # PostPersonaSessionBankModel | 

begin
  # Create Persona Session
  result = api_instance.create_persona_session(post_persona_session_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling PersonaSessionsBankApi->create_persona_session: #{e}"
end
```

#### Using the create_persona_session_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PersonaSessionBankModel>, Integer, Hash)> create_persona_session_with_http_info(post_persona_session_bank_model)

```ruby
begin
  # Create Persona Session
  data, status_code, headers = api_instance.create_persona_session_with_http_info(post_persona_session_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PersonaSessionBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling PersonaSessionsBankApi->create_persona_session_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_persona_session_bank_model** | [**PostPersonaSessionBankModel**](PostPersonaSessionBankModel.md) |  |  |

### Return type

[**PersonaSessionBankModel**](PersonaSessionBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

