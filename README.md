# cybrid_api_bank_ruby

CybridApiBank - the Ruby gem for the Cybrid Bank API

# Cybrid API documentation

Welcome to Cybrid, an all-in-one crypto platform that enables you to easily **build** and **launch** white-label crypto products or services.

In these documents, you'll find details on how our REST API operates and generally how our platform functions.

If you're looking for our UI SDK Widgets for Web or Mobile (iOS/Android), generated API clients, or demo applications, head over to our [Github repo](https://github.com/Cybrid-app).

💡 We recommend bookmarking the [Cybrid LinkTree](https://linktr.ee/cybridtechnologies) which contains many helpful links to platform resources.

## Getting Started

This is Cybrid's public interactive API documentation, which allows you to fully test our APIs. If you'd like to use a different tool to exercise our APIs, you can download the [Open API 3.0 yaml](<api_platform_bank_swagger_schema_url>) for import.

If you're new to our APIs and the Cybrid Platform, follow the below guides to get set up and familiar with the platform:

1. [Introduction](https://docs.cybrid.xyz/docs/introduction)
2. [Platform Introduction](https://docs.cybrid.xyz/docs/how-is-cybrid-architected)
3. [Testing with Hosted Web Demo App](https://docs.cybrid.xyz/docs/testing-with-hosted-web-demo-app)

In [Getting Started in the Cybrid Sandbox](https://docs.cybrid.xyz/docs/how-do-i-get-started-with-the-sandbox), we walk you through how to use the [Cybrid Sandbox](https://id.sandbox.cybrid.app/) to create a test bank and generate API keys. In [Getting Ready for Trading](https://kb.cybrid.xyz/getting-ready-for-trading), we walk through creating customers, customer identities, accounts, as well as executing quotes and trades.

## Working with the Cybrid Platform

There are three primary ways you can interact with the Cybrid platform:

1. Directly via our RESTful API (this documentation)
2. Using our API clients available in a variety of languages ([Angular](https://github.com/Cybrid-app/cybrid-api-bank-angular), [Java](https://github.com/Cybrid-app/cybrid-api-bank-java), [Kotlin](https://github.com/Cybrid-app/cybrid-api-bank-kotlin), [Python](https://github.com/Cybrid-app/cybrid-api-bank-python), [Ruby](https://github.com/Cybrid-app/cybrid-api-bank-ruby), [Swift](https://github.com/Cybrid-app/cybrid-api-bank-swift) or [Typescript](https://github.com/Cybrid-app/cybrid-api-bank-typescript))
3. Integrating a platform specific SDK ([Web](https://github.com/Cybrid-app/cybrid-sdk-web), [Android](https://github.com/Cybrid-app/cybrid-sdk-android), [iOS](https://github.com/Cybrid-app/cybrid-sdk-ios))

Our complete set of APIs allows you to manage resources across three distinct areas: your `Organization`, your `Banks` and your `Identities`. For most of your testing and interaction you'll be using the `Bank` API, which is where the majority of APIs reside.

*The complete set of APIs can be found on the following pages:*

| API                                                              | Description                                                 |
|------------------------------------------------------------------|-------------------------------------------------------------|
| [Organization API](<api_platform_organization_swagger_ui_url>)   | APIs to manage organizations                                |
| [Bank API](<api_platform_bank_swagger_ui_url>)                   | APIs to manage banks (and all downstream customer activity) |
| [Identities API](<api_idp_swagger_ui_url>)                       | APIs to manage organization and bank identities             |

For questions please contact [Support](mailto:support@cybrid.xyz) at any time for assistance, or contact the [Product Team](mailto:product@cybrid.xyz) for product suggestions.

## Authenticating with the API

The Cybrid Platform uses OAuth 2.0 Bearer Tokens to authenticate requests to the platform. Credentials to create `Organization` and `Bank` tokens can be generated via the [Cybrid Sandbox](<api_idp_url>). Access tokens can be generated for a `Customer` as well via the [Cybrid IdP](<api_idp_url>) as well.

An `Organization` access token applies broadly to the whole Organization and all of its `Banks`, whereas, a `Bank` access token is specific to an individual Bank. `Customer` tokens, similarly, are scoped to a specific customer in a bank.

Both `Organization` and `Bank` tokens can be created using the OAuth Client Credential Grant flow. Each Organization and Bank has its own unique `Client ID` and `Secret` that allows for machine-to-machine authentication.

A `Bank` can then generate `Customer` access tokens via API using our [Identities API](<api_idp_swagger_ui_url>).

<font color=\"orange\">**⚠️ Never share your Client ID or Secret publicly or in your source code repository.**</font>

Your `Client ID` and `Secret` can be exchanged for a time-limited `Bearer Token` by interacting with the Cybrid Identity Provider or through interacting with the **Authorize** button in this document.

The following curl command can be used to quickly generate a `Bearer Token` for use in testing the API or demo applications.

```
# Example request when using Bank credentials
curl -X POST <api_idp_url>/oauth/token -d '{
    \"grant_type\": \"client_credentials\",
    \"client_id\": \"<Your Client ID>\",
    \"client_secret\": \"<Your Secret>\",
    \"scope\": \"<api_platform_bank_scopes>\"
  }' -H \"Content-Type: application/json\"

# When using Organization credentials set `scope` to '<api_platform_organization_scopes>'
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
| Counterparty          | counterparties:read (Organization, Bank, Customer)         | counterparties:write (Bank, Customer)         | counterparties:execute (Bank)                    |
| Deposit Address       | deposit_addresses:read (Organization, Bank, Customer)      | deposit_addresses:write (Bank, Customer)      | deposit_addresses:execute (Bank, Customer)       |
| External Bank Account | external_bank_accounts:read (Organization, Bank, Customer) | external_bank_accounts:write (Bank, Customer) | external_bank_accounts:execute (Bank, Customer)  |
| External Wallet       | external_wallet:read (Organization, Bank, Customer)        |                                               | external_wallet:execute (Bank, Customer)         |
| Organization          | organizations:read (Organization)                          | organizations:write (Organization)            |                                                  |
| User                  | users:read (Organization)                                  |                                               | users:execute (Organization)                     |
| Price                 | prices:read (Bank, Customer)                               |                                               |                                                  |
| Quote                 | quotes:read (Organization, Bank, Customer)                 |                                               | quotes:execute (Organization, Bank, Customer)    |
| Trade                 | trades:read (Organization, Bank, Customer)                 |                                               | trades:execute (Organization, Bank, Customer)    |
| Transfer              | transfers:read (Organization, Bank, Customer)              |                                               | transfers:execute (Organization, Bank, Customer) |
| Workflow              | workflows:read (Organization, Bank, Customer)              |                                               | workflows:execute (Bank, Customer)               |
| Invoice               | invoices:read (Organization, Bank, Customer)               | invoices:write (Bank, Customer)               | invoices:execute (Bank, Customer)                |

## Available Endpoints

The available APIs for the [Identity](<api_idp_swagger_ui_url>), [Organization](<api_platform_organization_swagger_ui_url>) and [Bank](<api_platform_bank_swagger_ui_url>) API services are listed below:

| API Service  | Model                | API Endpoint Path              | Description                                                                                       |
|--------------|----------------------|--------------------------------|---------------------------------------------------------------------------------------------------|
| Identity     | Bank                 | /api/bank_applications         | Create and list banks                                                                             |
| Identity     | CustomerToken        | /api/customer_tokens           | Create customer JWT access tokens                                                                 |
| Identity     | Organization         | /api/organization_applications | Create and list organizations                                                                     |
| Identity     | Organization         | /api/users                     | Create and list organization users                                                                |
| Organization | Organization         | /api/organizations             | APIs to retrieve and update organization name                                                     |
| Bank         | Account              | /api/accounts                  | Create and list accounts, which hold a specific asset for a customers                             |
| Bank         | Asset                | /api/assets                    | Get a list of assets supported by the platform (ex: BTC, ETH)                                     |
| Bank         | Bank                 | /api/banks                     | Create, update and list banks, the parent to customers, accounts, etc                             |
| Bank         | Customer             | /api/customers                 | Create and list customers                                                                         |
| Bank         | Counterparty         | /api/counterparties            | Create and list counterparties                                                                    |
| Bank         | DepositAddress       | /api/deposit_addresses         | Create, get and list deposit addresses                                                            |
| Bank         | ExternalBankAccount  | /api/external_bank_accounts    | Create, get and list external bank accounts, which connect customer bank accounts to the platform |
| Bank         | ExternalWallet       | /api/external_wallets          | Create, get, list and delete external wallets, which connect customer wallets to the platform     |
| Bank         | IdentityVerification | /api/identity_verifications    | Create and list identity verifications, which are performed on customers for KYC                  |
| Bank         | Invoice              | /api/invoices                  | Create, get, cancel and list invoices                                                             |
| Bank         | PaymentInstruction   | /api/payment_instructions      | Create, get and list payment instructions for invoices                                            |
| Bank         | Price                | /api/prices                    | Get the current prices for assets on the platform                                                 |
| Bank         | Quote                | /api/quotes                    | Create and list quotes, which are required to execute trades                                      |
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

- API version: v0.0.0
- Package version: 0.125.50
- Build package: org.openapitools.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build cybrid_api_bank_ruby.gemspec
```

Then either install the gem locally:

```shell
gem install ./cybrid_api_bank_ruby-0.125.50.gem
```

(for development, run `gem install --dev ./cybrid_api_bank_ruby-0.125.50.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'cybrid_api_bank_ruby', '~> 0.125.50'

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

All URIs are relative to *http://api-platform-bank.local.cybrid.com:3002*

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
*CybridApiBank::CounterpartiesBankApi* | [**create_counterparty**](docs/CounterpartiesBankApi.md#create_counterparty) | **POST** /api/counterparties | Create Counterparty
*CybridApiBank::CounterpartiesBankApi* | [**get_counterparty**](docs/CounterpartiesBankApi.md#get_counterparty) | **GET** /api/counterparties/{counterparty_guid} | Get Counterparty
*CybridApiBank::CounterpartiesBankApi* | [**list_counterparties**](docs/CounterpartiesBankApi.md#list_counterparties) | **GET** /api/counterparties | Get counterparties list
*CybridApiBank::CustomersBankApi* | [**create_customer**](docs/CustomersBankApi.md#create_customer) | **POST** /api/customers | Create Customer
*CybridApiBank::CustomersBankApi* | [**get_customer**](docs/CustomersBankApi.md#get_customer) | **GET** /api/customers/{customer_guid} | Get Customer
*CybridApiBank::CustomersBankApi* | [**list_customers**](docs/CustomersBankApi.md#list_customers) | **GET** /api/customers | Get customers list
*CybridApiBank::CustomersBankApi* | [**update_customer**](docs/CustomersBankApi.md#update_customer) | **PATCH** /api/customers/{customer_guid} | Patch Customer
*CybridApiBank::DepositAddressesBankApi* | [**create_deposit_address**](docs/DepositAddressesBankApi.md#create_deposit_address) | **POST** /api/deposit_addresses | Create Deposit Address
*CybridApiBank::DepositAddressesBankApi* | [**get_deposit_address**](docs/DepositAddressesBankApi.md#get_deposit_address) | **GET** /api/deposit_addresses/{deposit_address_guid} | Get Deposit Address
*CybridApiBank::DepositAddressesBankApi* | [**list_deposit_addresses**](docs/DepositAddressesBankApi.md#list_deposit_addresses) | **GET** /api/deposit_addresses | List Deposit Addresses
*CybridApiBank::DepositBankAccountsBankApi* | [**create_deposit_bank_account**](docs/DepositBankAccountsBankApi.md#create_deposit_bank_account) | **POST** /api/deposit_bank_accounts | Create Deposit Bank Account
*CybridApiBank::DepositBankAccountsBankApi* | [**get_deposit_bank_account**](docs/DepositBankAccountsBankApi.md#get_deposit_bank_account) | **GET** /api/deposit_bank_accounts/{deposit_bank_account_guid} | Get Deposit Bank Account
*CybridApiBank::DepositBankAccountsBankApi* | [**list_deposit_bank_accounts**](docs/DepositBankAccountsBankApi.md#list_deposit_bank_accounts) | **GET** /api/deposit_bank_accounts | List Deposit Bank Accounts
*CybridApiBank::ExecutionsBankApi* | [**create_execution**](docs/ExecutionsBankApi.md#create_execution) | **POST** /api/executions | Create Execution
*CybridApiBank::ExecutionsBankApi* | [**get_execution**](docs/ExecutionsBankApi.md#get_execution) | **GET** /api/executions/{execution_guid} | Get Execution
*CybridApiBank::ExternalBankAccountsBankApi* | [**create_external_bank_account**](docs/ExternalBankAccountsBankApi.md#create_external_bank_account) | **POST** /api/external_bank_accounts | Create ExternalBankAccount
*CybridApiBank::ExternalBankAccountsBankApi* | [**delete_external_bank_account**](docs/ExternalBankAccountsBankApi.md#delete_external_bank_account) | **DELETE** /api/external_bank_accounts/{external_bank_account_guid} | Delete External Bank Account
*CybridApiBank::ExternalBankAccountsBankApi* | [**get_external_bank_account**](docs/ExternalBankAccountsBankApi.md#get_external_bank_account) | **GET** /api/external_bank_accounts/{external_bank_account_guid} | Get External Bank Account
*CybridApiBank::ExternalBankAccountsBankApi* | [**list_external_bank_accounts**](docs/ExternalBankAccountsBankApi.md#list_external_bank_accounts) | **GET** /api/external_bank_accounts | Get external bank accounts list
*CybridApiBank::ExternalBankAccountsBankApi* | [**patch_external_bank_account**](docs/ExternalBankAccountsBankApi.md#patch_external_bank_account) | **PATCH** /api/external_bank_accounts/{external_bank_account_guid} | Patch ExternalBankAccount
*CybridApiBank::ExternalWalletsBankApi* | [**create_external_wallet**](docs/ExternalWalletsBankApi.md#create_external_wallet) | **POST** /api/external_wallets | Create ExternalWallet
*CybridApiBank::ExternalWalletsBankApi* | [**delete_external_wallet**](docs/ExternalWalletsBankApi.md#delete_external_wallet) | **DELETE** /api/external_wallets/{external_wallet_guid} | Delete External Wallet
*CybridApiBank::ExternalWalletsBankApi* | [**get_external_wallet**](docs/ExternalWalletsBankApi.md#get_external_wallet) | **GET** /api/external_wallets/{external_wallet_guid} | Get External Wallet
*CybridApiBank::ExternalWalletsBankApi* | [**list_external_wallets**](docs/ExternalWalletsBankApi.md#list_external_wallets) | **GET** /api/external_wallets | Get external wallets list
*CybridApiBank::FilesBankApi* | [**create_file**](docs/FilesBankApi.md#create_file) | **POST** /api/files | Create File
*CybridApiBank::FilesBankApi* | [**get_file**](docs/FilesBankApi.md#get_file) | **GET** /api/files/{file_guid} | Get File
*CybridApiBank::FilesBankApi* | [**list_files**](docs/FilesBankApi.md#list_files) | **GET** /api/files | List Files
*CybridApiBank::IdentityVerificationsBankApi* | [**create_identity_verification**](docs/IdentityVerificationsBankApi.md#create_identity_verification) | **POST** /api/identity_verifications | Create Identity Verification
*CybridApiBank::IdentityVerificationsBankApi* | [**get_identity_verification**](docs/IdentityVerificationsBankApi.md#get_identity_verification) | **GET** /api/identity_verifications/{identity_verification_guid} | Get Identity Verification
*CybridApiBank::IdentityVerificationsBankApi* | [**list_identity_verifications**](docs/IdentityVerificationsBankApi.md#list_identity_verifications) | **GET** /api/identity_verifications | List Identity Verifications
*CybridApiBank::InternalBankApi* | [**internal_claim_exchange_settlement_payment_order**](docs/InternalBankApi.md#internal_claim_exchange_settlement_payment_order) | **POST** /api/internal/exchange_settlement_payment_orders/{guid}/claim | Claim Exchange Settlement Payment Order
*CybridApiBank::InternalBankApi* | [**internal_claim_expected_payment**](docs/InternalBankApi.md#internal_claim_expected_payment) | **POST** /api/internal/expected_payments/{guid}/claim | Claim Expected Payment
*CybridApiBank::InternalBankApi* | [**internal_create_account**](docs/InternalBankApi.md#internal_create_account) | **POST** /api/internal/accounts | Create Account
*CybridApiBank::InternalBankApi* | [**internal_create_activity_limit_configuration**](docs/InternalBankApi.md#internal_create_activity_limit_configuration) | **POST** /api/internal/activity_limit_configurations | Create ActivityLimitConfiguration
*CybridApiBank::InternalBankApi* | [**internal_create_activity_report**](docs/InternalBankApi.md#internal_create_activity_report) | **POST** /api/internal/activity_reports | Create Activity Report
*CybridApiBank::InternalBankApi* | [**internal_create_bank**](docs/InternalBankApi.md#internal_create_bank) | **POST** /api/internal/banks | Create Bank
*CybridApiBank::InternalBankApi* | [**internal_create_bank_account_service**](docs/InternalBankApi.md#internal_create_bank_account_service) | **POST** /api/internal/bank_account_services | Create BankAccountService
*CybridApiBank::InternalBankApi* | [**internal_create_compliance_decision**](docs/InternalBankApi.md#internal_create_compliance_decision) | **POST** /api/internal/compliance_decisions | Create Compliance Decision
*CybridApiBank::InternalBankApi* | [**internal_create_country_code_configuration**](docs/InternalBankApi.md#internal_create_country_code_configuration) | **POST** /api/internal/country_code_configurations | Create CountryCodeConfiguration
*CybridApiBank::InternalBankApi* | [**internal_create_crypto_asset_configuration**](docs/InternalBankApi.md#internal_create_crypto_asset_configuration) | **POST** /api/internal/crypto_asset_configurations | Create CryptoAssetConfiguration
*CybridApiBank::InternalBankApi* | [**internal_create_cybrid_account**](docs/InternalBankApi.md#internal_create_cybrid_account) | **POST** /api/internal/cybrid_accounts | Create CybridAccount
*CybridApiBank::InternalBankApi* | [**internal_create_cybrid_gas_account_configuration**](docs/InternalBankApi.md#internal_create_cybrid_gas_account_configuration) | **POST** /api/internal/cybrid_gas_account_configurations | Create CybridGasAccountConfiguration
*CybridApiBank::InternalBankApi* | [**internal_create_deposit_bank_account**](docs/InternalBankApi.md#internal_create_deposit_bank_account) | **POST** /api/internal/deposit_bank_accounts | Create Deposit Bank Account
*CybridApiBank::InternalBankApi* | [**internal_create_exchange**](docs/InternalBankApi.md#internal_create_exchange) | **POST** /api/internal/exchanges | Create Exchange
*CybridApiBank::InternalBankApi* | [**internal_create_exchange_account**](docs/InternalBankApi.md#internal_create_exchange_account) | **POST** /api/internal/exchange_accounts | Create ExchangeAccount
*CybridApiBank::InternalBankApi* | [**internal_create_exchange_monitor**](docs/InternalBankApi.md#internal_create_exchange_monitor) | **POST** /api/internal/exchange_monitors | Create ExchangeMonitor
*CybridApiBank::InternalBankApi* | [**internal_create_exchange_order**](docs/InternalBankApi.md#internal_create_exchange_order) | **POST** /api/internal/exchange_orders | Create ExchangeOrder
*CybridApiBank::InternalBankApi* | [**internal_create_exchange_settlement**](docs/InternalBankApi.md#internal_create_exchange_settlement) | **POST** /api/internal/exchange_settlements | Create Exchange Settlement
*CybridApiBank::InternalBankApi* | [**internal_create_exchange_settlement_approval**](docs/InternalBankApi.md#internal_create_exchange_settlement_approval) | **POST** /api/internal/exchange_settlements/{guid}/approval | Create Exchange Settlement Approval
*CybridApiBank::InternalBankApi* | [**internal_create_exchange_settlement_completion**](docs/InternalBankApi.md#internal_create_exchange_settlement_completion) | **POST** /api/internal/exchange_settlements/{guid}/completion | Create Exchange Settlement Completion
*CybridApiBank::InternalBankApi* | [**internal_create_exchange_settlement_configuration**](docs/InternalBankApi.md#internal_create_exchange_settlement_configuration) | **POST** /api/internal/exchange_settlement_configurations | Create ExchangeSettlementConfiguration
*CybridApiBank::InternalBankApi* | [**internal_create_exchange_settlement_payment_order**](docs/InternalBankApi.md#internal_create_exchange_settlement_payment_order) | **POST** /api/internal/exchange_settlement_payment_orders | Create Exchange Settlement Payment Order
*CybridApiBank::InternalBankApi* | [**internal_create_expected_payment**](docs/InternalBankApi.md#internal_create_expected_payment) | **POST** /api/internal/expected_payments | Create Expected Payment
*CybridApiBank::InternalBankApi* | [**internal_create_external_bank_account**](docs/InternalBankApi.md#internal_create_external_bank_account) | **POST** /api/internal/external_bank_accounts | Create ExternalBankAccount
*CybridApiBank::InternalBankApi* | [**internal_create_external_wallet**](docs/InternalBankApi.md#internal_create_external_wallet) | **POST** /api/internal/external_wallets | Create ExternalWallet
*CybridApiBank::InternalBankApi* | [**internal_create_fee**](docs/InternalBankApi.md#internal_create_fee) | **POST** /api/internal/fees | Create Fee
*CybridApiBank::InternalBankApi* | [**internal_create_fee_configuration**](docs/InternalBankApi.md#internal_create_fee_configuration) | **POST** /api/internal/fee_configurations | Create FeeConfiguration
*CybridApiBank::InternalBankApi* | [**internal_create_fiat_asset_configuration**](docs/InternalBankApi.md#internal_create_fiat_asset_configuration) | **POST** /api/internal/fiat_asset_configurations | Create FiatAssetConfiguration
*CybridApiBank::InternalBankApi* | [**internal_create_file**](docs/InternalBankApi.md#internal_create_file) | **POST** /api/internal/files | Create File
*CybridApiBank::InternalBankApi* | [**internal_create_internal_bank_account**](docs/InternalBankApi.md#internal_create_internal_bank_account) | **POST** /api/internal/internal_bank_accounts | Create InternalBankAccount
*CybridApiBank::InternalBankApi* | [**internal_create_internal_bank_account_configuration**](docs/InternalBankApi.md#internal_create_internal_bank_account_configuration) | **POST** /api/internal/internal_bank_account_configurations | Create InternalBankAccountConfiguration
*CybridApiBank::InternalBankApi* | [**internal_create_internal_wallet**](docs/InternalBankApi.md#internal_create_internal_wallet) | **POST** /api/internal/internal_wallets | Create InternalWallet
*CybridApiBank::InternalBankApi* | [**internal_create_internal_wallet_configuration**](docs/InternalBankApi.md#internal_create_internal_wallet_configuration) | **POST** /api/internal/internal_wallet_configurations | Create InternalWalletConfiguration
*CybridApiBank::InternalBankApi* | [**internal_create_payout_symbol_configuration**](docs/InternalBankApi.md#internal_create_payout_symbol_configuration) | **POST** /api/internal/payout_symbol_configurations | Create PayoutSymbolConfiguration
*CybridApiBank::InternalBankApi* | [**internal_create_quote**](docs/InternalBankApi.md#internal_create_quote) | **POST** /api/internal/quotes | Create InternalQuote
*CybridApiBank::InternalBankApi* | [**internal_create_reconciliation**](docs/InternalBankApi.md#internal_create_reconciliation) | **POST** /api/internal/reconciliations | Create Reconciliation
*CybridApiBank::InternalBankApi* | [**internal_create_stage**](docs/InternalBankApi.md#internal_create_stage) | **POST** /api/internal/stages | Create Stage
*CybridApiBank::InternalBankApi* | [**internal_create_trade**](docs/InternalBankApi.md#internal_create_trade) | **POST** /api/internal/trades | Create Internal Trade
*CybridApiBank::InternalBankApi* | [**internal_create_trading_symbol_configuration**](docs/InternalBankApi.md#internal_create_trading_symbol_configuration) | **POST** /api/internal/trading_symbol_configurations | Create TradingSymbolConfiguration
*CybridApiBank::InternalBankApi* | [**internal_create_transaction_monitor**](docs/InternalBankApi.md#internal_create_transaction_monitor) | **POST** /api/internal/transaction_monitors | Create TransactionMonitor
*CybridApiBank::InternalBankApi* | [**internal_create_transfer**](docs/InternalBankApi.md#internal_create_transfer) | **POST** /api/internal/transfers | Create Transfer
*CybridApiBank::InternalBankApi* | [**internal_create_transfer_rail_configuration**](docs/InternalBankApi.md#internal_create_transfer_rail_configuration) | **POST** /api/internal/transfer_rail_configurations | Create TransferRailConfiguration
*CybridApiBank::InternalBankApi* | [**internal_create_transfer_screening**](docs/InternalBankApi.md#internal_create_transfer_screening) | **POST** /api/internal/transfer_screenings | Create TransferScreening
*CybridApiBank::InternalBankApi* | [**internal_create_wallet_service**](docs/InternalBankApi.md#internal_create_wallet_service) | **POST** /api/internal/wallet_services | Create WalletService
*CybridApiBank::InternalBankApi* | [**internal_crypto_funding_deposit_transfer**](docs/InternalBankApi.md#internal_crypto_funding_deposit_transfer) | **POST** /api/internal/crypto_funding_deposit_transfers | Create Crypto Funding Deposit Transfer
*CybridApiBank::InternalBankApi* | [**internal_delete_activity_limit_configuration**](docs/InternalBankApi.md#internal_delete_activity_limit_configuration) | **DELETE** /api/internal/activity_limit_configurations/{guid} | Delete ActivityLimitConfiguration
*CybridApiBank::InternalBankApi* | [**internal_delete_external_bank_account**](docs/InternalBankApi.md#internal_delete_external_bank_account) | **DELETE** /api/internal/external_bank_accounts/{external_bank_account_guid} | Delete External Bank Account
*CybridApiBank::InternalBankApi* | [**internal_funding_deposit_transfer**](docs/InternalBankApi.md#internal_funding_deposit_transfer) | **POST** /api/internal/funding_deposit_transfers | Create Funding Deposit Transfer
*CybridApiBank::InternalBankApi* | [**internal_get_bank**](docs/InternalBankApi.md#internal_get_bank) | **GET** /api/internal/banks/{bank_guid} | Get Bank
*CybridApiBank::InternalBankApi* | [**internal_get_bank_account_service**](docs/InternalBankApi.md#internal_get_bank_account_service) | **GET** /api/internal/bank_account_services/{bank_account_service_guid} | Get BankAccountService
*CybridApiBank::InternalBankApi* | [**internal_get_customer**](docs/InternalBankApi.md#internal_get_customer) | **GET** /api/internal/customers/{customer_guid} | Get Customer
*CybridApiBank::InternalBankApi* | [**internal_get_cybrid_account**](docs/InternalBankApi.md#internal_get_cybrid_account) | **GET** /api/internal/cybrid_accounts/{account_guid} | Get CybridAccount
*CybridApiBank::InternalBankApi* | [**internal_get_exchange**](docs/InternalBankApi.md#internal_get_exchange) | **GET** /api/internal/exchanges/{exchange_guid} | Get Exchange
*CybridApiBank::InternalBankApi* | [**internal_get_exchange_account**](docs/InternalBankApi.md#internal_get_exchange_account) | **GET** /api/internal/exchange_accounts/{account_guid} | Get ExchangeAccount
*CybridApiBank::InternalBankApi* | [**internal_get_exchange_settlement**](docs/InternalBankApi.md#internal_get_exchange_settlement) | **GET** /api/internal/exchange_settlements/{guid} | Get Exchange Settlement
*CybridApiBank::InternalBankApi* | [**internal_get_exchange_settlement_obligation**](docs/InternalBankApi.md#internal_get_exchange_settlement_obligation) | **GET** /api/internal/exchange_settlement_obligations/{guid} | Get Exchange Settlement Obligation
*CybridApiBank::InternalBankApi* | [**internal_get_exchange_settlement_payment_order**](docs/InternalBankApi.md#internal_get_exchange_settlement_payment_order) | **GET** /api/internal/exchange_settlement_payment_orders/{guid} | Get Exchange Settlement Payment Order
*CybridApiBank::InternalBankApi* | [**internal_get_execution**](docs/InternalBankApi.md#internal_get_execution) | **GET** /api/internal/executions/{execution_guid} | Get Execution
*CybridApiBank::InternalBankApi* | [**internal_get_expected_payment**](docs/InternalBankApi.md#internal_get_expected_payment) | **GET** /api/internal/expected_payments/{guid} | Get Expected Payment
*CybridApiBank::InternalBankApi* | [**internal_get_external_bank_account**](docs/InternalBankApi.md#internal_get_external_bank_account) | **GET** /api/internal/external_bank_accounts/{external_bank_account_guid} | Get ExternalBankAccount
*CybridApiBank::InternalBankApi* | [**internal_get_external_wallet**](docs/InternalBankApi.md#internal_get_external_wallet) | **GET** /api/internal/external_wallets/{external_wallet_guid} | Get ExternalWallet
*CybridApiBank::InternalBankApi* | [**internal_get_external_wallet_screening**](docs/InternalBankApi.md#internal_get_external_wallet_screening) | **GET** /api/internal/external_wallet_screenings/{external_wallet_screening_guid} | Get ExternalWalletScreening
*CybridApiBank::InternalBankApi* | [**internal_get_file**](docs/InternalBankApi.md#internal_get_file) | **GET** /api/internal/files/{file_guid} | Get File
*CybridApiBank::InternalBankApi* | [**internal_get_internal_bank_account**](docs/InternalBankApi.md#internal_get_internal_bank_account) | **GET** /api/internal/internal_bank_accounts/{internal_bank_account_guid} | Get InternalBankAccount
*CybridApiBank::InternalBankApi* | [**internal_get_internal_wallet**](docs/InternalBankApi.md#internal_get_internal_wallet) | **GET** /api/internal/internal_wallets/{internal_wallet_guid} | Get InternalWallet
*CybridApiBank::InternalBankApi* | [**internal_get_invoice**](docs/InternalBankApi.md#internal_get_invoice) | **GET** /api/internal/invoices/{invoice_guid} | Get Invoice
*CybridApiBank::InternalBankApi* | [**internal_get_plan**](docs/InternalBankApi.md#internal_get_plan) | **GET** /api/internal/plans/{plan_guid} | Get Plan
*CybridApiBank::InternalBankApi* | [**internal_get_quote**](docs/InternalBankApi.md#internal_get_quote) | **GET** /api/internal/quotes/{quote_guid} | Get Internal Quote
*CybridApiBank::InternalBankApi* | [**internal_get_reconciliation**](docs/InternalBankApi.md#internal_get_reconciliation) | **GET** /api/internal/reconciliations/{guid} | Get Reconciliation
*CybridApiBank::InternalBankApi* | [**internal_get_trade**](docs/InternalBankApi.md#internal_get_trade) | **GET** /api/internal/trades/{trade_guid} | Get Internal Trade
*CybridApiBank::InternalBankApi* | [**internal_get_transfer**](docs/InternalBankApi.md#internal_get_transfer) | **GET** /api/internal/transfers/{guid} | Get Transfer
*CybridApiBank::InternalBankApi* | [**internal_get_transfer_screening**](docs/InternalBankApi.md#internal_get_transfer_screening) | **GET** /api/internal/transfer_screenings/{transfer_screening_guid} | Get TransferScreening
*CybridApiBank::InternalBankApi* | [**internal_get_wallet_service**](docs/InternalBankApi.md#internal_get_wallet_service) | **GET** /api/internal/wallet_services/{wallet_service_guid} | Get WalletService
*CybridApiBank::InternalBankApi* | [**internal_list_accounts**](docs/InternalBankApi.md#internal_list_accounts) | **GET** /api/internal/accounts | List Accounts
*CybridApiBank::InternalBankApi* | [**internal_list_activity_limit_configurations**](docs/InternalBankApi.md#internal_list_activity_limit_configurations) | **GET** /api/internal/activity_limit_configurations | List ActivityLimitConfigurations
*CybridApiBank::InternalBankApi* | [**internal_list_bank_account_services**](docs/InternalBankApi.md#internal_list_bank_account_services) | **GET** /api/internal/bank_account_services | List BankAccountServices
*CybridApiBank::InternalBankApi* | [**internal_list_banks**](docs/InternalBankApi.md#internal_list_banks) | **GET** /api/internal/banks | List Banks
*CybridApiBank::InternalBankApi* | [**internal_list_crypto_asset_configurations**](docs/InternalBankApi.md#internal_list_crypto_asset_configurations) | **GET** /api/internal/crypto_asset_configurations | List CryptoAssetConfiguration
*CybridApiBank::InternalBankApi* | [**internal_list_customers**](docs/InternalBankApi.md#internal_list_customers) | **GET** /api/internal/customers | List Customers
*CybridApiBank::InternalBankApi* | [**internal_list_cybrid_accounts**](docs/InternalBankApi.md#internal_list_cybrid_accounts) | **GET** /api/internal/cybrid_accounts | List CybridAccounts
*CybridApiBank::InternalBankApi* | [**internal_list_deposit_bank_accounts**](docs/InternalBankApi.md#internal_list_deposit_bank_accounts) | **GET** /api/internal/deposit_bank_accounts | List Deposit Bank Accounts
*CybridApiBank::InternalBankApi* | [**internal_list_exchange_orders**](docs/InternalBankApi.md#internal_list_exchange_orders) | **GET** /api/internal/exchange_orders | List ExchangeOrder
*CybridApiBank::InternalBankApi* | [**internal_list_exchange_settlement_configurations**](docs/InternalBankApi.md#internal_list_exchange_settlement_configurations) | **GET** /api/internal/exchange_settlement_configurations | List ExchangeSettlementConfigurations
*CybridApiBank::InternalBankApi* | [**internal_list_exchange_settlement_payment_orders**](docs/InternalBankApi.md#internal_list_exchange_settlement_payment_orders) | **GET** /api/internal/exchange_settlement_payment_orders | List Exchange Settlement Payment Orders
*CybridApiBank::InternalBankApi* | [**internal_list_exchanges**](docs/InternalBankApi.md#internal_list_exchanges) | **GET** /api/internal/exchanges | List Exchanges
*CybridApiBank::InternalBankApi* | [**internal_list_expected_payments**](docs/InternalBankApi.md#internal_list_expected_payments) | **GET** /api/internal/expected_payments | List Expected Payments
*CybridApiBank::InternalBankApi* | [**internal_list_external_bank_accounts**](docs/InternalBankApi.md#internal_list_external_bank_accounts) | **GET** /api/internal/external_bank_accounts | List ExternalBankAccounts
*CybridApiBank::InternalBankApi* | [**internal_list_external_wallets**](docs/InternalBankApi.md#internal_list_external_wallets) | **GET** /api/internal/external_wallets | List ExternalWallets
*CybridApiBank::InternalBankApi* | [**internal_list_fee_configurations**](docs/InternalBankApi.md#internal_list_fee_configurations) | **GET** /api/internal/fee_configurations | List FeeConfiguration
*CybridApiBank::InternalBankApi* | [**internal_list_fees**](docs/InternalBankApi.md#internal_list_fees) | **GET** /api/internal/fees | List Fees
*CybridApiBank::InternalBankApi* | [**internal_list_internal_bank_accounts**](docs/InternalBankApi.md#internal_list_internal_bank_accounts) | **GET** /api/internal/internal_bank_accounts | List InternalBankAccounts
*CybridApiBank::InternalBankApi* | [**internal_list_internal_wallets**](docs/InternalBankApi.md#internal_list_internal_wallets) | **GET** /api/internal/internal_wallets | List InternalWallets
*CybridApiBank::InternalBankApi* | [**internal_list_invoices**](docs/InternalBankApi.md#internal_list_invoices) | **GET** /api/internal/invoices | List Invoices
*CybridApiBank::InternalBankApi* | [**internal_list_reconciliations**](docs/InternalBankApi.md#internal_list_reconciliations) | **GET** /api/internal/reconciliations | List Reconciliations
*CybridApiBank::InternalBankApi* | [**internal_list_trades**](docs/InternalBankApi.md#internal_list_trades) | **GET** /api/internal/trades | List Trades
*CybridApiBank::InternalBankApi* | [**internal_list_trading_symbol_configurations**](docs/InternalBankApi.md#internal_list_trading_symbol_configurations) | **GET** /api/internal/trading_symbol_configurations | List TradingSymbolConfigurations
*CybridApiBank::InternalBankApi* | [**internal_list_transactions**](docs/InternalBankApi.md#internal_list_transactions) | **GET** /api/internal/transactions | List Transactions
*CybridApiBank::InternalBankApi* | [**internal_list_transfers**](docs/InternalBankApi.md#internal_list_transfers) | **GET** /api/internal/transfers | List Transfers
*CybridApiBank::InternalBankApi* | [**internal_list_wallet_services**](docs/InternalBankApi.md#internal_list_wallet_services) | **GET** /api/internal/wallet_services | List WalletServices
*CybridApiBank::InternalBankApi* | [**internal_patch_account**](docs/InternalBankApi.md#internal_patch_account) | **PATCH** /api/internal/accounts/{account_guid} | Patch Account
*CybridApiBank::InternalBankApi* | [**internal_patch_activity_limit_configuration**](docs/InternalBankApi.md#internal_patch_activity_limit_configuration) | **PATCH** /api/internal/activity_limit_configurations/{guid} | Patch ActivityLimitConfiguration
*CybridApiBank::InternalBankApi* | [**internal_patch_bank**](docs/InternalBankApi.md#internal_patch_bank) | **PATCH** /api/internal/banks/{bank_guid} | Patch Bank
*CybridApiBank::InternalBankApi* | [**internal_patch_bank_account_service**](docs/InternalBankApi.md#internal_patch_bank_account_service) | **PATCH** /api/internal/bank_account_services/{guid} | Patch Internal BankAccount
*CybridApiBank::InternalBankApi* | [**internal_patch_business_detail**](docs/InternalBankApi.md#internal_patch_business_detail) | **PATCH** /api/internal/business_details/{guid} | Patch Business Details
*CybridApiBank::InternalBankApi* | [**internal_patch_counterparty**](docs/InternalBankApi.md#internal_patch_counterparty) | **PATCH** /api/internal/counterparties/{counterparty_guid} | Patch Counterparty
*CybridApiBank::InternalBankApi* | [**internal_patch_crypto_asset_configuration**](docs/InternalBankApi.md#internal_patch_crypto_asset_configuration) | **PATCH** /api/internal/crypto_asset_configurations/{guid} | Patch CryptoAssetConfiguration
*CybridApiBank::InternalBankApi* | [**internal_patch_customer**](docs/InternalBankApi.md#internal_patch_customer) | **PATCH** /api/internal/customers/{customer_guid} | Patch Customer
*CybridApiBank::InternalBankApi* | [**internal_patch_cybrid_account**](docs/InternalBankApi.md#internal_patch_cybrid_account) | **PATCH** /api/internal/cybrid_accounts/{guid} | Patch Cybrid Account
*CybridApiBank::InternalBankApi* | [**internal_patch_deposit_address**](docs/InternalBankApi.md#internal_patch_deposit_address) | **PATCH** /api/internal/deposit_addresses/{guid} | Patch Deposit Address
*CybridApiBank::InternalBankApi* | [**internal_patch_deposit_bank_account**](docs/InternalBankApi.md#internal_patch_deposit_bank_account) | **PATCH** /api/internal/deposit_bank_accounts/{deposit_bank_account_guid} | Patch DepositBankAccount
*CybridApiBank::InternalBankApi* | [**internal_patch_exchange_account**](docs/InternalBankApi.md#internal_patch_exchange_account) | **PATCH** /api/internal/exchange_accounts/{guid} | Patch Exchange Account
*CybridApiBank::InternalBankApi* | [**internal_patch_exchange_order**](docs/InternalBankApi.md#internal_patch_exchange_order) | **PATCH** /api/internal/exchange_orders/{guid} | Patch ExchangeOrder
*CybridApiBank::InternalBankApi* | [**internal_patch_exchange_settlement**](docs/InternalBankApi.md#internal_patch_exchange_settlement) | **PATCH** /api/internal/exchange_settlements/{exchange_settlement_guid} | Patch Exchange Settlement
*CybridApiBank::InternalBankApi* | [**internal_patch_external_bank_account**](docs/InternalBankApi.md#internal_patch_external_bank_account) | **PATCH** /api/internal/external_bank_accounts/{external_bank_account_guid} | Patch ExternalBankAccount
*CybridApiBank::InternalBankApi* | [**internal_patch_external_wallet**](docs/InternalBankApi.md#internal_patch_external_wallet) | **PATCH** /api/internal/external_wallets/{external_wallet_guid} | Patch ExternalWallet
*CybridApiBank::InternalBankApi* | [**internal_patch_external_wallet_screening**](docs/InternalBankApi.md#internal_patch_external_wallet_screening) | **PATCH** /api/internal/external_wallet_screenings/{external_wallet_screening_guid} | Patch External Wallet Screening
*CybridApiBank::InternalBankApi* | [**internal_patch_fee**](docs/InternalBankApi.md#internal_patch_fee) | **PATCH** /api/internal/fees/{guid} | Patch Fee
*CybridApiBank::InternalBankApi* | [**internal_patch_files**](docs/InternalBankApi.md#internal_patch_files) | **PATCH** /api/internal/files/{file_guid} | Patch Files
*CybridApiBank::InternalBankApi* | [**internal_patch_identity_verification**](docs/InternalBankApi.md#internal_patch_identity_verification) | **PATCH** /api/internal/identity_verifications/{identity_verification_guid} | Patch Identity Verification
*CybridApiBank::InternalBankApi* | [**internal_patch_internal_bank_account**](docs/InternalBankApi.md#internal_patch_internal_bank_account) | **PATCH** /api/internal/internal_bank_accounts/{guid} | Patch Internal Bank Account
*CybridApiBank::InternalBankApi* | [**internal_patch_internal_wallet**](docs/InternalBankApi.md#internal_patch_internal_wallet) | **PATCH** /api/internal/internal_wallets/{guid} | Patch Internal Wallet
*CybridApiBank::InternalBankApi* | [**internal_patch_internal_wallet_group**](docs/InternalBankApi.md#internal_patch_internal_wallet_group) | **PATCH** /api/internal/internal_wallet_groups/{guid} | Patch Internal Wallet
*CybridApiBank::InternalBankApi* | [**internal_patch_invoice**](docs/InternalBankApi.md#internal_patch_invoice) | **PATCH** /api/internal/invoices/{invoice_guid} | Patch Invoice
*CybridApiBank::InternalBankApi* | [**internal_patch_payment_instruction**](docs/InternalBankApi.md#internal_patch_payment_instruction) | **PATCH** /api/internal/payment_instructions/{guid} | Patch Payment Instruction
*CybridApiBank::InternalBankApi* | [**internal_patch_person_detail**](docs/InternalBankApi.md#internal_patch_person_detail) | **PATCH** /api/internal/person_details/{guid} | Patch Person Details
*CybridApiBank::InternalBankApi* | [**internal_patch_trade**](docs/InternalBankApi.md#internal_patch_trade) | **PATCH** /api/internal/trades/{trade_guid} | Patch Trade
*CybridApiBank::InternalBankApi* | [**internal_patch_trading_symbol_configuration**](docs/InternalBankApi.md#internal_patch_trading_symbol_configuration) | **PATCH** /api/internal/trading_symbol_configurations/{guid} | Patch TradingSymbolConfiguration
*CybridApiBank::InternalBankApi* | [**internal_patch_transfer**](docs/InternalBankApi.md#internal_patch_transfer) | **PATCH** /api/internal/transfers/{transfer_guid} | Patch Transfer
*CybridApiBank::InternalBankApi* | [**internal_patch_transfer_screening**](docs/InternalBankApi.md#internal_patch_transfer_screening) | **PATCH** /api/internal/transfer_screenings/{transfer_screening_guid} | Patch External Wallet Screening
*CybridApiBank::InternalBankApi* | [**internal_patch_wallet_service**](docs/InternalBankApi.md#internal_patch_wallet_service) | **PATCH** /api/internal/wallet_services/{guid} | Patch Internal Wallet
*CybridApiBank::InternalBankApi* | [**internal_patch_workflow**](docs/InternalBankApi.md#internal_patch_workflow) | **PATCH** /api/internal/workflows/{workflow_guid} | Patch Workflow
*CybridApiBank::InternalBankApi* | [**internal_signal_external_wallet_screening**](docs/InternalBankApi.md#internal_signal_external_wallet_screening) | **POST** /api/internal/external_wallet_screenings/{external_wallet_screening_guid}/signal | Signal External Wallet Screening
*CybridApiBank::InternalBankApi* | [**internal_signal_identity_verification**](docs/InternalBankApi.md#internal_signal_identity_verification) | **POST** /api/internal/identity_verifications/{identity_verification_guid}/signal | Signal Identity Verification
*CybridApiBank::InternalBankApi* | [**internal_signal_invoice**](docs/InternalBankApi.md#internal_signal_invoice) | **POST** /api/internal/invoices/{invoice_guid}/signal | Signal Invoice
*CybridApiBank::InternalBankApi* | [**internal_signal_transfer**](docs/InternalBankApi.md#internal_signal_transfer) | **POST** /api/internal/transfers/{transfer_guid}/signal | Signal Transfer
*CybridApiBank::InternalBankApi* | [**patch_internal_execution**](docs/InternalBankApi.md#patch_internal_execution) | **PATCH** /api/internal/executions/{execution_guid} | Patch Execution
*CybridApiBank::InternalBankApi* | [**patch_internal_plan**](docs/InternalBankApi.md#patch_internal_plan) | **PATCH** /api/internal/plans/{plan_guid} | Patch Plan
*CybridApiBank::InternalBankApi* | [**patch_internal_stage**](docs/InternalBankApi.md#patch_internal_stage) | **PATCH** /api/internal/stages/{stage_guid} | Patch Stage
*CybridApiBank::InvoicesBankApi* | [**cancel_invoice**](docs/InvoicesBankApi.md#cancel_invoice) | **DELETE** /api/invoices/{invoice_guid} | Cancel Invoice
*CybridApiBank::InvoicesBankApi* | [**create_invoice**](docs/InvoicesBankApi.md#create_invoice) | **POST** /api/invoices | Create Invoice
*CybridApiBank::InvoicesBankApi* | [**get_invoice**](docs/InvoicesBankApi.md#get_invoice) | **GET** /api/invoices/{invoice_guid} | Get Invoice
*CybridApiBank::InvoicesBankApi* | [**list_invoices**](docs/InvoicesBankApi.md#list_invoices) | **GET** /api/invoices | List Invoices
*CybridApiBank::PaymentInstructionsBankApi* | [**create_payment_instruction**](docs/PaymentInstructionsBankApi.md#create_payment_instruction) | **POST** /api/payment_instructions | Create Payment Instruction
*CybridApiBank::PaymentInstructionsBankApi* | [**get_payment_instruction**](docs/PaymentInstructionsBankApi.md#get_payment_instruction) | **GET** /api/payment_instructions/{payment_instruction_guid} | Get Payment Instruction
*CybridApiBank::PaymentInstructionsBankApi* | [**list_payment_instructions**](docs/PaymentInstructionsBankApi.md#list_payment_instructions) | **GET** /api/payment_instructions | List Payment Instructions
*CybridApiBank::PersonaSessionsBankApi* | [**create_persona_session**](docs/PersonaSessionsBankApi.md#create_persona_session) | **POST** /api/persona_sessions | Create Persona Session
*CybridApiBank::PlansBankApi* | [**create_plan**](docs/PlansBankApi.md#create_plan) | **POST** /api/plans | Create Plan
*CybridApiBank::PlansBankApi* | [**get_plan**](docs/PlansBankApi.md#get_plan) | **GET** /api/plans/{plan_guid} | Get Plan
*CybridApiBank::PricesBankApi* | [**list_prices**](docs/PricesBankApi.md#list_prices) | **GET** /api/prices | Get Price
*CybridApiBank::QuotesBankApi* | [**create_quote**](docs/QuotesBankApi.md#create_quote) | **POST** /api/quotes | Create Quote
*CybridApiBank::QuotesBankApi* | [**get_quote**](docs/QuotesBankApi.md#get_quote) | **GET** /api/quotes/{quote_guid} | Get Quote
*CybridApiBank::QuotesBankApi* | [**list_quotes**](docs/QuotesBankApi.md#list_quotes) | **GET** /api/quotes | Get quotes list
*CybridApiBank::SymbolsBankApi* | [**list_symbols**](docs/SymbolsBankApi.md#list_symbols) | **GET** /api/symbols | Get Symbols list
*CybridApiBank::TradesBankApi* | [**create_trade**](docs/TradesBankApi.md#create_trade) | **POST** /api/trades | Create Trade
*CybridApiBank::TradesBankApi* | [**get_trade**](docs/TradesBankApi.md#get_trade) | **GET** /api/trades/{trade_guid} | Get Trade
*CybridApiBank::TradesBankApi* | [**list_trades**](docs/TradesBankApi.md#list_trades) | **GET** /api/trades | Get trades list
*CybridApiBank::TransfersBankApi* | [**create_transfer**](docs/TransfersBankApi.md#create_transfer) | **POST** /api/transfers | Create Transfer
*CybridApiBank::TransfersBankApi* | [**get_transfer**](docs/TransfersBankApi.md#get_transfer) | **GET** /api/transfers/{transfer_guid} | Get Transfer
*CybridApiBank::TransfersBankApi* | [**list_transfers**](docs/TransfersBankApi.md#list_transfers) | **GET** /api/transfers | Get transfers list
*CybridApiBank::TransfersBankApi* | [**update_transfer**](docs/TransfersBankApi.md#update_transfer) | **PATCH** /api/transfers/{transfer_guid} | Patch Transfer
*CybridApiBank::WorkflowsBankApi* | [**create_workflow**](docs/WorkflowsBankApi.md#create_workflow) | **POST** /api/workflows | Create Workflow
*CybridApiBank::WorkflowsBankApi* | [**get_workflow**](docs/WorkflowsBankApi.md#get_workflow) | **GET** /api/workflows/{workflow_guid} | Get Workflow
*CybridApiBank::WorkflowsBankApi* | [**list_workflows**](docs/WorkflowsBankApi.md#list_workflows) | **GET** /api/workflows | Get workflows list


## Documentation for Models

 - [CybridApiBank::AccountAssociationBankModel](docs/AccountAssociationBankModel.md)
 - [CybridApiBank::AccountBankModel](docs/AccountBankModel.md)
 - [CybridApiBank::AccountListBankModel](docs/AccountListBankModel.md)
 - [CybridApiBank::AccountStateBankModel](docs/AccountStateBankModel.md)
 - [CybridApiBank::AccountTypeBankModel](docs/AccountTypeBankModel.md)
 - [CybridApiBank::ActivityLimitBankModel](docs/ActivityLimitBankModel.md)
 - [CybridApiBank::ActivitySideBankModel](docs/ActivitySideBankModel.md)
 - [CybridApiBank::ActivityTypeBankModel](docs/ActivityTypeBankModel.md)
 - [CybridApiBank::AssetBankModel](docs/AssetBankModel.md)
 - [CybridApiBank::AssetListBankModel](docs/AssetListBankModel.md)
 - [CybridApiBank::AssetTypesBankModel](docs/AssetTypesBankModel.md)
 - [CybridApiBank::BankBankModel](docs/BankBankModel.md)
 - [CybridApiBank::BankFeatureBankModel](docs/BankFeatureBankModel.md)
 - [CybridApiBank::BankListBankModel](docs/BankListBankModel.md)
 - [CybridApiBank::BankSupportedPayoutSymbolsInnerBankModel](docs/BankSupportedPayoutSymbolsInnerBankModel.md)
 - [CybridApiBank::BankTypeBankModel](docs/BankTypeBankModel.md)
 - [CybridApiBank::ComplianceCheckBankModel](docs/ComplianceCheckBankModel.md)
 - [CybridApiBank::ComplianceCheckOutcomeBankModel](docs/ComplianceCheckOutcomeBankModel.md)
 - [CybridApiBank::ComplianceCheckTypeBankModel](docs/ComplianceCheckTypeBankModel.md)
 - [CybridApiBank::ComplianceDecisionBankModel](docs/ComplianceDecisionBankModel.md)
 - [CybridApiBank::ComplianceDecisionStateBankModel](docs/ComplianceDecisionStateBankModel.md)
 - [CybridApiBank::ComplianceDecisionTypeBankModel](docs/ComplianceDecisionTypeBankModel.md)
 - [CybridApiBank::CounterpartyAddressBankModel](docs/CounterpartyAddressBankModel.md)
 - [CybridApiBank::CounterpartyAliasesInnerBankModel](docs/CounterpartyAliasesInnerBankModel.md)
 - [CybridApiBank::CounterpartyBankModel](docs/CounterpartyBankModel.md)
 - [CybridApiBank::CounterpartyListBankModel](docs/CounterpartyListBankModel.md)
 - [CybridApiBank::CounterpartyNameBankModel](docs/CounterpartyNameBankModel.md)
 - [CybridApiBank::CounterpartyStateBankModel](docs/CounterpartyStateBankModel.md)
 - [CybridApiBank::CounterpartyTypeBankModel](docs/CounterpartyTypeBankModel.md)
 - [CybridApiBank::CustomerAddressBankModel](docs/CustomerAddressBankModel.md)
 - [CybridApiBank::CustomerAliasesInnerBankModel](docs/CustomerAliasesInnerBankModel.md)
 - [CybridApiBank::CustomerBankModel](docs/CustomerBankModel.md)
 - [CybridApiBank::CustomerListBankModel](docs/CustomerListBankModel.md)
 - [CybridApiBank::CustomerNameBankModel](docs/CustomerNameBankModel.md)
 - [CybridApiBank::CustomerStateBankModel](docs/CustomerStateBankModel.md)
 - [CybridApiBank::CustomerTypeBankModel](docs/CustomerTypeBankModel.md)
 - [CybridApiBank::DepositAddressBankModel](docs/DepositAddressBankModel.md)
 - [CybridApiBank::DepositAddressFormatBankModel](docs/DepositAddressFormatBankModel.md)
 - [CybridApiBank::DepositAddressListBankModel](docs/DepositAddressListBankModel.md)
 - [CybridApiBank::DepositAddressStateBankModel](docs/DepositAddressStateBankModel.md)
 - [CybridApiBank::DepositBankAccountAccountDetailsInnerBankModel](docs/DepositBankAccountAccountDetailsInnerBankModel.md)
 - [CybridApiBank::DepositBankAccountBankModel](docs/DepositBankAccountBankModel.md)
 - [CybridApiBank::DepositBankAccountCounterpartyAddressBankModel](docs/DepositBankAccountCounterpartyAddressBankModel.md)
 - [CybridApiBank::DepositBankAccountListBankModel](docs/DepositBankAccountListBankModel.md)
 - [CybridApiBank::DepositBankAccountRoutingDetailsInnerBankModel](docs/DepositBankAccountRoutingDetailsInnerBankModel.md)
 - [CybridApiBank::DepositBankAccountRoutingNumberTypeBankModel](docs/DepositBankAccountRoutingNumberTypeBankModel.md)
 - [CybridApiBank::DepositBankAccountStateBankModel](docs/DepositBankAccountStateBankModel.md)
 - [CybridApiBank::ErrorResponseBankModel](docs/ErrorResponseBankModel.md)
 - [CybridApiBank::ExecutionBankModel](docs/ExecutionBankModel.md)
 - [CybridApiBank::ExecutionTravelRuleInfoBankModel](docs/ExecutionTravelRuleInfoBankModel.md)
 - [CybridApiBank::ExternalBankAccountBalancesBankModel](docs/ExternalBankAccountBalancesBankModel.md)
 - [CybridApiBank::ExternalBankAccountBankModel](docs/ExternalBankAccountBankModel.md)
 - [CybridApiBank::ExternalBankAccountKindBankModel](docs/ExternalBankAccountKindBankModel.md)
 - [CybridApiBank::ExternalBankAccountListBankModel](docs/ExternalBankAccountListBankModel.md)
 - [CybridApiBank::ExternalBankAccountPiiInnerAddressesInnerBankModel](docs/ExternalBankAccountPiiInnerAddressesInnerBankModel.md)
 - [CybridApiBank::ExternalBankAccountPiiInnerBankModel](docs/ExternalBankAccountPiiInnerBankModel.md)
 - [CybridApiBank::ExternalBankAccountPiiInnerRoutingDetailsInnerBankModel](docs/ExternalBankAccountPiiInnerRoutingDetailsInnerBankModel.md)
 - [CybridApiBank::ExternalBankAccountStateBankModel](docs/ExternalBankAccountStateBankModel.md)
 - [CybridApiBank::ExternalWalletBankModel](docs/ExternalWalletBankModel.md)
 - [CybridApiBank::ExternalWalletEnvironmentBankModel](docs/ExternalWalletEnvironmentBankModel.md)
 - [CybridApiBank::ExternalWalletListBankModel](docs/ExternalWalletListBankModel.md)
 - [CybridApiBank::ExternalWalletStateBankModel](docs/ExternalWalletStateBankModel.md)
 - [CybridApiBank::FeeAssociationBankModel](docs/FeeAssociationBankModel.md)
 - [CybridApiBank::IdentificationNumberBankModel](docs/IdentificationNumberBankModel.md)
 - [CybridApiBank::IdentityVerificationBankModel](docs/IdentityVerificationBankModel.md)
 - [CybridApiBank::IdentityVerificationBusinessAssociateBankModel](docs/IdentityVerificationBusinessAssociateBankModel.md)
 - [CybridApiBank::IdentityVerificationDocumentBankModel](docs/IdentityVerificationDocumentBankModel.md)
 - [CybridApiBank::IdentityVerificationDocumentFileBankModel](docs/IdentityVerificationDocumentFileBankModel.md)
 - [CybridApiBank::IdentityVerificationListBankModel](docs/IdentityVerificationListBankModel.md)
 - [CybridApiBank::IdentityVerificationMethodBankModel](docs/IdentityVerificationMethodBankModel.md)
 - [CybridApiBank::IdentityVerificationOptionsBankModel](docs/IdentityVerificationOptionsBankModel.md)
 - [CybridApiBank::IdentityVerificationOutcomeBankModel](docs/IdentityVerificationOutcomeBankModel.md)
 - [CybridApiBank::IdentityVerificationPersonaStateBankModel](docs/IdentityVerificationPersonaStateBankModel.md)
 - [CybridApiBank::IdentityVerificationStateBankModel](docs/IdentityVerificationStateBankModel.md)
 - [CybridApiBank::IdentityVerificationTypeBankModel](docs/IdentityVerificationTypeBankModel.md)
 - [CybridApiBank::IdentityVerificationWithDetailsBankModel](docs/IdentityVerificationWithDetailsBankModel.md)
 - [CybridApiBank::IdentityVerificationWithDetailsPiiAddressBankModel](docs/IdentityVerificationWithDetailsPiiAddressBankModel.md)
 - [CybridApiBank::IdentityVerificationWithDetailsPiiAliasesInnerBankModel](docs/IdentityVerificationWithDetailsPiiAliasesInnerBankModel.md)
 - [CybridApiBank::IdentityVerificationWithDetailsPiiBankModel](docs/IdentityVerificationWithDetailsPiiBankModel.md)
 - [CybridApiBank::IdentityVerificationWithDetailsPiiNameBankModel](docs/IdentityVerificationWithDetailsPiiNameBankModel.md)
 - [CybridApiBank::InternalActivityLimitBankModel](docs/InternalActivityLimitBankModel.md)
 - [CybridApiBank::InternalActivityLimitConfigurationBankModel](docs/InternalActivityLimitConfigurationBankModel.md)
 - [CybridApiBank::InternalActivityLimitConfigurationListBankModel](docs/InternalActivityLimitConfigurationListBankModel.md)
 - [CybridApiBank::InternalActivityReportBankModel](docs/InternalActivityReportBankModel.md)
 - [CybridApiBank::InternalActivityReportItemBankModel](docs/InternalActivityReportItemBankModel.md)
 - [CybridApiBank::InternalBankAccountServiceBankModel](docs/InternalBankAccountServiceBankModel.md)
 - [CybridApiBank::InternalBankAccountServiceListBankModel](docs/InternalBankAccountServiceListBankModel.md)
 - [CybridApiBank::InternalBankBankModel](docs/InternalBankBankModel.md)
 - [CybridApiBank::InternalBankListBankModel](docs/InternalBankListBankModel.md)
 - [CybridApiBank::InternalBusinessDetailBankModel](docs/InternalBusinessDetailBankModel.md)
 - [CybridApiBank::InternalComplianceDecisionBankModel](docs/InternalComplianceDecisionBankModel.md)
 - [CybridApiBank::InternalCountryCodeConfigurationBankModel](docs/InternalCountryCodeConfigurationBankModel.md)
 - [CybridApiBank::InternalCreateExchangeSettlementApproval202ResponseBankModel](docs/InternalCreateExchangeSettlementApproval202ResponseBankModel.md)
 - [CybridApiBank::InternalCryptoAssetConfigurationBankModel](docs/InternalCryptoAssetConfigurationBankModel.md)
 - [CybridApiBank::InternalCryptoAssetConfigurationListBankModel](docs/InternalCryptoAssetConfigurationListBankModel.md)
 - [CybridApiBank::InternalCryptoFundingDepositTransferBankModel](docs/InternalCryptoFundingDepositTransferBankModel.md)
 - [CybridApiBank::InternalCybridAccountBankModel](docs/InternalCybridAccountBankModel.md)
 - [CybridApiBank::InternalCybridAccountListBankModel](docs/InternalCybridAccountListBankModel.md)
 - [CybridApiBank::InternalCybridGasAccountConfigurationBankModel](docs/InternalCybridGasAccountConfigurationBankModel.md)
 - [CybridApiBank::InternalExchangeAccountBankModel](docs/InternalExchangeAccountBankModel.md)
 - [CybridApiBank::InternalExchangeBankModel](docs/InternalExchangeBankModel.md)
 - [CybridApiBank::InternalExchangeListBankModel](docs/InternalExchangeListBankModel.md)
 - [CybridApiBank::InternalExchangeMonitorBankModel](docs/InternalExchangeMonitorBankModel.md)
 - [CybridApiBank::InternalExchangeOrderBankModel](docs/InternalExchangeOrderBankModel.md)
 - [CybridApiBank::InternalExchangeOrderListBankModel](docs/InternalExchangeOrderListBankModel.md)
 - [CybridApiBank::InternalExchangeSettlementBankModel](docs/InternalExchangeSettlementBankModel.md)
 - [CybridApiBank::InternalExchangeSettlementConfigurationBankModel](docs/InternalExchangeSettlementConfigurationBankModel.md)
 - [CybridApiBank::InternalExchangeSettlementConfigurationListBankModel](docs/InternalExchangeSettlementConfigurationListBankModel.md)
 - [CybridApiBank::InternalExchangeSettlementObligationBankModel](docs/InternalExchangeSettlementObligationBankModel.md)
 - [CybridApiBank::InternalExchangeSettlementOrderAmountsInnerBankModel](docs/InternalExchangeSettlementOrderAmountsInnerBankModel.md)
 - [CybridApiBank::InternalExchangeSettlementPaymentOrderBankModel](docs/InternalExchangeSettlementPaymentOrderBankModel.md)
 - [CybridApiBank::InternalExchangeSettlementPaymentOrderListBankModel](docs/InternalExchangeSettlementPaymentOrderListBankModel.md)
 - [CybridApiBank::InternalExchangeSettlementTradeAmountsInnerBankModel](docs/InternalExchangeSettlementTradeAmountsInnerBankModel.md)
 - [CybridApiBank::InternalExecutionBankModel](docs/InternalExecutionBankModel.md)
 - [CybridApiBank::InternalExpectedPaymentBankModel](docs/InternalExpectedPaymentBankModel.md)
 - [CybridApiBank::InternalExpectedPaymentListBankModel](docs/InternalExpectedPaymentListBankModel.md)
 - [CybridApiBank::InternalExternalBankAccountBankModel](docs/InternalExternalBankAccountBankModel.md)
 - [CybridApiBank::InternalExternalBankAccountListBankModel](docs/InternalExternalBankAccountListBankModel.md)
 - [CybridApiBank::InternalExternalBankAccountPiiInnerBankModel](docs/InternalExternalBankAccountPiiInnerBankModel.md)
 - [CybridApiBank::InternalExternalWalletBankModel](docs/InternalExternalWalletBankModel.md)
 - [CybridApiBank::InternalExternalWalletListBankModel](docs/InternalExternalWalletListBankModel.md)
 - [CybridApiBank::InternalExternalWalletScreeningBankModel](docs/InternalExternalWalletScreeningBankModel.md)
 - [CybridApiBank::InternalFeeAssociationBankModel](docs/InternalFeeAssociationBankModel.md)
 - [CybridApiBank::InternalFeeBankModel](docs/InternalFeeBankModel.md)
 - [CybridApiBank::InternalFeeChargeBankModel](docs/InternalFeeChargeBankModel.md)
 - [CybridApiBank::InternalFeeChargeListBankModel](docs/InternalFeeChargeListBankModel.md)
 - [CybridApiBank::InternalFeeConfigurationBankModel](docs/InternalFeeConfigurationBankModel.md)
 - [CybridApiBank::InternalFeeConfigurationListBankModel](docs/InternalFeeConfigurationListBankModel.md)
 - [CybridApiBank::InternalFiatAssetConfigurationBankModel](docs/InternalFiatAssetConfigurationBankModel.md)
 - [CybridApiBank::InternalFundingDepositTransferBankModel](docs/InternalFundingDepositTransferBankModel.md)
 - [CybridApiBank::InternalInternalBankAccountBankModel](docs/InternalInternalBankAccountBankModel.md)
 - [CybridApiBank::InternalInternalBankAccountConfigurationBankModel](docs/InternalInternalBankAccountConfigurationBankModel.md)
 - [CybridApiBank::InternalInternalBankAccountListBankModel](docs/InternalInternalBankAccountListBankModel.md)
 - [CybridApiBank::InternalInternalInvoiceListBankModel](docs/InternalInternalInvoiceListBankModel.md)
 - [CybridApiBank::InternalInternalWalletBankModel](docs/InternalInternalWalletBankModel.md)
 - [CybridApiBank::InternalInternalWalletConfigurationBankModel](docs/InternalInternalWalletConfigurationBankModel.md)
 - [CybridApiBank::InternalInternalWalletGroupBankModel](docs/InternalInternalWalletGroupBankModel.md)
 - [CybridApiBank::InternalInternalWalletListBankModel](docs/InternalInternalWalletListBankModel.md)
 - [CybridApiBank::InternalInvoiceBankModel](docs/InternalInvoiceBankModel.md)
 - [CybridApiBank::InternalPayoutSymbolConfigurationBankModel](docs/InternalPayoutSymbolConfigurationBankModel.md)
 - [CybridApiBank::InternalPersonDetailBankModel](docs/InternalPersonDetailBankModel.md)
 - [CybridApiBank::InternalPlanBankModel](docs/InternalPlanBankModel.md)
 - [CybridApiBank::InternalPostAccountBankModel](docs/InternalPostAccountBankModel.md)
 - [CybridApiBank::InternalPostDepositBankAccountBankModel](docs/InternalPostDepositBankAccountBankModel.md)
 - [CybridApiBank::InternalPostFeeConfigurationBankModel](docs/InternalPostFeeConfigurationBankModel.md)
 - [CybridApiBank::InternalPostQuoteBankModel](docs/InternalPostQuoteBankModel.md)
 - [CybridApiBank::InternalQuoteBankModel](docs/InternalQuoteBankModel.md)
 - [CybridApiBank::InternalReconciliationBankModel](docs/InternalReconciliationBankModel.md)
 - [CybridApiBank::InternalReconciliationListBankModel](docs/InternalReconciliationListBankModel.md)
 - [CybridApiBank::InternalStageBankModel](docs/InternalStageBankModel.md)
 - [CybridApiBank::InternalTradeBankModel](docs/InternalTradeBankModel.md)
 - [CybridApiBank::InternalTradingSymbolConfigurationBankModel](docs/InternalTradingSymbolConfigurationBankModel.md)
 - [CybridApiBank::InternalTradingSymbolConfigurationListBankModel](docs/InternalTradingSymbolConfigurationListBankModel.md)
 - [CybridApiBank::InternalTransactionBankModel](docs/InternalTransactionBankModel.md)
 - [CybridApiBank::InternalTransactionMonitorBankModel](docs/InternalTransactionMonitorBankModel.md)
 - [CybridApiBank::InternalTransactionsListBankModel](docs/InternalTransactionsListBankModel.md)
 - [CybridApiBank::InternalTransactionsListPageInfoBankModel](docs/InternalTransactionsListPageInfoBankModel.md)
 - [CybridApiBank::InternalTransferAssociationBankModel](docs/InternalTransferAssociationBankModel.md)
 - [CybridApiBank::InternalTransferBankModel](docs/InternalTransferBankModel.md)
 - [CybridApiBank::InternalTransferDestinationAccountBankModel](docs/InternalTransferDestinationAccountBankModel.md)
 - [CybridApiBank::InternalTransferListBankModel](docs/InternalTransferListBankModel.md)
 - [CybridApiBank::InternalTransferRailConfigurationBankModel](docs/InternalTransferRailConfigurationBankModel.md)
 - [CybridApiBank::InternalTransferScreeningBankModel](docs/InternalTransferScreeningBankModel.md)
 - [CybridApiBank::InternalTransferSourceAccountBankModel](docs/InternalTransferSourceAccountBankModel.md)
 - [CybridApiBank::InternalWalletServiceBankModel](docs/InternalWalletServiceBankModel.md)
 - [CybridApiBank::InternalWalletServiceListBankModel](docs/InternalWalletServiceListBankModel.md)
 - [CybridApiBank::InvoiceBankModel](docs/InvoiceBankModel.md)
 - [CybridApiBank::InvoiceListBankModel](docs/InvoiceListBankModel.md)
 - [CybridApiBank::ParamInternalActivityLimitBankModel](docs/ParamInternalActivityLimitBankModel.md)
 - [CybridApiBank::PatchBankBankModel](docs/PatchBankBankModel.md)
 - [CybridApiBank::PatchCustomerBankModel](docs/PatchCustomerBankModel.md)
 - [CybridApiBank::PatchExternalBankAccountBankModel](docs/PatchExternalBankAccountBankModel.md)
 - [CybridApiBank::PatchInternalAccountAssociationBankModel](docs/PatchInternalAccountAssociationBankModel.md)
 - [CybridApiBank::PatchInternalAccountBankModel](docs/PatchInternalAccountBankModel.md)
 - [CybridApiBank::PatchInternalActivityLimitConfigurationBankModel](docs/PatchInternalActivityLimitConfigurationBankModel.md)
 - [CybridApiBank::PatchInternalBankAccountServiceBankModel](docs/PatchInternalBankAccountServiceBankModel.md)
 - [CybridApiBank::PatchInternalBankBankModel](docs/PatchInternalBankBankModel.md)
 - [CybridApiBank::PatchInternalBusinessDetailBankModel](docs/PatchInternalBusinessDetailBankModel.md)
 - [CybridApiBank::PatchInternalCounterpartyBankModel](docs/PatchInternalCounterpartyBankModel.md)
 - [CybridApiBank::PatchInternalCryptoAssetConfigurationBankModel](docs/PatchInternalCryptoAssetConfigurationBankModel.md)
 - [CybridApiBank::PatchInternalCustomerBankModel](docs/PatchInternalCustomerBankModel.md)
 - [CybridApiBank::PatchInternalCybridAccountBankModel](docs/PatchInternalCybridAccountBankModel.md)
 - [CybridApiBank::PatchInternalDepositAddressBankModel](docs/PatchInternalDepositAddressBankModel.md)
 - [CybridApiBank::PatchInternalDepositBankAccountBankModel](docs/PatchInternalDepositBankAccountBankModel.md)
 - [CybridApiBank::PatchInternalExchangeAccountBankModel](docs/PatchInternalExchangeAccountBankModel.md)
 - [CybridApiBank::PatchInternalExchangeOrderBankModel](docs/PatchInternalExchangeOrderBankModel.md)
 - [CybridApiBank::PatchInternalExchangeSettlementBankModel](docs/PatchInternalExchangeSettlementBankModel.md)
 - [CybridApiBank::PatchInternalExecutionBankModel](docs/PatchInternalExecutionBankModel.md)
 - [CybridApiBank::PatchInternalExternalBankAccountBankModel](docs/PatchInternalExternalBankAccountBankModel.md)
 - [CybridApiBank::PatchInternalExternalWalletBankModel](docs/PatchInternalExternalWalletBankModel.md)
 - [CybridApiBank::PatchInternalExternalWalletScreeningBankModel](docs/PatchInternalExternalWalletScreeningBankModel.md)
 - [CybridApiBank::PatchInternalFeeAssociationBankModel](docs/PatchInternalFeeAssociationBankModel.md)
 - [CybridApiBank::PatchInternalFeeChargeBankModel](docs/PatchInternalFeeChargeBankModel.md)
 - [CybridApiBank::PatchInternalFileBankModel](docs/PatchInternalFileBankModel.md)
 - [CybridApiBank::PatchInternalIdentityVerificationBankModel](docs/PatchInternalIdentityVerificationBankModel.md)
 - [CybridApiBank::PatchInternalInternalBankAccountBankModel](docs/PatchInternalInternalBankAccountBankModel.md)
 - [CybridApiBank::PatchInternalInternalWalletBankModel](docs/PatchInternalInternalWalletBankModel.md)
 - [CybridApiBank::PatchInternalInternalWalletGroupBankModel](docs/PatchInternalInternalWalletGroupBankModel.md)
 - [CybridApiBank::PatchInternalInvoiceBankModel](docs/PatchInternalInvoiceBankModel.md)
 - [CybridApiBank::PatchInternalPaymentInstructionBankModel](docs/PatchInternalPaymentInstructionBankModel.md)
 - [CybridApiBank::PatchInternalPersonDetailBankModel](docs/PatchInternalPersonDetailBankModel.md)
 - [CybridApiBank::PatchInternalPlanBankModel](docs/PatchInternalPlanBankModel.md)
 - [CybridApiBank::PatchInternalStageBankModel](docs/PatchInternalStageBankModel.md)
 - [CybridApiBank::PatchInternalTradeBankModel](docs/PatchInternalTradeBankModel.md)
 - [CybridApiBank::PatchInternalTradingSymbolConfigurationBankModel](docs/PatchInternalTradingSymbolConfigurationBankModel.md)
 - [CybridApiBank::PatchInternalTransferBankModel](docs/PatchInternalTransferBankModel.md)
 - [CybridApiBank::PatchInternalTransferScreeningBankModel](docs/PatchInternalTransferScreeningBankModel.md)
 - [CybridApiBank::PatchInternalWalletServiceBankModel](docs/PatchInternalWalletServiceBankModel.md)
 - [CybridApiBank::PatchInternalWorkflowBankModel](docs/PatchInternalWorkflowBankModel.md)
 - [CybridApiBank::PatchTransferBankModel](docs/PatchTransferBankModel.md)
 - [CybridApiBank::PatchTransferParticipantBankModel](docs/PatchTransferParticipantBankModel.md)
 - [CybridApiBank::PaymentInstructionBankModel](docs/PaymentInstructionBankModel.md)
 - [CybridApiBank::PaymentInstructionListBankModel](docs/PaymentInstructionListBankModel.md)
 - [CybridApiBank::PersonaSessionBankModel](docs/PersonaSessionBankModel.md)
 - [CybridApiBank::PlanBankModel](docs/PlanBankModel.md)
 - [CybridApiBank::PlanTravelRuleInfoBankModel](docs/PlanTravelRuleInfoBankModel.md)
 - [CybridApiBank::PlatformFileBankModel](docs/PlatformFileBankModel.md)
 - [CybridApiBank::PlatformFileListBankModel](docs/PlatformFileListBankModel.md)
 - [CybridApiBank::PostAccountBankModel](docs/PostAccountBankModel.md)
 - [CybridApiBank::PostBankAccountDetailsBankModel](docs/PostBankAccountDetailsBankModel.md)
 - [CybridApiBank::PostBankBankModel](docs/PostBankBankModel.md)
 - [CybridApiBank::PostCounterpartyAddressBankModel](docs/PostCounterpartyAddressBankModel.md)
 - [CybridApiBank::PostCounterpartyAliasesInnerBankModel](docs/PostCounterpartyAliasesInnerBankModel.md)
 - [CybridApiBank::PostCounterpartyBankModel](docs/PostCounterpartyBankModel.md)
 - [CybridApiBank::PostCounterpartyNameBankModel](docs/PostCounterpartyNameBankModel.md)
 - [CybridApiBank::PostCustomerAddressBankModel](docs/PostCustomerAddressBankModel.md)
 - [CybridApiBank::PostCustomerAliasesInnerBankModel](docs/PostCustomerAliasesInnerBankModel.md)
 - [CybridApiBank::PostCustomerBankModel](docs/PostCustomerBankModel.md)
 - [CybridApiBank::PostCustomerNameBankModel](docs/PostCustomerNameBankModel.md)
 - [CybridApiBank::PostDepositAddressBankModel](docs/PostDepositAddressBankModel.md)
 - [CybridApiBank::PostDepositBankAccountBankModel](docs/PostDepositBankAccountBankModel.md)
 - [CybridApiBank::PostExecutionBankModel](docs/PostExecutionBankModel.md)
 - [CybridApiBank::PostExternalBankAccountBankModel](docs/PostExternalBankAccountBankModel.md)
 - [CybridApiBank::PostExternalBankAccountCounterpartyAddressBankModel](docs/PostExternalBankAccountCounterpartyAddressBankModel.md)
 - [CybridApiBank::PostExternalBankAccountCounterpartyNameBankModel](docs/PostExternalBankAccountCounterpartyNameBankModel.md)
 - [CybridApiBank::PostExternalWalletBankModel](docs/PostExternalWalletBankModel.md)
 - [CybridApiBank::PostFeeBankModel](docs/PostFeeBankModel.md)
 - [CybridApiBank::PostFileBankModel](docs/PostFileBankModel.md)
 - [CybridApiBank::PostIdentificationNumberBankModel](docs/PostIdentificationNumberBankModel.md)
 - [CybridApiBank::PostIdentityVerificationAddressBankModel](docs/PostIdentityVerificationAddressBankModel.md)
 - [CybridApiBank::PostIdentityVerificationAliasesInnerBankModel](docs/PostIdentityVerificationAliasesInnerBankModel.md)
 - [CybridApiBank::PostIdentityVerificationBankModel](docs/PostIdentityVerificationBankModel.md)
 - [CybridApiBank::PostIdentityVerificationNameBankModel](docs/PostIdentityVerificationNameBankModel.md)
 - [CybridApiBank::PostInternalAccountAssociationBankModel](docs/PostInternalAccountAssociationBankModel.md)
 - [CybridApiBank::PostInternalActivityLimitConfigurationBankModel](docs/PostInternalActivityLimitConfigurationBankModel.md)
 - [CybridApiBank::PostInternalActivityReportBankModel](docs/PostInternalActivityReportBankModel.md)
 - [CybridApiBank::PostInternalBankAccountServiceBankModel](docs/PostInternalBankAccountServiceBankModel.md)
 - [CybridApiBank::PostInternalBankBankModel](docs/PostInternalBankBankModel.md)
 - [CybridApiBank::PostInternalClaimExchangeSettlementPaymentOrderBankModel](docs/PostInternalClaimExchangeSettlementPaymentOrderBankModel.md)
 - [CybridApiBank::PostInternalClaimExpectedPaymentBankModel](docs/PostInternalClaimExpectedPaymentBankModel.md)
 - [CybridApiBank::PostInternalComplianceDecisionBankModel](docs/PostInternalComplianceDecisionBankModel.md)
 - [CybridApiBank::PostInternalCountryCodeConfigurationBankModel](docs/PostInternalCountryCodeConfigurationBankModel.md)
 - [CybridApiBank::PostInternalCryptoAssetConfigurationBankModel](docs/PostInternalCryptoAssetConfigurationBankModel.md)
 - [CybridApiBank::PostInternalCryptoFundingDepositTransferBankModel](docs/PostInternalCryptoFundingDepositTransferBankModel.md)
 - [CybridApiBank::PostInternalCybridAccountBankModel](docs/PostInternalCybridAccountBankModel.md)
 - [CybridApiBank::PostInternalCybridGasAccountConfigurationBankModel](docs/PostInternalCybridGasAccountConfigurationBankModel.md)
 - [CybridApiBank::PostInternalExchangeAccountBankModel](docs/PostInternalExchangeAccountBankModel.md)
 - [CybridApiBank::PostInternalExchangeBankModel](docs/PostInternalExchangeBankModel.md)
 - [CybridApiBank::PostInternalExchangeMonitorBankModel](docs/PostInternalExchangeMonitorBankModel.md)
 - [CybridApiBank::PostInternalExchangeOrderBankModel](docs/PostInternalExchangeOrderBankModel.md)
 - [CybridApiBank::PostInternalExchangeSettlementBankModel](docs/PostInternalExchangeSettlementBankModel.md)
 - [CybridApiBank::PostInternalExchangeSettlementConfigurationBankModel](docs/PostInternalExchangeSettlementConfigurationBankModel.md)
 - [CybridApiBank::PostInternalExchangeSettlementPaymentOrderBankModel](docs/PostInternalExchangeSettlementPaymentOrderBankModel.md)
 - [CybridApiBank::PostInternalExpectedPaymentBankModel](docs/PostInternalExpectedPaymentBankModel.md)
 - [CybridApiBank::PostInternalExternalBankAccountBankModel](docs/PostInternalExternalBankAccountBankModel.md)
 - [CybridApiBank::PostInternalExternalBankAccountCounterpartyAddressBankModel](docs/PostInternalExternalBankAccountCounterpartyAddressBankModel.md)
 - [CybridApiBank::PostInternalExternalBankAccountCounterpartyBankAccountBankModel](docs/PostInternalExternalBankAccountCounterpartyBankAccountBankModel.md)
 - [CybridApiBank::PostInternalExternalBankAccountCounterpartyNameBankModel](docs/PostInternalExternalBankAccountCounterpartyNameBankModel.md)
 - [CybridApiBank::PostInternalExternalWalletBankModel](docs/PostInternalExternalWalletBankModel.md)
 - [CybridApiBank::PostInternalFeeAssociationBankModel](docs/PostInternalFeeAssociationBankModel.md)
 - [CybridApiBank::PostInternalFeeChargeBankModel](docs/PostInternalFeeChargeBankModel.md)
 - [CybridApiBank::PostInternalFiatAssetConfigurationBankModel](docs/PostInternalFiatAssetConfigurationBankModel.md)
 - [CybridApiBank::PostInternalFundingDepositTransferBankModel](docs/PostInternalFundingDepositTransferBankModel.md)
 - [CybridApiBank::PostInternalInternalBankAccountBankModel](docs/PostInternalInternalBankAccountBankModel.md)
 - [CybridApiBank::PostInternalInternalBankAccountConfigurationBankModel](docs/PostInternalInternalBankAccountConfigurationBankModel.md)
 - [CybridApiBank::PostInternalInternalBankAccountRoutingDetailBankModel](docs/PostInternalInternalBankAccountRoutingDetailBankModel.md)
 - [CybridApiBank::PostInternalInternalWalletBankModel](docs/PostInternalInternalWalletBankModel.md)
 - [CybridApiBank::PostInternalInternalWalletConfigurationBankModel](docs/PostInternalInternalWalletConfigurationBankModel.md)
 - [CybridApiBank::PostInternalInternalWalletRoutingDetailBankModel](docs/PostInternalInternalWalletRoutingDetailBankModel.md)
 - [CybridApiBank::PostInternalPayoutSymbolConfigurationBankModel](docs/PostInternalPayoutSymbolConfigurationBankModel.md)
 - [CybridApiBank::PostInternalReconciliationBankModel](docs/PostInternalReconciliationBankModel.md)
 - [CybridApiBank::PostInternalStageBankModel](docs/PostInternalStageBankModel.md)
 - [CybridApiBank::PostInternalSystemTransactionBankModel](docs/PostInternalSystemTransactionBankModel.md)
 - [CybridApiBank::PostInternalTradeBankModel](docs/PostInternalTradeBankModel.md)
 - [CybridApiBank::PostInternalTradingSymbolConfigurationBankModel](docs/PostInternalTradingSymbolConfigurationBankModel.md)
 - [CybridApiBank::PostInternalTransactionMonitorBankModel](docs/PostInternalTransactionMonitorBankModel.md)
 - [CybridApiBank::PostInternalTransferBankModel](docs/PostInternalTransferBankModel.md)
 - [CybridApiBank::PostInternalTransferRailConfigurationBankModel](docs/PostInternalTransferRailConfigurationBankModel.md)
 - [CybridApiBank::PostInternalTransferScreeningBankModel](docs/PostInternalTransferScreeningBankModel.md)
 - [CybridApiBank::PostInternalWalletServiceBankModel](docs/PostInternalWalletServiceBankModel.md)
 - [CybridApiBank::PostInvoiceBankModel](docs/PostInvoiceBankModel.md)
 - [CybridApiBank::PostPaymentInstructionBankModel](docs/PostPaymentInstructionBankModel.md)
 - [CybridApiBank::PostPersonaSessionBankModel](docs/PostPersonaSessionBankModel.md)
 - [CybridApiBank::PostPlanBankModel](docs/PostPlanBankModel.md)
 - [CybridApiBank::PostPlanDestinationAccountBankModel](docs/PostPlanDestinationAccountBankModel.md)
 - [CybridApiBank::PostPlanSourceAccountBankModel](docs/PostPlanSourceAccountBankModel.md)
 - [CybridApiBank::PostPlanTravelRuleInfoBankModel](docs/PostPlanTravelRuleInfoBankModel.md)
 - [CybridApiBank::PostQuoteBankModel](docs/PostQuoteBankModel.md)
 - [CybridApiBank::PostQuoteEntryBankModel](docs/PostQuoteEntryBankModel.md)
 - [CybridApiBank::PostSignalInternalExternalWalletScreeningBankModel](docs/PostSignalInternalExternalWalletScreeningBankModel.md)
 - [CybridApiBank::PostSignalInternalIdentityVerificationBankAccountHolderAddressBankModel](docs/PostSignalInternalIdentityVerificationBankAccountHolderAddressBankModel.md)
 - [CybridApiBank::PostSignalInternalIdentityVerificationBankAccountHolderNameBankModel](docs/PostSignalInternalIdentityVerificationBankAccountHolderNameBankModel.md)
 - [CybridApiBank::PostSignalInternalIdentityVerificationBankModel](docs/PostSignalInternalIdentityVerificationBankModel.md)
 - [CybridApiBank::PostSupportedPayoutSymbolsBankModel](docs/PostSupportedPayoutSymbolsBankModel.md)
 - [CybridApiBank::PostTradeBankModel](docs/PostTradeBankModel.md)
 - [CybridApiBank::PostTransferBankModel](docs/PostTransferBankModel.md)
 - [CybridApiBank::PostTransferParticipantBankModel](docs/PostTransferParticipantBankModel.md)
 - [CybridApiBank::PostUltimateBeneficialOwnerBankModel](docs/PostUltimateBeneficialOwnerBankModel.md)
 - [CybridApiBank::PostWorkflowBankModel](docs/PostWorkflowBankModel.md)
 - [CybridApiBank::QuoteBankModel](docs/QuoteBankModel.md)
 - [CybridApiBank::QuoteEntryBankModel](docs/QuoteEntryBankModel.md)
 - [CybridApiBank::QuoteEntryDestinationAccountBankModel](docs/QuoteEntryDestinationAccountBankModel.md)
 - [CybridApiBank::QuoteEntrySourceAccountBankModel](docs/QuoteEntrySourceAccountBankModel.md)
 - [CybridApiBank::QuoteListBankModel](docs/QuoteListBankModel.md)
 - [CybridApiBank::QuoteSideBankModel](docs/QuoteSideBankModel.md)
 - [CybridApiBank::QuoteTypeBankModel](docs/QuoteTypeBankModel.md)
 - [CybridApiBank::StageBankModel](docs/StageBankModel.md)
 - [CybridApiBank::SymbolPriceBankModel](docs/SymbolPriceBankModel.md)
 - [CybridApiBank::TradeBankModel](docs/TradeBankModel.md)
 - [CybridApiBank::TradeFailureCodeBankModel](docs/TradeFailureCodeBankModel.md)
 - [CybridApiBank::TradeListBankModel](docs/TradeListBankModel.md)
 - [CybridApiBank::TradeSideBankModel](docs/TradeSideBankModel.md)
 - [CybridApiBank::TradeStateBankModel](docs/TradeStateBankModel.md)
 - [CybridApiBank::TradeTypeBankModel](docs/TradeTypeBankModel.md)
 - [CybridApiBank::TransferAccountTypeBankModel](docs/TransferAccountTypeBankModel.md)
 - [CybridApiBank::TransferBankModel](docs/TransferBankModel.md)
 - [CybridApiBank::TransferDestinationAccountBankModel](docs/TransferDestinationAccountBankModel.md)
 - [CybridApiBank::TransferEntryBankModel](docs/TransferEntryBankModel.md)
 - [CybridApiBank::TransferEntryDestinationAccountBankModel](docs/TransferEntryDestinationAccountBankModel.md)
 - [CybridApiBank::TransferFailureCodeBankModel](docs/TransferFailureCodeBankModel.md)
 - [CybridApiBank::TransferHoldDetailsBankModel](docs/TransferHoldDetailsBankModel.md)
 - [CybridApiBank::TransferListBankModel](docs/TransferListBankModel.md)
 - [CybridApiBank::TransferParticipantBankModel](docs/TransferParticipantBankModel.md)
 - [CybridApiBank::TransferSideBankModel](docs/TransferSideBankModel.md)
 - [CybridApiBank::TransferSourceAccountBankModel](docs/TransferSourceAccountBankModel.md)
 - [CybridApiBank::TransferStateBankModel](docs/TransferStateBankModel.md)
 - [CybridApiBank::TransferTypeBankModel](docs/TransferTypeBankModel.md)
 - [CybridApiBank::TravelRuleInfoPartyBankModel](docs/TravelRuleInfoPartyBankModel.md)
 - [CybridApiBank::WorkflowBankModel](docs/WorkflowBankModel.md)
 - [CybridApiBank::WorkflowStateBankModel](docs/WorkflowStateBankModel.md)
 - [CybridApiBank::WorkflowTypeBankModel](docs/WorkflowTypeBankModel.md)
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
  - bank_applications:execute: bank_applications execute
  - accounts:read: accounts read
  - accounts:execute: accounts execute
  - counterparties:read: counterparties read
  - counterparties:pii:read: counterparties pii read
  - counterparties:write: counterparties write
  - counterparties:execute: counterparties execute
  - customers:read: customers read
  - customers:pii:read: customers pii read
  - customers:write: customers write
  - customers:execute: customers execute
  - prices:read: prices read
  - quotes:execute: quotes execute
  - quotes:read: quotes read
  - trades:execute: trades execute
  - trades:read: trades read
  - transfers:execute: transfers execute
  - transfers:read: transfers read
  - transfers:write: transfers write
  - external_bank_accounts:read: external_bank_accounts read
  - external_bank_accounts:pii:read: external_bank_accounts pii read
  - external_bank_accounts:write: external_bank_accounts write
  - external_bank_accounts:execute: external_bank_accounts execute
  - external_wallets:read: external_wallets read
  - external_wallets:execute: external_wallets execute
  - workflows:read: workflows read
  - workflows:execute: workflows execute
  - deposit_addresses:read: deposit_addresses read
  - deposit_addresses:execute: deposit_addresses execute
  - deposit_bank_accounts:read: deposit_bank_accounts read
  - deposit_bank_accounts:execute: deposit_bank_accounts execute
  - invoices:read: invoices read
  - invoices:write: invoices write
  - invoices:execute: invoices execute
  - identity_verifications:read: identity_verifications read
  - identity_verifications:pii:read: identity_verifications pii read
  - identity_verifications:write: identity_verifications write
  - identity_verifications:execute: identity_verifications execute
  - persona_sessions:execute: persona_sessions execute
  - plans:execute: plans execute
  - plans:read: plans read
  - executions:execute: executions execute
  - executions:read: executions read
  - files:read: files read
  - files:pii:read: files pii read
  - files:execute: files execute

