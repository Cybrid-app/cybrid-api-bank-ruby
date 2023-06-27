# cybrid_api_bank_ruby

CybridApiBank - the Ruby gem for the Cybrid Bank API

# Cybrid API documentation

Welcome to Cybrid, an all-in-one crypto platform that enables you to easily **build** and **launch** white-label crypto products or services.

In these documents, you'll find details on how our REST API operates and generally how our platform functions.

If you're looking for our UI SDK Widgets for Web or Mobile (iOS/Android), generated API clients, or demo applications, head over to our [Github repo](https://github.com/Cybrid-app).

💡 We recommend bookmarking the [Cybrid LinkTree](https://linktr.ee/cybridtechnologies) which contains many helpful links to platform resources.

## Getting Started

This is Cybrid's public interactive API documentation, which allows you to fully test our APIs. If you'd like to use a different tool to exercise our APIs, you can download the [Open API 3.0 yaml](https://bank.sandbox.cybrid.app/api/schema/v1/swagger.yaml) for import.

If you're new to our APIs and the Cybrid Platform, follow the below guides to get set up and familiar with the platform:

1. [Understanding the Platform](https://kb.cybrid.xyz/understanding-the-platform)
2. [Getting Started in the Cybrid Sandbox](https://kb.cybrid.xyz/getting-started-guide)
3. [Getting Ready for Trading](https://kb.cybrid.xyz/getting-ready-for-trading)
4. [Running the Web Demo App](https://kb.cybrid.xyz/locally-running-the-web-demo-app) (or, alternatively, [Testing with Hosted Web Demo App](https://kb.cybrid.xyz/testing-with-hosted-web-demo-app))

In [Getting Started in the Cybrid Sandbox](https://kb.cybrid.xyz/getting-started-guide), we walk you through how to use the [Cybrid Sandbox](https://id.sandbox.cybrid.app/) to create a test bank and generate API keys. In [Getting Ready for Trading](https://kb.cybrid.xyz/getting-ready-for-trading), we walk through creating customers, customer identities, accounts, as well as executing quotes and trades.

If you've already run through the first two guides, you can follow the [Running the Web Demo App](https://kb.cybrid.xyz/locally-running-the-web-demo-app) guide to test our web SDK with your sandbox `bank` and `customer`.

## Working with the Cybrid Platform

There are three primary ways you can interact with the Cybrid platform:

1. Directly via our RESTful API (this documentation)
2. Using our API clients available in a variety of languages ([Angular](https://github.com/Cybrid-app/cybrid-api-bank-angular), [Java](https://github.com/Cybrid-app/cybrid-api-bank-java), [Kotlin](https://github.com/Cybrid-app/cybrid-api-bank-kotlin), [Python](https://github.com/Cybrid-app/cybrid-api-bank-python), [Ruby](https://github.com/Cybrid-app/cybrid-api-bank-ruby), [Swift](https://github.com/Cybrid-app/cybrid-api-bank-swift) or [Typescript](https://github.com/Cybrid-app/cybrid-api-bank-typescript))
3. Integrating a platform specific SDK ([Web](https://github.com/Cybrid-app/cybrid-sdk-web), [Android](https://github.com/Cybrid-app/cybrid-sdk-android), [iOS](https://github.com/Cybrid-app/cybrid-sdk-ios))

Our complete set of APIs allows you to manage resources across three distinct areas: your `Organization`, your `Banks` and your `Identities`. For most of your testing and interaction you'll be using the `Bank` API, which is where the majority of APIs reside.

*The complete set of APIs can be found on the following pages:*

| API                                                              | Description                                                 |
|------------------------------------------------------------------|-------------------------------------------------------------|
| [Organization API](https://organization.sandbox.cybrid.app/api/schema/swagger-ui)   | APIs to manage organizations                                |
| [Bank API](https://bank.sandbox.cybrid.app/api/schema/swagger-ui)                   | APIs to manage banks (and all downstream customer activity) |
| [Identities API](https://id.sandbox.cybrid.app/api/schema/swagger-ui)                       | APIs to manage organization and bank identities             |

For questions please contact [Support](mailto:support@cybrid.xyz) at any time for assistance, or contact the [Product Team](mailto:product@cybrid.xyz) for product suggestions.

## Authenticating with the API

The Cybrid Platform uses OAuth 2.0 Bearer Tokens to authenticate requests to the platform. Credentials to create `Organization` and `Bank` tokens can be generated via the [Cybrid Sandbox](https://id.sandbox.cybrid.app). Access tokens can be generated for a `Customer` as well via the [Cybrid IdP](https://id.sandbox.cybrid.app) as well.

An `Organization` access token applies broadly to the whole Organization and all of its `Banks`, whereas, a `Bank` access token is specific to an individual Bank. `Customer` tokens, similarly, are scoped to a specific customer in a bank.

Both `Organization` and `Bank` tokens can be created using the OAuth Client Credential Grant flow. Each Organization and Bank has its own unique `Client ID` and `Secret` that allows for machine-to-machine authentication.

A `Bank` can then generate `Customer` access tokens via API using our [Identities API](https://id.sandbox.cybrid.app/api/schema/swagger-ui).

<font color=\"orange\">**⚠️ Never share your Client ID or Secret publicly or in your source code repository.**</font>

Your `Client ID` and `Secret` can be exchanged for a time-limited `Bearer Token` by interacting with the Cybrid Identity Provider or through interacting with the **Authorize** button in this document.

The following curl command can be used to quickly generate a `Bearer Token` for use in testing the API or demo applications.

```
# Example request when using Bank credentials
curl -X POST https://id.sandbox.cybrid.app/oauth/token -d '{
    \"grant_type\": \"client_credentials\",
    \"client_id\": \"<Your Client ID>\",
    \"client_secret\": \"<Your Secret>\",
    \"scope\": \"banks:read banks:write accounts:read accounts:execute customers:read customers:write customers:execute prices:read quotes:execute quotes:read trades:execute trades:read transfers:execute transfers:read rewards:execute rewards:read external_bank_accounts:read external_bank_accounts:write external_bank_accounts:execute external_wallets:read external_wallets:execute workflows:read workflows:execute deposit_addresses:read deposit_addresses:execute\"
  }' -H \"Content-Type: application/json\"

# When using Organization credentials set `scope` to 'organizations:read organizations:write banks:read banks:write banks:execute customers:read accounts:read prices:read quotes:execute quotes:read trades:execute trades:read transfers:read transfers:execute external_bank_accounts:read external_wallets:read workflows:read deposit_addresses:read'
```
<font color=\"orange\">**⚠️ Note: The above curl will create a bearer token with full scope access. Delete scopes if you'd like to restrict access.**</font>

## Authentication Scopes

The Cybrid platform supports the use of scopes to control the level of access a token is limited to. Scopes do not grant access to resources; instead, they provide limits, in support of the least privilege principal.

The following scopes are available on the platform and can be requested when generating either an Organization, Bank or Customer token. Generally speaking, the _Read_ scope is required to read and list resources, the _Write_ scope is required to update a resource and the _Execute_ scope is required to create a resource.

| Resource              | Read scope (Token Type)                                    | Write scope (Token Type)                      | Execute scope (Token Type)                       |
|-----------------------|------------------------------------------------------------|-----------------------------------------------|--------------------------------------------------|
| Account               | accounts:read (Organization, Bank, Customer)               |                                               | accounts:execute (Bank, Customer)                |
| Bank                  | banks:read (Organization, Bank)                            | banks:write (Organization, Bank)              | banks:execute (Organization)                     |
| Customer              | customers:read (Organization, Bank, Customer)              | customers:write (Bank, Customer)              | customers:execute (Bank)                         |
| Deposit Address       | deposit_addresses:read (Organization, Bank, Customer)      | deposit_addresses:write (Bank, Customer)      | deposit_addresses:execute (Bank, Customer)       |
| External Bank Account | external_bank_accounts:read (Organization, Bank, Customer) | external_bank_accounts:write (Bank, Customer) | external_bank_accounts:execute (Bank, Customer)  |
| External Wallet       | external_wallet:read (Organization, Bank, Customer)        |                                               | external_wallet:execute (Bank, Customer)         |
| Organization          | organizations:read (Organization)                          | organizations:write (Organization)            |                                                  |
| Price                 | prices:read (Bank, Customer)                               |                                               |                                                  |
| Quote                 | quotes:read (Organization, Bank, Customer)                 |                                               | quotes:execute (Organization, Bank, Customer)    |
| Reward                | rewards:read (Bank, Customer)                              |                                               | rewards:execute (Bank)                           |
| Trade                 | trades:read (Organization, Bank, Customer)                 |                                               | trades:execute (Organization, Bank, Customer)    |
| Transfer              | transfers:read (Organization, Bank, Customer)              |                                               | transfers:execute (Organization, Bank, Customer) |
| Workflow              | workflows:read (Organization, Bank, Customer)              |                                               | workflows:execute (Bank, Customer)               |

## Available Endpoints

The available APIs for the [Identity](https://id.sandbox.cybrid.app/api/schema/swagger-ui), [Organization](https://organization.sandbox.cybrid.app/api/schema/swagger-ui) and [Bank](https://bank.sandbox.cybrid.app/api/schema/swagger-ui) API services are listed below:

| API Service  | Model                | API Endpoint Path              | Description                                                                                       |
|--------------|----------------------|--------------------------------|---------------------------------------------------------------------------------------------------|
| Identity     | Bank                 | /api/bank_applications         | Create and list banks                                                                             |
| Identity     | CustomerToken        | /api/customer_tokens           | Create customer JWT access tokens                                                                 |
| Identity     | Organization         | /api/organization_applications | Create and list organizations                                                                     |
| Organization | Organization         | /api/organizations             | APIs to retrieve and update organization name                                                     |
| Bank         | Account              | /api/accounts                  | Create and list accounts, which hold a specific asset for a customers                             |
| Bank         | Asset                | /api/assets                    | Get a list of assets supported by the platform (ex: BTC, ETH)                                     |
| Bank         | Bank                 | /api/banks                     | Create, update and list banks, the parent to customers, accounts, etc                             |
| Bank         | Customer             | /api/customers                 | Create and list customers                                                                         |
| Bank         | DepositAddress       | /api/deposit_addresses         | Create, get and list deposit addresses                                                            |
| Bank         | ExternalBankAccount  | /api/external_bank_accounts    | Create, get and list external bank accounts, which connect customer bank accounts to the platform |
| Bank         | ExternalWallet       | /api/external_wallets          | Create, get, list and delete external wallets, which connect customer wallets to the platform     |
| Bank         | IdentityVerification | /api/identity_verifications    | Create and list identity verifications, which are performed on customers for KYC                  |
| Bank         | Price                | /api/prices                    | Get the current prices for assets on the platform                                                 |
| Bank         | Quote                | /api/quotes                    | Create and list quotes, which are required to execute trades                                      |
| Bank         | Reward               | /api/rewards                   | Create a new reward (automates quote/trade for simplicity)                                        |
| Bank         | Symbol               | /api/symbols                   | Get a list of symbols supported for trade (ex: BTC-USD)                                           |
| Bank         | Trade                | /api/trades                    | Create and list trades, which buy or sell cryptocurrency                                          |
| Bank         | Transfer             | /api/transfers                 | Create, get and list transfers (e.g., funding, book)                                              |
| Bank         | Workflow             | /api/workflows                 | Create, get and list workflows                                                                    |

## Understanding Object Models & Endpoints

**Organizations**

An `Organization` is meant to represent the organization partnering with Cybrid to use our platform.

An `Organization` typically does not directly interact with `customers`. Instead, an Organization has one or more `banks`, which encompass the financial service offerings of the platform.

**Banks**

A `Bank` is owned by an `Organization` and can be thought of as an environment or container for `customers` and product offerings. Banks are created in either `Sandbox` or `Production` mode, where `Sandbox` is the environment that you would test, prototype and build in prior to moving to `Production`.

An `Organization` can have multiple `banks`, in either `Sandbox` or `Production` environments. A `Sandbox Bank` will be backed by stubbed data and process flows. For instance, funding source transfer processes as well as trades will be simulated rather than performed, however asset prices are representative of real-world values. You have an unlimited amount of simulated fiat currency for testing purposes.

**Customers**

`Customers` represent your banking users on the platform. At present, we offer support for `Individuals` as Customers.

`Customers` must be verified (i.e., KYC'd) in our system before they can play any part on the platform, which means they must have an associated and a passing `Identity Verification`. See the Identity Verifications section for more details on how a customer can be verified.

`Customers` must also have an `Account` to be able to transact, in the desired asset class. See the Accounts APIs for more details on setting up accounts for the customer.


This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: v0.74.16
- Package version: 0.74.16
- Build package: org.openapitools.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build cybrid_api_bank_ruby.gemspec
```

Then either install the gem locally:

```shell
gem install ./cybrid_api_bank_ruby-0.74.16.gem
```

(for development, run `gem install --dev ./cybrid_api_bank_ruby-0.74.16.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'cybrid_api_bank_ruby', '~> 0.74.16'

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
post_account_bank_model = CybridApiBank::PostAccountBankModel.new({type: 'trading', asset: 'asset_example', name: 'name_example'}) # PostAccountBankModel | 

begin
  #Create Account
  result = api_instance.create_account(post_account_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Exception when calling AccountsBankApi->create_account: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://bank.sandbox.cybrid.app*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*CybridApiBank::AccountsBankApi* | [**create_account**](docs/AccountsBankApi.md#create_account) | **POST** /api/accounts | Create Account
*CybridApiBank::AccountsBankApi* | [**get_account**](docs/AccountsBankApi.md#get_account) | **GET** /api/accounts/{account_guid} | Get Account
*CybridApiBank::AccountsBankApi* | [**list_accounts**](docs/AccountsBankApi.md#list_accounts) | **GET** /api/accounts | List Accounts
*CybridApiBank::AssetsBankApi* | [**list_assets**](docs/AssetsBankApi.md#list_assets) | **GET** /api/assets | Get assets list
*CybridApiBank::BanksBankApi* | [**create_bank**](docs/BanksBankApi.md#create_bank) | **POST** /api/banks | Create Bank
*CybridApiBank::BanksBankApi* | [**get_bank**](docs/BanksBankApi.md#get_bank) | **GET** /api/banks/{bank_guid} | Get Bank
*CybridApiBank::BanksBankApi* | [**list_banks**](docs/BanksBankApi.md#list_banks) | **GET** /api/banks | Get banks list
*CybridApiBank::BanksBankApi* | [**update_bank**](docs/BanksBankApi.md#update_bank) | **PATCH** /api/banks/{bank_guid} | Patch Bank
*CybridApiBank::CustomersBankApi* | [**create_customer**](docs/CustomersBankApi.md#create_customer) | **POST** /api/customers | Create Customer
*CybridApiBank::CustomersBankApi* | [**get_customer**](docs/CustomersBankApi.md#get_customer) | **GET** /api/customers/{customer_guid} | Get Customer
*CybridApiBank::CustomersBankApi* | [**list_customers**](docs/CustomersBankApi.md#list_customers) | **GET** /api/customers | Get customers list
*CybridApiBank::DepositAddressesBankApi* | [**create_deposit_address**](docs/DepositAddressesBankApi.md#create_deposit_address) | **POST** /api/deposit_addresses | Create Deposit Address
*CybridApiBank::DepositAddressesBankApi* | [**get_deposit_address**](docs/DepositAddressesBankApi.md#get_deposit_address) | **GET** /api/deposit_addresses/{deposit_address_guid} | Get Deposit Address
*CybridApiBank::DepositAddressesBankApi* | [**list_deposit_addresses**](docs/DepositAddressesBankApi.md#list_deposit_addresses) | **GET** /api/deposit_addresses | List Deposit Addresses
*CybridApiBank::ExternalBankAccountsBankApi* | [**create_external_bank_account**](docs/ExternalBankAccountsBankApi.md#create_external_bank_account) | **POST** /api/external_bank_accounts | Create ExternalBankAccount
*CybridApiBank::ExternalBankAccountsBankApi* | [**delete_external_bank_account**](docs/ExternalBankAccountsBankApi.md#delete_external_bank_account) | **DELETE** /api/external_bank_accounts/{external_bank_account_guid} | Delete External Bank Account
*CybridApiBank::ExternalBankAccountsBankApi* | [**get_external_bank_account**](docs/ExternalBankAccountsBankApi.md#get_external_bank_account) | **GET** /api/external_bank_accounts/{external_bank_account_guid} | Get External Bank Account
*CybridApiBank::ExternalBankAccountsBankApi* | [**list_external_bank_accounts**](docs/ExternalBankAccountsBankApi.md#list_external_bank_accounts) | **GET** /api/external_bank_accounts | Get external bank accounts list
*CybridApiBank::ExternalBankAccountsBankApi* | [**patch_external_bank_account**](docs/ExternalBankAccountsBankApi.md#patch_external_bank_account) | **PATCH** /api/external_bank_accounts/{external_bank_account_guid} | Patch ExternalBankAccount
*CybridApiBank::ExternalWalletsBankApi* | [**create_external_wallet**](docs/ExternalWalletsBankApi.md#create_external_wallet) | **POST** /api/external_wallets | Create ExternalWallet
*CybridApiBank::ExternalWalletsBankApi* | [**delete_external_wallet**](docs/ExternalWalletsBankApi.md#delete_external_wallet) | **DELETE** /api/external_wallets/{external_wallet_guid} | Delete External Wallet
*CybridApiBank::ExternalWalletsBankApi* | [**get_external_wallet**](docs/ExternalWalletsBankApi.md#get_external_wallet) | **GET** /api/external_wallets/{external_wallet_guid} | Get External Wallet
*CybridApiBank::ExternalWalletsBankApi* | [**list_external_wallets**](docs/ExternalWalletsBankApi.md#list_external_wallets) | **GET** /api/external_wallets | Get external wallets list
*CybridApiBank::IdentityVerificationsBankApi* | [**create_identity_verification**](docs/IdentityVerificationsBankApi.md#create_identity_verification) | **POST** /api/identity_verifications | Create Identity Verification
*CybridApiBank::IdentityVerificationsBankApi* | [**get_identity_verification**](docs/IdentityVerificationsBankApi.md#get_identity_verification) | **GET** /api/identity_verifications/{identity_verification_guid} | Get Identity Verification
*CybridApiBank::IdentityVerificationsBankApi* | [**list_identity_verifications**](docs/IdentityVerificationsBankApi.md#list_identity_verifications) | **GET** /api/identity_verifications | List Identity Verifications
*CybridApiBank::PricesBankApi* | [**list_prices**](docs/PricesBankApi.md#list_prices) | **GET** /api/prices | Get Price
*CybridApiBank::QuotesBankApi* | [**create_quote**](docs/QuotesBankApi.md#create_quote) | **POST** /api/quotes | Create Quote
*CybridApiBank::QuotesBankApi* | [**get_quote**](docs/QuotesBankApi.md#get_quote) | **GET** /api/quotes/{quote_guid} | Get Quote
*CybridApiBank::QuotesBankApi* | [**list_quotes**](docs/QuotesBankApi.md#list_quotes) | **GET** /api/quotes | Get quotes list
*CybridApiBank::RewardsBankApi* | [**create_rewards**](docs/RewardsBankApi.md#create_rewards) | **POST** /api/rewards | Create Reward
*CybridApiBank::RewardsBankApi* | [**get_reward**](docs/RewardsBankApi.md#get_reward) | **GET** /api/rewards/{reward_guid} | Get Reward
*CybridApiBank::RewardsBankApi* | [**list_rewards**](docs/RewardsBankApi.md#list_rewards) | **GET** /api/rewards | Get rewards list
*CybridApiBank::SymbolsBankApi* | [**list_symbols**](docs/SymbolsBankApi.md#list_symbols) | **GET** /api/symbols | Get Symbols list
*CybridApiBank::TradesBankApi* | [**create_trade**](docs/TradesBankApi.md#create_trade) | **POST** /api/trades | Create Trade
*CybridApiBank::TradesBankApi* | [**get_trade**](docs/TradesBankApi.md#get_trade) | **GET** /api/trades/{trade_guid} | Get Trade
*CybridApiBank::TradesBankApi* | [**list_trades**](docs/TradesBankApi.md#list_trades) | **GET** /api/trades | Get trades list
*CybridApiBank::TransfersBankApi* | [**create_transfer**](docs/TransfersBankApi.md#create_transfer) | **POST** /api/transfers | Create Transfer
*CybridApiBank::TransfersBankApi* | [**get_transfer**](docs/TransfersBankApi.md#get_transfer) | **GET** /api/transfers/{transfer_guid} | Get Transfer
*CybridApiBank::TransfersBankApi* | [**list_transfers**](docs/TransfersBankApi.md#list_transfers) | **GET** /api/transfers | Get transfers list
*CybridApiBank::WorkflowsBankApi* | [**create_workflow**](docs/WorkflowsBankApi.md#create_workflow) | **POST** /api/workflows | Create Workflow
*CybridApiBank::WorkflowsBankApi* | [**get_workflow**](docs/WorkflowsBankApi.md#get_workflow) | **GET** /api/workflows/{workflow_guid} | Get Workflow
*CybridApiBank::WorkflowsBankApi* | [**list_workflows**](docs/WorkflowsBankApi.md#list_workflows) | **GET** /api/workflows | Get workflows list


## Documentation for Models

 - [CybridApiBank::AccountBankModel](docs/AccountBankModel.md)
 - [CybridApiBank::AccountListBankModel](docs/AccountListBankModel.md)
 - [CybridApiBank::AssetBankModel](docs/AssetBankModel.md)
 - [CybridApiBank::AssetListBankModel](docs/AssetListBankModel.md)
 - [CybridApiBank::BankBankModel](docs/BankBankModel.md)
 - [CybridApiBank::BankListBankModel](docs/BankListBankModel.md)
 - [CybridApiBank::CustomerBankModel](docs/CustomerBankModel.md)
 - [CybridApiBank::CustomerListBankModel](docs/CustomerListBankModel.md)
 - [CybridApiBank::DepositAddressBankModel](docs/DepositAddressBankModel.md)
 - [CybridApiBank::DepositAddressListBankModel](docs/DepositAddressListBankModel.md)
 - [CybridApiBank::ErrorResponseBankModel](docs/ErrorResponseBankModel.md)
 - [CybridApiBank::ExternalBankAccountBankModel](docs/ExternalBankAccountBankModel.md)
 - [CybridApiBank::ExternalBankAccountListBankModel](docs/ExternalBankAccountListBankModel.md)
 - [CybridApiBank::ExternalWalletBankModel](docs/ExternalWalletBankModel.md)
 - [CybridApiBank::ExternalWalletListBankModel](docs/ExternalWalletListBankModel.md)
 - [CybridApiBank::IdentityVerificationBankModel](docs/IdentityVerificationBankModel.md)
 - [CybridApiBank::IdentityVerificationListBankModel](docs/IdentityVerificationListBankModel.md)
 - [CybridApiBank::IdentityVerificationWithDetailsAllOfBankModel](docs/IdentityVerificationWithDetailsAllOfBankModel.md)
 - [CybridApiBank::IdentityVerificationWithDetailsBankModel](docs/IdentityVerificationWithDetailsBankModel.md)
 - [CybridApiBank::PatchBankBankModel](docs/PatchBankBankModel.md)
 - [CybridApiBank::PatchExternalBankAccountBankModel](docs/PatchExternalBankAccountBankModel.md)
 - [CybridApiBank::PostAccountBankModel](docs/PostAccountBankModel.md)
 - [CybridApiBank::PostBankBankModel](docs/PostBankBankModel.md)
 - [CybridApiBank::PostCustomerAddressBankModel](docs/PostCustomerAddressBankModel.md)
 - [CybridApiBank::PostCustomerBankModel](docs/PostCustomerBankModel.md)
 - [CybridApiBank::PostCustomerNameBankModel](docs/PostCustomerNameBankModel.md)
 - [CybridApiBank::PostDepositAddressBankModel](docs/PostDepositAddressBankModel.md)
 - [CybridApiBank::PostExternalBankAccountBankModel](docs/PostExternalBankAccountBankModel.md)
 - [CybridApiBank::PostExternalWalletBankModel](docs/PostExternalWalletBankModel.md)
 - [CybridApiBank::PostIdentificationNumberBankModel](docs/PostIdentificationNumberBankModel.md)
 - [CybridApiBank::PostIdentityVerificationAddressBankModel](docs/PostIdentityVerificationAddressBankModel.md)
 - [CybridApiBank::PostIdentityVerificationBankModel](docs/PostIdentityVerificationBankModel.md)
 - [CybridApiBank::PostIdentityVerificationNameBankModel](docs/PostIdentityVerificationNameBankModel.md)
 - [CybridApiBank::PostQuoteBankModel](docs/PostQuoteBankModel.md)
 - [CybridApiBank::PostRewardBankModel](docs/PostRewardBankModel.md)
 - [CybridApiBank::PostTradeBankModel](docs/PostTradeBankModel.md)
 - [CybridApiBank::PostTransferBankModel](docs/PostTransferBankModel.md)
 - [CybridApiBank::PostWorkflowBankModel](docs/PostWorkflowBankModel.md)
 - [CybridApiBank::QuoteBankModel](docs/QuoteBankModel.md)
 - [CybridApiBank::QuoteListBankModel](docs/QuoteListBankModel.md)
 - [CybridApiBank::RewardBankModel](docs/RewardBankModel.md)
 - [CybridApiBank::RewardListBankModel](docs/RewardListBankModel.md)
 - [CybridApiBank::SymbolPriceBankModel](docs/SymbolPriceBankModel.md)
 - [CybridApiBank::TradeBankModel](docs/TradeBankModel.md)
 - [CybridApiBank::TradeListBankModel](docs/TradeListBankModel.md)
 - [CybridApiBank::TransferBankModel](docs/TransferBankModel.md)
 - [CybridApiBank::TransferListBankModel](docs/TransferListBankModel.md)
 - [CybridApiBank::WorkflowBankModel](docs/WorkflowBankModel.md)
 - [CybridApiBank::WorkflowWithDetailsAllOfBankModel](docs/WorkflowWithDetailsAllOfBankModel.md)
 - [CybridApiBank::WorkflowWithDetailsBankModel](docs/WorkflowWithDetailsBankModel.md)
 - [CybridApiBank::WorkflowsListBankModel](docs/WorkflowsListBankModel.md)


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
  - transfers:execute: transfers execute
  - transfers:read: transfers read
  - rewards:execute: rewards execute
  - rewards:read: rewards read
  - external_bank_accounts:read: external_bank_accounts read
  - external_bank_accounts:write: external_bank_accounts write
  - external_bank_accounts:execute: external_bank_accounts execute
  - external_wallets:read: external_wallets read
  - external_wallets:execute: external_wallets execute
  - workflows:read: workflows read
  - workflows:execute: workflows execute
  - deposit_addresses:read: deposit_addresses read
  - deposit_addresses:execute: deposit_addresses execute

