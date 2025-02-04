# CybridApiBank::FilesBankApi

All URIs are relative to *https://bank.sandbox.cybrid.app*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_file**](FilesBankApi.md#create_file) | **POST** /api/files | Create File |
| [**get_file**](FilesBankApi.md#get_file) | **GET** /api/files/{file_guid} | Get File |
| [**list_files**](FilesBankApi.md#list_files) | **GET** /api/files | List Files |


## create_file

> <PlatformFileBankModel> create_file(post_file_bank_model)

Create File

Creates a file.  #### This feature is currently in preview mode and is not yet available for partner use.  ## Data  The attribute contains the base64 encoded file content. The value needs to be smaller than 10MB otherwise the Platform will reject the request. To upload files larger than 10MB do not provide the content and use the returned upload URL to provide the file.  ## State  | State | Description | |-------|-------------| | storing | The Platform is storing the file in our private store | | completed | The Platform has completed storing the file | | failed | The Platform failed to store the file |    Required scope: **files:execute**

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

api_instance = CybridApiBank::FilesBankApi.new
post_file_bank_model = CybridApiBank::PostFileBankModel.new({type: 'drivers_license_front', customer_guid: 'customer_guid_example', filename: 'filename_example', content_type: 'image/jpeg'}) # PostFileBankModel | 

begin
  # Create File
  result = api_instance.create_file(post_file_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling FilesBankApi->create_file: #{e}"
end
```

#### Using the create_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlatformFileBankModel>, Integer, Hash)> create_file_with_http_info(post_file_bank_model)

```ruby
begin
  # Create File
  data, status_code, headers = api_instance.create_file_with_http_info(post_file_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlatformFileBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling FilesBankApi->create_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_file_bank_model** | [**PostFileBankModel**](PostFileBankModel.md) |  |  |

### Return type

[**PlatformFileBankModel**](PlatformFileBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_file

> <PlatformFileBankModel> get_file(file_guid)

Get File

Retrieves a file.  Required scope: **files:read**

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

api_instance = CybridApiBank::FilesBankApi.new
file_guid = 'file_guid_example' # String | Identifier for the file.

begin
  # Get File
  result = api_instance.get_file(file_guid)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling FilesBankApi->get_file: #{e}"
end
```

#### Using the get_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlatformFileBankModel>, Integer, Hash)> get_file_with_http_info(file_guid)

```ruby
begin
  # Get File
  data, status_code, headers = api_instance.get_file_with_http_info(file_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlatformFileBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling FilesBankApi->get_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_guid** | **String** | Identifier for the file. |  |

### Return type

[**PlatformFileBankModel**](PlatformFileBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_files

> <PlatformFileListBankModel> list_files(opts)

List Files

Retrieves a list of files.  Required scope: **files:read**

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

api_instance = CybridApiBank::FilesBankApi.new
opts = {
  page: 56, # Integer | The page index to retrieve.
  per_page: 56, # Integer | The number of entities per page to return.
  guid: 'guid_example', # String | Comma separated file_guids to list files for.
  type: 'type_example', # String | Comma separated file types to list files for.
  state: 'state_example', # String | Comma separated file states to list files for.
  bank_guid: 'bank_guid_example', # String | Comma separated bank_guids to list files for.
  customer_guid: 'customer_guid_example' # String | Comma separated customer_guids to list files for.
}

begin
  # List Files
  result = api_instance.list_files(opts)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling FilesBankApi->list_files: #{e}"
end
```

#### Using the list_files_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlatformFileListBankModel>, Integer, Hash)> list_files_with_http_info(opts)

```ruby
begin
  # List Files
  data, status_code, headers = api_instance.list_files_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlatformFileListBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling FilesBankApi->list_files_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | The page index to retrieve. | [optional] |
| **per_page** | **Integer** | The number of entities per page to return. | [optional] |
| **guid** | **String** | Comma separated file_guids to list files for. | [optional] |
| **type** | **String** | Comma separated file types to list files for. | [optional] |
| **state** | **String** | Comma separated file states to list files for. | [optional] |
| **bank_guid** | **String** | Comma separated bank_guids to list files for. | [optional] |
| **customer_guid** | **String** | Comma separated customer_guids to list files for. | [optional] |

### Return type

[**PlatformFileListBankModel**](PlatformFileListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

