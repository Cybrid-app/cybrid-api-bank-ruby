# CybridApiBank::ExternalWalletsBankApi

All URIs are relative to *https://bank.sandbox.cybrid.app*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_external_wallet**](ExternalWalletsBankApi.md#create_external_wallet) | **POST** /api/external_wallets | Create ExternalWallet |
| [**delete_external_wallet**](ExternalWalletsBankApi.md#delete_external_wallet) | **DELETE** /api/external_wallets/{external_wallet_guid} | Delete External Wallet |
| [**get_external_wallet**](ExternalWalletsBankApi.md#get_external_wallet) | **GET** /api/external_wallets/{external_wallet_guid} | Get External Wallet |
| [**list_external_wallets**](ExternalWalletsBankApi.md#list_external_wallets) | **GET** /api/external_wallets | Get external wallets list |


## create_external_wallet

> <ExternalWalletBankModel> create_external_wallet(post_external_wallet_bank_model)

Create ExternalWallet

Create an ExternalWallet.  ## Wallet creation  External Wallets can be created for a Bank or a Customer.  To create a wallet for your Bank, omit the `customer_guid` parameter in the request body. To create a wallet for your Customers, include the `customer_guid` parameter in the request body.  ## State  | State | Description | |-------|-------------| | storing | The Platform is storing the external wallet details in our private store | | pending | The Platform is waiting for the external wallet to be created | | completed | The Platform has created the external wallet | | failed | The Platform was not able to successfully create the external wallet | | deleting | The Platform is deleting the external wallet | | deleted | The Platform has deleted the external wallet |    External wallets can be added to the bank by leaving the customer_guid blank. External wallets added to the bank can be used by any customer of the bank.  External wallets can also be added to a specific customer by providing the customer_guid. External wallets added to a customer can only be used by that customer.  Required scope: **external_wallets:execute**

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

api_instance = CybridApiBank::ExternalWalletsBankApi.new
post_external_wallet_bank_model = CybridApiBank::PostExternalWalletBankModel.new({name: 'name_example', asset: 'asset_example', address: 'address_example'}) # PostExternalWalletBankModel | 

begin
  # Create ExternalWallet
  result = api_instance.create_external_wallet(post_external_wallet_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling ExternalWalletsBankApi->create_external_wallet: #{e}"
end
```

#### Using the create_external_wallet_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExternalWalletBankModel>, Integer, Hash)> create_external_wallet_with_http_info(post_external_wallet_bank_model)

```ruby
begin
  # Create ExternalWallet
  data, status_code, headers = api_instance.create_external_wallet_with_http_info(post_external_wallet_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExternalWalletBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling ExternalWalletsBankApi->create_external_wallet_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_external_wallet_bank_model** | [**PostExternalWalletBankModel**](PostExternalWalletBankModel.md) |  |  |

### Return type

[**ExternalWalletBankModel**](ExternalWalletBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_external_wallet

> <ExternalWalletBankModel> delete_external_wallet(external_wallet_guid)

Delete External Wallet

Deletes an external wallet.  Required scope: **external_wallets:execute**

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

api_instance = CybridApiBank::ExternalWalletsBankApi.new
external_wallet_guid = 'external_wallet_guid_example' # String | Identifier for the external wallet.

begin
  # Delete External Wallet
  result = api_instance.delete_external_wallet(external_wallet_guid)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling ExternalWalletsBankApi->delete_external_wallet: #{e}"
end
```

#### Using the delete_external_wallet_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExternalWalletBankModel>, Integer, Hash)> delete_external_wallet_with_http_info(external_wallet_guid)

```ruby
begin
  # Delete External Wallet
  data, status_code, headers = api_instance.delete_external_wallet_with_http_info(external_wallet_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExternalWalletBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling ExternalWalletsBankApi->delete_external_wallet_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_wallet_guid** | **String** | Identifier for the external wallet. |  |

### Return type

[**ExternalWalletBankModel**](ExternalWalletBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_external_wallet

> <ExternalWalletBankModel> get_external_wallet(external_wallet_guid)

Get External Wallet

Retrieves an external_wallet.  Required scope: **external_wallets:read**

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

api_instance = CybridApiBank::ExternalWalletsBankApi.new
external_wallet_guid = 'external_wallet_guid_example' # String | Identifier for the external_wallet.

begin
  # Get External Wallet
  result = api_instance.get_external_wallet(external_wallet_guid)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling ExternalWalletsBankApi->get_external_wallet: #{e}"
end
```

#### Using the get_external_wallet_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExternalWalletBankModel>, Integer, Hash)> get_external_wallet_with_http_info(external_wallet_guid)

```ruby
begin
  # Get External Wallet
  data, status_code, headers = api_instance.get_external_wallet_with_http_info(external_wallet_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExternalWalletBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling ExternalWalletsBankApi->get_external_wallet_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_wallet_guid** | **String** | Identifier for the external_wallet. |  |

### Return type

[**ExternalWalletBankModel**](ExternalWalletBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_external_wallets

> <ExternalWalletListBankModel> list_external_wallets(opts)

Get external wallets list

Retrieves a listing of external wallets.  Required scope: **external_wallets:read**

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

api_instance = CybridApiBank::ExternalWalletsBankApi.new
opts = {
  page: 56, # Integer | The page index to retrieve.
  per_page: 56, # Integer | The number of entities per page to return.
  owner: 'owner_example', # String | The owner of the entity.
  guid: 'guid_example', # String | Comma separated external_wallet_guids to list external_wallets for.
  bank_guid: 'bank_guid_example', # String | Comma separated bank_guids to list external_wallets for.
  customer_guid: 'customer_guid_example', # String | Comma separated customer_guids to list external_wallets for.
  counterparty_guid: 'counterparty_guid_example', # String | Comma separated counterparty_guids to list external_wallets for.
  asset: 'asset_example', # String | Comma separated assets to list external_wallets for.
  state: 'state_example' # String | Comma separated states to list external_wallets for.
}

begin
  # Get external wallets list
  result = api_instance.list_external_wallets(opts)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling ExternalWalletsBankApi->list_external_wallets: #{e}"
end
```

#### Using the list_external_wallets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExternalWalletListBankModel>, Integer, Hash)> list_external_wallets_with_http_info(opts)

```ruby
begin
  # Get external wallets list
  data, status_code, headers = api_instance.list_external_wallets_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExternalWalletListBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling ExternalWalletsBankApi->list_external_wallets_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | The page index to retrieve. | [optional] |
| **per_page** | **Integer** | The number of entities per page to return. | [optional] |
| **owner** | **String** | The owner of the entity. | [optional] |
| **guid** | **String** | Comma separated external_wallet_guids to list external_wallets for. | [optional] |
| **bank_guid** | **String** | Comma separated bank_guids to list external_wallets for. | [optional] |
| **customer_guid** | **String** | Comma separated customer_guids to list external_wallets for. | [optional] |
| **counterparty_guid** | **String** | Comma separated counterparty_guids to list external_wallets for. | [optional] |
| **asset** | **String** | Comma separated assets to list external_wallets for. | [optional] |
| **state** | **String** | Comma separated states to list external_wallets for. | [optional] |

### Return type

[**ExternalWalletListBankModel**](ExternalWalletListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

