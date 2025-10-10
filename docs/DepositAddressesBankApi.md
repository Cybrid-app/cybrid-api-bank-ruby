# CybridApiBank::DepositAddressesBankApi

All URIs are relative to *http://api-platform-bank.local.cybrid.com:3002*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_deposit_address**](DepositAddressesBankApi.md#create_deposit_address) | **POST** /api/deposit_addresses | Create Deposit Address |
| [**get_deposit_address**](DepositAddressesBankApi.md#get_deposit_address) | **GET** /api/deposit_addresses/{deposit_address_guid} | Get Deposit Address |
| [**list_deposit_addresses**](DepositAddressesBankApi.md#list_deposit_addresses) | **GET** /api/deposit_addresses | List Deposit Addresses |


## create_deposit_address

> <DepositAddressBankModel> create_deposit_address(post_deposit_address_bank_model)

Create Deposit Address

Creates a deposit address.  ## State  | State | Description | |-------|-------------| | storing | The Platform is storing the deposit address details in our private store | | created | The Platform has created the deposit address |    Required scope: **deposit_addresses:execute**

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

api_instance = CybridApiBank::DepositAddressesBankApi.new
post_deposit_address_bank_model = CybridApiBank::PostDepositAddressBankModel.new({account_guid: 'account_guid_example'}) # PostDepositAddressBankModel | 

begin
  # Create Deposit Address
  result = api_instance.create_deposit_address(post_deposit_address_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling DepositAddressesBankApi->create_deposit_address: #{e}"
end
```

#### Using the create_deposit_address_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DepositAddressBankModel>, Integer, Hash)> create_deposit_address_with_http_info(post_deposit_address_bank_model)

```ruby
begin
  # Create Deposit Address
  data, status_code, headers = api_instance.create_deposit_address_with_http_info(post_deposit_address_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DepositAddressBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling DepositAddressesBankApi->create_deposit_address_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_deposit_address_bank_model** | [**PostDepositAddressBankModel**](PostDepositAddressBankModel.md) |  |  |

### Return type

[**DepositAddressBankModel**](DepositAddressBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_deposit_address

> <DepositAddressBankModel> get_deposit_address(deposit_address_guid)

Get Deposit Address

Retrieves a deposit address.  Required scope: **deposit_addresses:read**

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

api_instance = CybridApiBank::DepositAddressesBankApi.new
deposit_address_guid = 'deposit_address_guid_example' # String | Identifier for the deposit address.

begin
  # Get Deposit Address
  result = api_instance.get_deposit_address(deposit_address_guid)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling DepositAddressesBankApi->get_deposit_address: #{e}"
end
```

#### Using the get_deposit_address_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DepositAddressBankModel>, Integer, Hash)> get_deposit_address_with_http_info(deposit_address_guid)

```ruby
begin
  # Get Deposit Address
  data, status_code, headers = api_instance.get_deposit_address_with_http_info(deposit_address_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DepositAddressBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling DepositAddressesBankApi->get_deposit_address_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **deposit_address_guid** | **String** | Identifier for the deposit address. |  |

### Return type

[**DepositAddressBankModel**](DepositAddressBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_deposit_addresses

> <DepositAddressListBankModel> list_deposit_addresses(opts)

List Deposit Addresses

Retrieves a list of deposit addresses.  Required scope: **deposit_addresses:read**

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

api_instance = CybridApiBank::DepositAddressesBankApi.new
opts = {
  page: 56, # Integer | The page index to retrieve.
  per_page: 56, # Integer | The number of entities per page to return.
  guid: 'guid_example', # String | Comma separated guids to list deposit addresses for.
  bank_guid: 'bank_guid_example', # String | Comma separated bank_guids to list deposit addresses for.
  customer_guid: 'customer_guid_example', # String | Comma separated customer_guids to list deposit addresses for.
  label: 'label_example' # String | Comma separated labels to list deposit addresses for.
}

begin
  # List Deposit Addresses
  result = api_instance.list_deposit_addresses(opts)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling DepositAddressesBankApi->list_deposit_addresses: #{e}"
end
```

#### Using the list_deposit_addresses_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DepositAddressListBankModel>, Integer, Hash)> list_deposit_addresses_with_http_info(opts)

```ruby
begin
  # List Deposit Addresses
  data, status_code, headers = api_instance.list_deposit_addresses_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DepositAddressListBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling DepositAddressesBankApi->list_deposit_addresses_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | The page index to retrieve. | [optional] |
| **per_page** | **Integer** | The number of entities per page to return. | [optional] |
| **guid** | **String** | Comma separated guids to list deposit addresses for. | [optional] |
| **bank_guid** | **String** | Comma separated bank_guids to list deposit addresses for. | [optional] |
| **customer_guid** | **String** | Comma separated customer_guids to list deposit addresses for. | [optional] |
| **label** | **String** | Comma separated labels to list deposit addresses for. | [optional] |

### Return type

[**DepositAddressListBankModel**](DepositAddressListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

