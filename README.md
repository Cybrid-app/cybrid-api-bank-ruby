# cybrid_api_bank_ruby

CybridApiBank - the Ruby gem for the Cybrid Bank API

# Welcome

Welcome to the Cybrid platform; enabling turnkey crypto banking services!

In these documents, you will find information on the operations provided by our platform, as well as details on how our REST API operates more generally.

Our complete set of APIs allows you to manage all your resources: your Organization, your banks and your identities. The complete set of APIs can be found on the following pages:

| API                                                            | Description                  |
|----------------------------------------------------------------|------------------------------|
| [Organization API](https://organization.demo.cybrid.app/api/schema/swagger-ui) | APIs to manage organizations |
| [Bank API](https://bank.demo.cybrid.app/api/schema/swagger-ui)                 | APIs to manage banks         |
| [Identities API](https://id.demo.cybrid.app/api/schema/swagger-ui)                     | APIs to manage identities    |

When you're ready, [request access](https://www.cybrid.xyz/access) to your Dashboard to view and administer your Organization. Once you've logged in, you can begin creating Banks, either for sandbox or production usage, and start enabling your customers to leverage DeFi and web3 with confidence.

If you have any questions, please contact [Support](mailto:support@cybrid.app) at any time so that we can help.

## Authentication

The Cybrid Platform uses OAuth 2.0 Bearer Tokens to authenticate requests to the platform. Credentials to create Organization and Bank tokens can be generated via your Dashboard ([request access](https://www.cybrid.xyz/access)).

An Organization Token applies broadly to the whole Organization and all of its Banks, whereas, a Bank Token is specific to an individual Bank.

Both Organization and Bank tokens can be created using the OAuth Client Credential Grant flow. Each Organization and Bank has its own unique Client ID and Secret that allows for machine-to-machine authentication.

**Never share your Client ID or Secret publicly or in your source code repository**

Your Client ID and Secret can be exchanged for a time-limited Bearer Token by interacting with the Cybrid Identity Provider or through interacting with the **Authorize** button in this document:

```
curl -X POST https://id.demo.cybrid.app/oauth/token -d '{
    \"grant_type\": \"client_credentials\",
    \"client_id\": \"<Your Client ID>\",
    \"client_secret\": \"<Your Secret>\",
    \"scope\": \"<Your requested scopes -- space separated>\"
  }' -H \"Content-Type: application/json\"
```

## Scopes

The Cybrid platform supports the use of scopes to control the level of access a token is limited to. Scopes do not grant access to resources; instead, they provide limits, in support of the least privilege principal.

The following scopes are available on the platform and can be requested when generating either an Organization or a Bank token. Generally speaking, the _Read_ scope is required to read and list resources, the _Write_ scope is required to update a resource and the _Execute_ scope is required to create a resource.

| Resource      | Read scope         | Write scope          | Execute scope     | Token Type         |
|---------------|--------------------|----------------------|-------------------|--------------------|
| Organizations | organizations:read | organizations:write  |                   | Organization/ Bank |
| Banks         | banks:read         | banks:write          | banks:execute     | Organization/ Bank |
| Customers     | customers:read     | customers:write      | customers:execute | Bank               |
| Assets        | prices:read        |                      |                   | Bank               |
| Accounts      | accounts:read      |                      | accounts:execute  | Bank               |
| Prices        | prices:read        |                      |                   | Bank               |
| Symbols       | prices:read        |                      |                   | Bank               |
| Quotes        | quotes:read        |                      | quotes:execute    | Bank               |
| Trades        | trades:read        |                      | trades:execute    | Bank               |

## Organizations

An Organization is meant to model the organization partnering with Cybrid to use our platform.

An Organization does not directly interact with customers. Instead, an Organization has one or more banks, which encompass the financial service offerings of the platform.

## Banks

A Bank is owned by an Organization and can be thought of as an environment or container for Customers and product offerings. An example of a Bank would be your customer facing banking website, or an internal staging environment for testing and integration.

An Organization can have multiple banks, in sandbox or production environments. A sandbox Bank will be backed by stubbed data and process flows. For instance, identity record and funding source processes will be simulated rather than performed.

## Customers

Customers represent your banking users on the platform. At present, we offer support for Individuals as Customers.

Customers must be verified in our system before they can play any part on the platform. See the Identity Records section for more details on how a customer can be verified.

Customers must also have an account to be able to transact. See the Accounts APIs for more details on setting up accounts for the customer.


This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: v0.30.40
- Package version: 0.30.40
- Build package: org.openapitools.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build cybrid_api_bank_ruby.gemspec
```

Then either install the gem locally:

```shell
gem install ./cybrid_api_bank_ruby-0.30.40.gem
```

(for development, run `gem install --dev ./cybrid_api_bank_ruby-0.30.40.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'cybrid_api_bank_ruby', '~> 0.30.40'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'cybrid_api_bank_ruby', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'cybrid_api_bank_ruby'

# Setup authorization
CybridApiBank.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = CybridApiBank::AccountsBankApi.new
post_account_bank_model = CybridApiBank::PostAccountBankModel.new({type: 'trading', customer_guid: 'customer_guid_example', asset: 'asset_example', name: 'name_example'}) # PostAccountBankModel | 

begin
  #Create Account
  result = api_instance.create_account(post_account_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Exception when calling AccountsBankApi->create_account: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://bank.demo.cybrid.app*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*CybridApiBank::AccountsBankApi* | [**create_account**](docs/AccountsBankApi.md#create_account) | **POST** /api/accounts | Create Account
*CybridApiBank::AccountsBankApi* | [**get_account**](docs/AccountsBankApi.md#get_account) | **GET** /api/accounts/{account_guid} | Get Account
*CybridApiBank::AccountsBankApi* | [**list_accounts**](docs/AccountsBankApi.md#list_accounts) | **GET** /api/accounts | List Accounts
*CybridApiBank::AssetsBankApi* | [**list_assets**](docs/AssetsBankApi.md#list_assets) | **GET** /api/assets | Get assets list
*CybridApiBank::BanksBankApi* | [**create_bank**](docs/BanksBankApi.md#create_bank) | **POST** /api/banks | Create Bank
*CybridApiBank::BanksBankApi* | [**get_bank**](docs/BanksBankApi.md#get_bank) | **GET** /api/banks/{bank_guid} | Get Bank
*CybridApiBank::BanksBankApi* | [**list_banks**](docs/BanksBankApi.md#list_banks) | **GET** /api/banks | Get banks list
*CybridApiBank::CustomersBankApi* | [**create_customer**](docs/CustomersBankApi.md#create_customer) | **POST** /api/customers | Create Customer
*CybridApiBank::CustomersBankApi* | [**get_customer**](docs/CustomersBankApi.md#get_customer) | **GET** /api/customers/{customer_guid} | Get Customer
*CybridApiBank::CustomersBankApi* | [**list_customers**](docs/CustomersBankApi.md#list_customers) | **GET** /api/customers | Get customers list
*CybridApiBank::IdentityRecordsBankApi* | [**create_identity_record**](docs/IdentityRecordsBankApi.md#create_identity_record) | **POST** /api/identity_records | Create Identity Record
*CybridApiBank::IdentityRecordsBankApi* | [**get_identity_record**](docs/IdentityRecordsBankApi.md#get_identity_record) | **GET** /api/identity_records/{identity_record_guid} | Get Identity Record
*CybridApiBank::IdentityRecordsBankApi* | [**list_identity_records**](docs/IdentityRecordsBankApi.md#list_identity_records) | **GET** /api/identity_records | List Identity Records
*CybridApiBank::PricesBankApi* | [**list_prices**](docs/PricesBankApi.md#list_prices) | **GET** /api/prices | Get Price
*CybridApiBank::QuotesBankApi* | [**create_quote**](docs/QuotesBankApi.md#create_quote) | **POST** /api/quotes | Create Quote
*CybridApiBank::QuotesBankApi* | [**get_quote**](docs/QuotesBankApi.md#get_quote) | **GET** /api/quotes/{quote_guid} | Get Quote
*CybridApiBank::QuotesBankApi* | [**list_quotes**](docs/QuotesBankApi.md#list_quotes) | **GET** /api/quotes | Get quotes list
*CybridApiBank::SymbolsBankApi* | [**list_symbols**](docs/SymbolsBankApi.md#list_symbols) | **GET** /api/symbols | Get Symbols list
*CybridApiBank::TradesBankApi* | [**create_trade**](docs/TradesBankApi.md#create_trade) | **POST** /api/trades | Create Trade
*CybridApiBank::TradesBankApi* | [**get_trade**](docs/TradesBankApi.md#get_trade) | **GET** /api/trades/{trade_guid} | Get Trade
*CybridApiBank::TradesBankApi* | [**list_trades**](docs/TradesBankApi.md#list_trades) | **GET** /api/trades | Get trades list
*CybridApiBank::TradingConfigurationsBankApi* | [**create_trading_configuration**](docs/TradingConfigurationsBankApi.md#create_trading_configuration) | **POST** /api/trading_configurations | Create TradingConfiguration
*CybridApiBank::TradingConfigurationsBankApi* | [**get_trading_configuration**](docs/TradingConfigurationsBankApi.md#get_trading_configuration) | **GET** /api/trading_configurations/{trading_configuration_guid} | Get TradingConfiguration
*CybridApiBank::TradingConfigurationsBankApi* | [**list_trading_configurations**](docs/TradingConfigurationsBankApi.md#list_trading_configurations) | **GET** /api/trading_configurations | List trading configurations
*CybridApiBank::VerificationKeysBankApi* | [**create_verification_key**](docs/VerificationKeysBankApi.md#create_verification_key) | **POST** /api/bank_verification_keys | Create VerificationKey
*CybridApiBank::VerificationKeysBankApi* | [**get_verification_key**](docs/VerificationKeysBankApi.md#get_verification_key) | **GET** /api/bank_verification_keys/{verification_key_guid} | Get VerificationKey
*CybridApiBank::VerificationKeysBankApi* | [**list_verification_keys**](docs/VerificationKeysBankApi.md#list_verification_keys) | **GET** /api/bank_verification_keys | Get Verification Keys list


## Documentation for Models

 - [CybridApiBank::AccountBankModel](docs/AccountBankModel.md)
 - [CybridApiBank::AccountListBankModel](docs/AccountListBankModel.md)
 - [CybridApiBank::AssetBankModel](docs/AssetBankModel.md)
 - [CybridApiBank::AssetListBankModel](docs/AssetListBankModel.md)
 - [CybridApiBank::AttestationDetailsBankModel](docs/AttestationDetailsBankModel.md)
 - [CybridApiBank::BankBankModel](docs/BankBankModel.md)
 - [CybridApiBank::BankListBankModel](docs/BankListBankModel.md)
 - [CybridApiBank::CustomerBankModel](docs/CustomerBankModel.md)
 - [CybridApiBank::CustomerListBankModel](docs/CustomerListBankModel.md)
 - [CybridApiBank::CybridAccountBankModel](docs/CybridAccountBankModel.md)
 - [CybridApiBank::ErrorResponseBankModel](docs/ErrorResponseBankModel.md)
 - [CybridApiBank::ExchangeAccountBankModel](docs/ExchangeAccountBankModel.md)
 - [CybridApiBank::ExchangeBankModel](docs/ExchangeBankModel.md)
 - [CybridApiBank::ExchangeListBankModel](docs/ExchangeListBankModel.md)
 - [CybridApiBank::ExchangeSettlementBankModel](docs/ExchangeSettlementBankModel.md)
 - [CybridApiBank::ExchangeSettlementExpectedPaymentBankModel](docs/ExchangeSettlementExpectedPaymentBankModel.md)
 - [CybridApiBank::ExchangeSettlementObligationBankModel](docs/ExchangeSettlementObligationBankModel.md)
 - [CybridApiBank::ExchangeSettlementPaymentOrderBankModel](docs/ExchangeSettlementPaymentOrderBankModel.md)
 - [CybridApiBank::FeeBankModel](docs/FeeBankModel.md)
 - [CybridApiBank::IdentityRecordBankModel](docs/IdentityRecordBankModel.md)
 - [CybridApiBank::IdentityRecordListBankModel](docs/IdentityRecordListBankModel.md)
 - [CybridApiBank::PostAccountBankModel](docs/PostAccountBankModel.md)
 - [CybridApiBank::PostBankBankModel](docs/PostBankBankModel.md)
 - [CybridApiBank::PostCustomerBankModel](docs/PostCustomerBankModel.md)
 - [CybridApiBank::PostFeeBankModel](docs/PostFeeBankModel.md)
 - [CybridApiBank::PostIdentityRecordAttestationDetailsBankModel](docs/PostIdentityRecordAttestationDetailsBankModel.md)
 - [CybridApiBank::PostIdentityRecordBankModel](docs/PostIdentityRecordBankModel.md)
 - [CybridApiBank::PostQuoteBankModel](docs/PostQuoteBankModel.md)
 - [CybridApiBank::PostTradeBankModel](docs/PostTradeBankModel.md)
 - [CybridApiBank::PostTradingConfigurationBankModel](docs/PostTradingConfigurationBankModel.md)
 - [CybridApiBank::PostVerificationKeyBankModel](docs/PostVerificationKeyBankModel.md)
 - [CybridApiBank::QuoteBankModel](docs/QuoteBankModel.md)
 - [CybridApiBank::QuoteListBankModel](docs/QuoteListBankModel.md)
 - [CybridApiBank::SymbolPriceBankModel](docs/SymbolPriceBankModel.md)
 - [CybridApiBank::SystemAccountBankModel](docs/SystemAccountBankModel.md)
 - [CybridApiBank::TradeBankModel](docs/TradeBankModel.md)
 - [CybridApiBank::TradeListBankModel](docs/TradeListBankModel.md)
 - [CybridApiBank::TradingConfigurationBankModel](docs/TradingConfigurationBankModel.md)
 - [CybridApiBank::TradingConfigurationListBankModel](docs/TradingConfigurationListBankModel.md)
 - [CybridApiBank::VerificationKeyBankModel](docs/VerificationKeyBankModel.md)
 - [CybridApiBank::VerificationKeyListBankModel](docs/VerificationKeyListBankModel.md)


## Documentation for Authorization


### BearerAuth

- **Type**: Bearer authentication (JWT)

### oauth2


- **Type**: OAuth
- **Flow**: application
- **Authorization URL**: 
- **Scopes**: 
  - banks:read: banks read
  - banks:write: banks write
  - accounts:read: accounts read
  - accounts:execute: accounts execute
  - customers:read: customers read
  - customers:write: customers write
  - customers:execute: customers execute
  - prices:read: prices read
  - quotes:execute: quotes execute
  - quotes:read: quotes read
  - trades:execute: trades execute
  - trades:read: trades read

