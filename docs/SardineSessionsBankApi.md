# CybridApiBank::SardineSessionsBankApi

All URIs are relative to *https://bank.sandbox.cybrid.app*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_sardine_session**](SardineSessionsBankApi.md#create_sardine_session) | **POST** /api/sardine_sessions | Create Sardine Session |


## create_sardine_session

> <SardineSessionBankModel> create_sardine_session(post_sardine_session_bank_model)

Create Sardine Session

Create a Sardine session.  Required scope: **sardine_sessions:execute**

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

api_instance = CybridApiBank::SardineSessionsBankApi.new
post_sardine_session_bank_model = CybridApiBank::PostSardineSessionBankModel.new # PostSardineSessionBankModel | 

begin
  # Create Sardine Session
  result = api_instance.create_sardine_session(post_sardine_session_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling SardineSessionsBankApi->create_sardine_session: #{e}"
end
```

#### Using the create_sardine_session_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SardineSessionBankModel>, Integer, Hash)> create_sardine_session_with_http_info(post_sardine_session_bank_model)

```ruby
begin
  # Create Sardine Session
  data, status_code, headers = api_instance.create_sardine_session_with_http_info(post_sardine_session_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SardineSessionBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling SardineSessionsBankApi->create_sardine_session_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_sardine_session_bank_model** | [**PostSardineSessionBankModel**](PostSardineSessionBankModel.md) |  |  |

### Return type

[**SardineSessionBankModel**](SardineSessionBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

