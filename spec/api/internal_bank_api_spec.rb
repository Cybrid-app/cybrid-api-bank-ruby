=begin
#Cybrid Bank API

## Cybrid API documentation  Welcome to Cybrid, an all-in-one crypto platform that enables you to easily **build** and **launch** white-label crypto products or services.  In these documents, you'll find details on how our REST API operates and generally how our platform functions.  If you're looking for our UI SDK Widgets for Web or Mobile (iOS/Android), generated API clients, or demo applications, head over to our [Github repo](https://github.com/Cybrid-app).  💡 We recommend bookmarking the [Cybrid LinkTree](https://linktr.ee/cybridtechnologies) which contains many helpful links to platform resources.  ## Getting Started  This is Cybrid's public interactive API documentation, which allows you to fully test our APIs. If you'd like to use a different tool to exercise our APIs, you can download the [Open API 3.0 yaml](<api_platform_bank_swagger_schema_url>) for import.  If you're new to our APIs and the Cybrid Platform, follow the below guides to get set up and familiar with the platform:  1. [Introduction](https://docs.cybrid.xyz/docs/introduction) 2. [Platform Introduction](https://docs.cybrid.xyz/docs/how-is-cybrid-architected) 3. [Testing with Hosted Web Demo App](https://docs.cybrid.xyz/docs/testing-with-hosted-web-demo-app)  In [Getting Started in the Cybrid Sandbox](https://docs.cybrid.xyz/docs/how-do-i-get-started-with-the-sandbox), we walk you through how to use the [Cybrid Sandbox](https://id.sandbox.cybrid.app/) to create a test bank and generate API keys. In [Getting Ready for Trading](https://kb.cybrid.xyz/getting-ready-for-trading), we walk through creating customers, customer identities, accounts, as well as executing quotes and trades.  ## Working with the Cybrid Platform  There are three primary ways you can interact with the Cybrid platform:  1. Directly via our RESTful API (this documentation) 2. Using our API clients available in a variety of languages ([Angular](https://github.com/Cybrid-app/cybrid-api-bank-angular), [Java](https://github.com/Cybrid-app/cybrid-api-bank-java), [Kotlin](https://github.com/Cybrid-app/cybrid-api-bank-kotlin), [Python](https://github.com/Cybrid-app/cybrid-api-bank-python), [Ruby](https://github.com/Cybrid-app/cybrid-api-bank-ruby), [Swift](https://github.com/Cybrid-app/cybrid-api-bank-swift) or [Typescript](https://github.com/Cybrid-app/cybrid-api-bank-typescript)) 3. Integrating a platform specific SDK ([Web](https://github.com/Cybrid-app/cybrid-sdk-web), [Android](https://github.com/Cybrid-app/cybrid-sdk-android), [iOS](https://github.com/Cybrid-app/cybrid-sdk-ios))  Our complete set of APIs allows you to manage resources across three distinct areas: your `Organization`, your `Banks` and your `Identities`. For most of your testing and interaction you'll be using the `Bank` API, which is where the majority of APIs reside.  *The complete set of APIs can be found on the following pages:*  | API                                                              | Description                                                 | |------------------------------------------------------------------|-------------------------------------------------------------| | [Organization API](<api_platform_organization_swagger_ui_url>)   | APIs to manage organizations                                | | [Bank API](<api_platform_bank_swagger_ui_url>)                   | APIs to manage banks (and all downstream customer activity) | | [Identities API](<api_idp_swagger_ui_url>)                       | APIs to manage organization and bank identities             |  For questions please contact [Support](mailto:support@cybrid.xyz) at any time for assistance, or contact the [Product Team](mailto:product@cybrid.xyz) for product suggestions.  ## Authenticating with the API  The Cybrid Platform uses OAuth 2.0 Bearer Tokens to authenticate requests to the platform. Credentials to create `Organization` and `Bank` tokens can be generated via the [Cybrid Sandbox](<api_idp_url>). Access tokens can be generated for a `Customer` as well via the [Cybrid IdP](<api_idp_url>) as well.  An `Organization` access token applies broadly to the whole Organization and all of its `Banks`, whereas, a `Bank` access token is specific to an individual Bank. `Customer` tokens, similarly, are scoped to a specific customer in a bank.  Both `Organization` and `Bank` tokens can be created using the OAuth Client Credential Grant flow. Each Organization and Bank has its own unique `Client ID` and `Secret` that allows for machine-to-machine authentication.  A `Bank` can then generate `Customer` access tokens via API using our [Identities API](<api_idp_swagger_ui_url>).  <font color=\"orange\">**⚠️ Never share your Client ID or Secret publicly or in your source code repository.**</font>  Your `Client ID` and `Secret` can be exchanged for a time-limited `Bearer Token` by interacting with the Cybrid Identity Provider or through interacting with the **Authorize** button in this document.  The following curl command can be used to quickly generate a `Bearer Token` for use in testing the API or demo applications.  ``` # Example request when using Bank credentials curl -X POST <api_idp_url>/oauth/token -d '{     \"grant_type\": \"client_credentials\",     \"client_id\": \"<Your Client ID>\",     \"client_secret\": \"<Your Secret>\",     \"scope\": \"<api_platform_bank_scopes>\"   }' -H \"Content-Type: application/json\"  # When using Organization credentials set `scope` to '<api_platform_organization_scopes>' ``` <font color=\"orange\">**⚠️ Note: The above curl will create a bearer token with full scope access. Delete scopes if you'd like to restrict access.**</font>  ## Authentication Scopes  The Cybrid platform supports the use of scopes to control the level of access a token is limited to. Scopes do not grant access to resources; instead, they provide limits, in support of the least privilege principal.  The following scopes are available on the platform and can be requested when generating either an Organization, Bank or Customer token. Generally speaking, the _Read_ scope is required to read and list resources, the _Write_ scope is required to update a resource and the _Execute_ scope is required to create a resource.  | Resource              | Read scope (Token Type)                                    | Write scope (Token Type)                      | Execute scope (Token Type)                       | |-----------------------|------------------------------------------------------------|-----------------------------------------------|--------------------------------------------------| | Account               | accounts:read (Organization, Bank, Customer)               |                                               | accounts:execute (Bank, Customer)                | | Bank                  | banks:read (Organization, Bank)                            | banks:write (Organization, Bank)              | banks:execute (Organization)                     | | Customer              | customers:read (Organization, Bank, Customer)              | customers:write (Bank, Customer)              | customers:execute (Bank)                         | | Counterparty          | counterparties:read (Organization, Bank, Customer)         | counterparties:write (Bank, Customer)         | counterparties:execute (Bank)                    | | Deposit Address       | deposit_addresses:read (Organization, Bank, Customer)      | deposit_addresses:write (Bank, Customer)      | deposit_addresses:execute (Bank, Customer)       | | External Bank Account | external_bank_accounts:read (Organization, Bank, Customer) | external_bank_accounts:write (Bank, Customer) | external_bank_accounts:execute (Bank, Customer)  | | External Wallet       | external_wallet:read (Organization, Bank, Customer)        |                                               | external_wallet:execute (Bank, Customer)         | | Organization          | organizations:read (Organization)                          | organizations:write (Organization)            |                                                  | | User                  | users:read (Organization)                                  |                                               | users:execute (Organization)                     | | Price                 | prices:read (Bank, Customer)                               |                                               |                                                  | | Quote                 | quotes:read (Organization, Bank, Customer)                 |                                               | quotes:execute (Organization, Bank, Customer)    | | Trade                 | trades:read (Organization, Bank, Customer)                 |                                               | trades:execute (Organization, Bank, Customer)    | | Transfer              | transfers:read (Organization, Bank, Customer)              |                                               | transfers:execute (Organization, Bank, Customer) | | Workflow              | workflows:read (Organization, Bank, Customer)              |                                               | workflows:execute (Bank, Customer)               | | Invoice               | invoices:read (Organization, Bank, Customer)               | invoices:write (Bank, Customer)               | invoices:execute (Bank, Customer)                |  ## Available Endpoints  The available APIs for the [Identity](<api_idp_swagger_ui_url>), [Organization](<api_platform_organization_swagger_ui_url>) and [Bank](<api_platform_bank_swagger_ui_url>) API services are listed below:  | API Service  | Model                | API Endpoint Path              | Description                                                                                       | |--------------|----------------------|--------------------------------|---------------------------------------------------------------------------------------------------| | Identity     | Bank                 | /api/bank_applications         | Create and list banks                                                                             | | Identity     | CustomerToken        | /api/customer_tokens           | Create customer JWT access tokens                                                                 | | Identity     | Organization         | /api/organization_applications | Create and list organizations                                                                     | | Identity     | Organization         | /api/users                     | Create and list organization users                                                                | | Organization | Organization         | /api/organizations             | APIs to retrieve and update organization name                                                     | | Bank         | Account              | /api/accounts                  | Create and list accounts, which hold a specific asset for a customers                             | | Bank         | Asset                | /api/assets                    | Get a list of assets supported by the platform (ex: BTC, ETH)                                     | | Bank         | Bank                 | /api/banks                     | Create, update and list banks, the parent to customers, accounts, etc                             | | Bank         | Customer             | /api/customers                 | Create and list customers                                                                         | | Bank         | Counterparty         | /api/counterparties            | Create and list counterparties                                                                    | | Bank         | DepositAddress       | /api/deposit_addresses         | Create, get and list deposit addresses                                                            | | Bank         | ExternalBankAccount  | /api/external_bank_accounts    | Create, get and list external bank accounts, which connect customer bank accounts to the platform | | Bank         | ExternalWallet       | /api/external_wallets          | Create, get, list and delete external wallets, which connect customer wallets to the platform     | | Bank         | IdentityVerification | /api/identity_verifications    | Create and list identity verifications, which are performed on customers for KYC                  | | Bank         | Invoice              | /api/invoices                  | Create, get, cancel and list invoices                                                             | | Bank         | PaymentInstruction   | /api/payment_instructions      | Create, get and list payment instructions for invoices                                            | | Bank         | Price                | /api/prices                    | Get the current prices for assets on the platform                                                 | | Bank         | Quote                | /api/quotes                    | Create and list quotes, which are required to execute trades                                      | | Bank         | Symbol               | /api/symbols                   | Get a list of symbols supported for trade (ex: BTC-USD)                                           | | Bank         | Trade                | /api/trades                    | Create and list trades, which buy or sell cryptocurrency                                          | | Bank         | Transfer             | /api/transfers                 | Create, get and list transfers (e.g., funding, book)                                              | | Bank         | Workflow             | /api/workflows                 | Create, get and list workflows                                                                    |  ## Understanding Object Models & Endpoints  **Organizations**  An `Organization` is meant to represent the organization partnering with Cybrid to use our platform.  An `Organization` typically does not directly interact with `customers`. Instead, an Organization has one or more `banks`, which encompass the financial service offerings of the platform.  **Banks**  A `Bank` is owned by an `Organization` and can be thought of as an environment or container for `customers` and product offerings. Banks are created in either `Sandbox` or `Production` mode, where `Sandbox` is the environment that you would test, prototype and build in prior to moving to `Production`.  An `Organization` can have multiple `banks`, in either `Sandbox` or `Production` environments. A `Sandbox Bank` will be backed by stubbed data and process flows. For instance, funding source transfer processes as well as trades will be simulated rather than performed, however asset prices are representative of real-world values. You have an unlimited amount of simulated fiat currency for testing purposes.  **Customers**  `Customers` represent your banking users on the platform. At present, we offer support for `Individuals` as Customers.  `Customers` must be verified (i.e., KYC'd) in our system before they can play any part on the platform, which means they must have an associated and a passing `Identity Verification`. See the Identity Verifications section for more details on how a customer can be verified.  `Customers` must also have an `Account` to be able to transact, in the desired asset class. See the Accounts APIs for more details on setting up accounts for the customer. 

The version of the OpenAPI document: v0.0.0
Contact: support@cybrid.app
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.0

=end

require 'spec_helper'
require 'json'

# Unit tests for CybridApiBank::InternalBankApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'InternalBankApi' do
  before do
    # run before each test
    @api_instance = CybridApiBank::InternalBankApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of InternalBankApi' do
    it 'should create an instance of InternalBankApi' do
      expect(@api_instance).to be_instance_of(CybridApiBank::InternalBankApi)
    end
  end

  # unit tests for internal_claim_exchange_settlement_payment_order
  # Claim Exchange Settlement Payment Order
  # Claim an Exchange Settlement Payment Order.  Required scope: **internal:exchange_settlements:write**
  # @param guid Identifier for the exchange settlement expected payment.
  # @param post_internal_claim_exchange_settlement_payment_order_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [InternalExchangeSettlementPaymentOrderBankModel]
  describe 'internal_claim_exchange_settlement_payment_order test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_claim_expected_payment
  # Claim Expected Payment
  # Claim an Expected Payments.  Required scope: **internal:exchange_settlements:write**
  # @param guid Identifier for the expected payment.
  # @param post_internal_claim_expected_payment_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [InternalExpectedPaymentBankModel]
  describe 'internal_claim_expected_payment test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_create_account
  # Create Account
  # Creates an account.  Required scope: **internal:accounts:execute**
  # @param internal_post_account_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [AccountBankModel]
  describe 'internal_create_account test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_create_activity_limit_configuration
  # Create ActivityLimitConfiguration
  # Creates a transfer rail configuration.  Required scope: **internal:banks:write**
  # @param post_internal_activity_limit_configuration_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [InternalActivityLimitConfigurationBankModel]
  describe 'internal_create_activity_limit_configuration test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_create_activity_report
  # Create Activity Report
  # Create an Activity Report.  Required scope: **internal:reports:execute**
  # @param post_internal_activity_report_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [InternalActivityReportBankModel]
  describe 'internal_create_activity_report test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_create_bank
  # Create Bank
  # Create a bank.  Required scope: **internal:banks:execute**
  # @param post_internal_bank_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [InternalBankBankModel]
  describe 'internal_create_bank test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_create_bank_account_service
  # Create BankAccountService
  # Create an BankAccountService.  Required scope: **internal:bank_account_services:execute**
  # @param post_internal_bank_account_service_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [InternalBankAccountServiceBankModel]
  describe 'internal_create_bank_account_service test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_create_compliance_decision
  # Create Compliance Decision
  # Create an Compliance Decision.  Required scope: **internal:customers:write**
  # @param post_internal_compliance_decision_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [InternalComplianceDecisionBankModel]
  describe 'internal_create_compliance_decision test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_create_country_code_configuration
  # Create CountryCodeConfiguration
  # Creates a country code configuration.  Required scope: **internal:banks:write**
  # @param post_internal_country_code_configuration_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [InternalCountryCodeConfigurationBankModel]
  describe 'internal_create_country_code_configuration test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_create_crypto_asset_configuration
  # Create CryptoAssetConfiguration
  # Creates a crypto asset configuration.  Required scope: **internal:banks:write**
  # @param post_internal_crypto_asset_configuration_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [InternalCryptoAssetConfigurationBankModel]
  describe 'internal_create_crypto_asset_configuration test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_create_cybrid_account
  # Create CybridAccount
  # Create a CybridAccount.  Required scope: **internal:cybrid_accounts:execute**
  # @param post_internal_cybrid_account_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [InternalCybridAccountBankModel]
  describe 'internal_create_cybrid_account test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_create_cybrid_gas_account_configuration
  # Create CybridGasAccountConfiguration
  # Creates a cybrid gas account configuration.  Required scope: **internal:accounts:write**
  # @param post_internal_cybrid_gas_account_configuration_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [InternalCybridGasAccountConfigurationBankModel]
  describe 'internal_create_cybrid_gas_account_configuration test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_create_deposit_bank_account
  # Create Deposit Bank Account
  # Creates a deposit bank account.  Required scope: **internal:deposit_bank_accounts:execute**
  # @param internal_post_deposit_bank_account_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [DepositBankAccountBankModel]
  describe 'internal_create_deposit_bank_account test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_create_exchange
  # Create Exchange
  # Create an Exchanges.  Required scope: **internal:exchanges:execute**
  # @param post_internal_exchange_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [InternalExchangeBankModel]
  describe 'internal_create_exchange test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_create_exchange_account
  # Create ExchangeAccount
  # Create an ExchangeAccount.  Required scope: **internal:exchange_accounts:execute**
  # @param post_internal_exchange_account_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [InternalExchangeAccountBankModel]
  describe 'internal_create_exchange_account test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_create_exchange_monitor
  # Create ExchangeMonitor
  # Creates a ExchangeMonitor.Required scope: **internal:exchange_monitors:execute**
  # @param post_internal_exchange_monitor_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [InternalExchangeMonitorBankModel]
  describe 'internal_create_exchange_monitor test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_create_exchange_order
  # Create ExchangeOrder
  # Creates a ExchangeOrder.Required scope: **internal:exchange_orders:execute**
  # @param post_internal_exchange_order_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [InternalExchangeOrderBankModel]
  describe 'internal_create_exchange_order test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_create_exchange_settlement
  # Create Exchange Settlement
  # Create an Exchange Settlements.  Required scope: **internal:exchange_settlements:execute**
  # @param post_internal_exchange_settlement_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [InternalExchangeSettlementBankModel]
  describe 'internal_create_exchange_settlement test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_create_exchange_settlement_approval
  # Create Exchange Settlement Approval
  # Queue an Exchange Settlement Approval.  Required scope: **internal:exchange_settlements:write**
  # @param guid Identifier for the exchange settlement.
  # @param [Hash] opts the optional parameters
  # @return [InternalCreateExchangeSettlementApproval202ResponseBankModel]
  describe 'internal_create_exchange_settlement_approval test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_create_exchange_settlement_completion
  # Create Exchange Settlement Completion
  # Queue an Exchange Settlement Completion.  Required scope: **internal:exchange_settlements:write**
  # @param guid Identifier for the exchange settlement.
  # @param [Hash] opts the optional parameters
  # @return [InternalCreateExchangeSettlementApproval202ResponseBankModel]
  describe 'internal_create_exchange_settlement_completion test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_create_exchange_settlement_configuration
  # Create ExchangeSettlementConfiguration
  # Creates a configuration.  Required scope: **internal:exchanges:execute**
  # @param post_internal_exchange_settlement_configuration_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [InternalExchangeSettlementConfigurationBankModel]
  describe 'internal_create_exchange_settlement_configuration test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_create_exchange_settlement_payment_order
  # Create Exchange Settlement Payment Order
  # Create an Exchange Settlement Payment Orders.  Required scope: **internal:exchange_settlements:execute**
  # @param post_internal_exchange_settlement_payment_order_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [InternalExchangeSettlementPaymentOrderBankModel]
  describe 'internal_create_exchange_settlement_payment_order test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_create_expected_payment
  # Create Expected Payment
  # Create an Expected Payments.  Required scope: **internal:exchange_settlements:execute**
  # @param post_internal_expected_payment_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [InternalExpectedPaymentBankModel]
  describe 'internal_create_expected_payment test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_create_external_bank_account
  # Create ExternalBankAccount
  # Create an ExternalBankAccount.  Required scope: **internal:accounts:execute**
  # @param post_internal_external_bank_account_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [InternalExternalBankAccountBankModel]
  describe 'internal_create_external_bank_account test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_create_external_wallet
  # Create ExternalWallet
  # Create an ExternalWallet.  Required scope: **internal:accounts:execute**
  # @param post_internal_external_wallet_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [InternalExternalWalletBankModel]
  describe 'internal_create_external_wallet test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_create_fee
  # Create Fee
  # Creates a Fee.Required scope: **internal:fees:execute**
  # @param post_internal_fee_charge_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [InternalFeeChargeBankModel]
  describe 'internal_create_fee test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_create_fee_configuration
  # Create FeeConfiguration
  # Creates a fee configuration.  Required scope: **internal:banks:write**
  # @param internal_post_fee_configuration_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [InternalFeeConfigurationBankModel]
  describe 'internal_create_fee_configuration test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_create_fiat_asset_configuration
  # Create FiatAssetConfiguration
  # Creates a fiat asset configuration.  Required scope: **internal:banks:write**
  # @param post_internal_fiat_asset_configuration_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [InternalFiatAssetConfigurationBankModel]
  describe 'internal_create_fiat_asset_configuration test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_create_file
  # Create File
  # Creates a file.  Required scope: **internal:files:execute**
  # @param post_file_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [PlatformFileBankModel]
  describe 'internal_create_file test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_create_internal_bank_account
  # Create InternalBankAccount
  # Create an InternalBankAccount.  Required scope: **internal:accounts:execute**
  # @param post_internal_internal_bank_account_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [InternalInternalBankAccountBankModel]
  describe 'internal_create_internal_bank_account test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_create_internal_bank_account_configuration
  # Create InternalBankAccountConfiguration
  # Creates an internal bank account configuration.  Required scope: **internal:banks:write**
  # @param post_internal_internal_bank_account_configuration_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [InternalInternalBankAccountConfigurationBankModel]
  describe 'internal_create_internal_bank_account_configuration test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_create_internal_wallet
  # Create InternalWallet
  # Create an InternalWallet.  Required scope: **internal:accounts:execute**
  # @param post_internal_internal_wallet_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [InternalInternalWalletBankModel]
  describe 'internal_create_internal_wallet test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_create_internal_wallet_configuration
  # Create InternalWalletConfiguration
  # Creates an internal wallet configuration.  Required scope: **internal:banks:write**
  # @param post_internal_internal_wallet_configuration_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [InternalInternalWalletConfigurationBankModel]
  describe 'internal_create_internal_wallet_configuration test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_create_payout_symbol_configuration
  # Create PayoutSymbolConfiguration
  # Creates a payout symbol configuration.  Required scope: **internal:banks:write**
  # @param post_internal_payout_symbol_configuration_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [InternalPayoutSymbolConfigurationBankModel]
  describe 'internal_create_payout_symbol_configuration test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_create_quote
  # Create InternalQuote
  # Creates a quote.  Required scope: **internal:quotes:read**
  # @param internal_post_quote_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [InternalQuoteBankModel]
  describe 'internal_create_quote test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_create_reconciliation
  # Create Reconciliation
  # Creates a Reconciliation.Required scope: **internal:transfers:write**
  # @param post_internal_reconciliation_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [InternalReconciliationBankModel]
  describe 'internal_create_reconciliation test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_create_stage
  # Create Stage
  # Create an Stage.  Required scope: **internal:plans:write**
  # @param post_internal_stage_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [InternalStageBankModel]
  describe 'internal_create_stage test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_create_trade
  # Create Internal Trade
  # Creates a trade.  Required scope: **internal:trades:execute**
  # @param post_internal_trade_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [InternalTradeBankModel]
  describe 'internal_create_trade test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_create_trading_symbol_configuration
  # Create TradingSymbolConfiguration
  # Creates a trading symbol configuration.  Required scope: **internal:banks:write**
  # @param post_internal_trading_symbol_configuration_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [InternalTradingSymbolConfigurationBankModel]
  describe 'internal_create_trading_symbol_configuration test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_create_transaction_monitor
  # Create TransactionMonitor
  # Creates a TransactionMonitor.Required scope: **internal:transaction_monitors:execute**
  # @param post_internal_transaction_monitor_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [InternalTransactionMonitorBankModel]
  describe 'internal_create_transaction_monitor test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_create_transfer
  # Create Transfer
  # Create an Transfer.  Required scope: **internal:transfers:execute**
  # @param post_internal_transfer_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [InternalTransferBankModel]
  describe 'internal_create_transfer test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_create_transfer_rail_configuration
  # Create TransferRailConfiguration
  # Creates a transfer rail configuration.  Required scope: **internal:banks:write**
  # @param post_internal_transfer_rail_configuration_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [InternalTransferRailConfigurationBankModel]
  describe 'internal_create_transfer_rail_configuration test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_create_transfer_screening
  # Create TransferScreening
  # Create an TransferScreening.  Required scope: **internal:accounts:execute**
  # @param post_internal_transfer_screening_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [InternalTransferScreeningBankModel]
  describe 'internal_create_transfer_screening test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_create_wallet_service
  # Create WalletService
  # Create an WalletService.  Required scope: **internal:wallet_services:execute**
  # @param post_internal_wallet_service_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [InternalWalletServiceBankModel]
  describe 'internal_create_wallet_service test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_crypto_funding_deposit_transfer
  # Create Crypto Funding Deposit Transfer
  # Create a Crypto Funding Deposit Transfer.  Required scope: **internal:transfers:execute**
  # @param post_internal_crypto_funding_deposit_transfer_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [InternalCryptoFundingDepositTransferBankModel]
  describe 'internal_crypto_funding_deposit_transfer test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_delete_activity_limit_configuration
  # Delete ActivityLimitConfiguration
  # Deletes an activity limit configuration.  Required scope: **internal:banks:write**
  # @param guid Identifier for the activity limit configuration.
  # @param [Hash] opts the optional parameters
  # @return [InternalActivityLimitConfigurationBankModel]
  describe 'internal_delete_activity_limit_configuration test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_delete_external_bank_account
  # Delete External Bank Account
  # Deletes an external bank account.  Required scope: **internal:accounts:execute**
  # @param external_bank_account_guid Identifier for the external bank account.
  # @param [Hash] opts the optional parameters
  # @return [InternalExternalBankAccountBankModel]
  describe 'internal_delete_external_bank_account test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_funding_deposit_transfer
  # Create Funding Deposit Transfer
  # Create a Funding Deposit Transfer.  Required scope: **internal:transfers:execute**
  # @param post_internal_funding_deposit_transfer_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [InternalFundingDepositTransferBankModel]
  describe 'internal_funding_deposit_transfer test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_get_bank
  # Get Bank
  # Retrieves a bank.  Required scope: **internal:banks:read**
  # @param bank_guid Identifier for the bank.
  # @param [Hash] opts the optional parameters
  # @return [InternalBankBankModel]
  describe 'internal_get_bank test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_get_bank_account_service
  # Get BankAccountService
  # Retrieves a bank_account service.  Required scope: **internal:bank_account_services:read**
  # @param bank_account_service_guid Identifier for the bank_account service.
  # @param [Hash] opts the optional parameters
  # @return [InternalBankAccountServiceBankModel]
  describe 'internal_get_bank_account_service test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_get_customer
  # Get Customer
  # Retrieves a customer.  Required scope: **internal:customers:read**
  # @param customer_guid Identifier for the customer.
  # @param [Hash] opts the optional parameters
  # @return [CustomerBankModel]
  describe 'internal_get_customer test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_get_cybrid_account
  # Get CybridAccount
  # Get an CybridAccount.  Required scope: **internal:cybrid_accounts:read**
  # @param account_guid Identifier for the Cybrid account.
  # @param [Hash] opts the optional parameters
  # @return [InternalCybridAccountBankModel]
  describe 'internal_get_cybrid_account test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_get_exchange
  # Get Exchange
  # Get an Exchange.  Required scope: **internal:exchanges:read**
  # @param exchange_guid Identifier for the exchange.
  # @param [Hash] opts the optional parameters
  # @return [InternalExchangeBankModel]
  describe 'internal_get_exchange test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_get_exchange_account
  # Get ExchangeAccount
  # Get an ExchangeAccount.  Required scope: **internal:exchange_accounts:read**
  # @param account_guid Identifier for the bank.
  # @param [Hash] opts the optional parameters
  # @return [InternalExchangeAccountBankModel]
  describe 'internal_get_exchange_account test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_get_exchange_settlement
  # Get Exchange Settlement
  # Get an Exchange Settlement.  Required scope: **internal:exchange_settlements:read**
  # @param guid Identifier for the exchange settlement.
  # @param [Hash] opts the optional parameters
  # @return [InternalExchangeSettlementBankModel]
  describe 'internal_get_exchange_settlement test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_get_exchange_settlement_obligation
  # Get Exchange Settlement Obligation
  # Get an Exchange Settlement Obligation.  Required scope: **internal:exchange_settlements:read**
  # @param guid Identifier for the exchange settlement obligation.
  # @param [Hash] opts the optional parameters
  # @return [InternalExchangeSettlementObligationBankModel]
  describe 'internal_get_exchange_settlement_obligation test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_get_exchange_settlement_payment_order
  # Get Exchange Settlement Payment Order
  # Get an Exchange Settlement Payment Order.  Required scope: **internal:exchange_settlements:read**
  # @param guid Identifier for the exchange settlement payment order.
  # @param [Hash] opts the optional parameters
  # @return [InternalExchangeSettlementPaymentOrderBankModel]
  describe 'internal_get_exchange_settlement_payment_order test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_get_execution
  # Get Execution
  # Retrieves a execution.  Required scope: **internal:executions:read**
  # @param execution_guid Identifier for the execution.
  # @param [Hash] opts the optional parameters
  # @return [InternalExecutionBankModel]
  describe 'internal_get_execution test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_get_expected_payment
  # Get Expected Payment
  # Get an Expected Payment.  Required scope: **internal:exchange_settlements:read**
  # @param guid Identifier for the expected payment.
  # @param [Hash] opts the optional parameters
  # @return [InternalExpectedPaymentBankModel]
  describe 'internal_get_expected_payment test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_get_external_bank_account
  # Get ExternalBankAccount
  # Retrieves an external bank account.  Required scope: **internal:accounts:read**
  # @param external_bank_account_guid Identifier for the external bank account.
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :force_balance_refresh Force the balance on the account to be updated.
  # @option opts [Boolean] :include_balances Include account balances in the response.
  # @option opts [Boolean] :include_pii Include account holder&#39;s PII in the response.
  # @return [InternalExternalBankAccountBankModel]
  describe 'internal_get_external_bank_account test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_get_external_wallet
  # Get ExternalWallet
  # Retrieves an internal wallet.  Required scope: **internal:accounts:read**
  # @param external_wallet_guid Identifier for the internal wallet.
  # @param [Hash] opts the optional parameters
  # @return [InternalExternalWalletBankModel]
  describe 'internal_get_external_wallet test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_get_external_wallet_screening
  # Get ExternalWalletScreening
  # Retrieves an external wallet screening.  Required scope: **internal:external_wallet_screenings:read**
  # @param external_wallet_screening_guid Identifier for the external wallet screening.
  # @param [Hash] opts the optional parameters
  # @return [InternalExternalWalletScreeningBankModel]
  describe 'internal_get_external_wallet_screening test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_get_file
  # Get File
  # Retrieves an file.  Required scope: **internal:files:read**
  # @param file_guid Identifier for the file.
  # @param [Hash] opts the optional parameters
  # @return [PlatformFileBankModel]
  describe 'internal_get_file test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_get_internal_bank_account
  # Get InternalBankAccount
  # Retrieves an internal bank account.  Required scope: **internal:accounts:read**
  # @param internal_bank_account_guid Identifier for the internal bank account.
  # @param [Hash] opts the optional parameters
  # @return [InternalInternalBankAccountBankModel]
  describe 'internal_get_internal_bank_account test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_get_internal_wallet
  # Get InternalWallet
  # Retrieves an internal wallet.  Required scope: **internal:accounts:read**
  # @param internal_wallet_guid Identifier for the internal wallet.
  # @param [Hash] opts the optional parameters
  # @return [InternalInternalWalletBankModel]
  describe 'internal_get_internal_wallet test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_get_invoice
  # Get Invoice
  # Retrieves an invoice.  Required scope: **internal:invoices:read**
  # @param invoice_guid Identifier for the invoice.
  # @param [Hash] opts the optional parameters
  # @return [InternalInvoiceBankModel]
  describe 'internal_get_invoice test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_get_plan
  # Get Plan
  # Retrieves a plan.  Required scope: **internal:plans:read**
  # @param plan_guid Identifier for the plan.
  # @param [Hash] opts the optional parameters
  # @return [InternalPlanBankModel]
  describe 'internal_get_plan test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_get_quote
  # Get Internal Quote
  # Retrieves a quote.  Required scope: **internal:quotes:read**
  # @param quote_guid Identifier for the quote.
  # @param [Hash] opts the optional parameters
  # @return [InternalQuoteBankModel]
  describe 'internal_get_quote test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_get_reconciliation
  # Get Reconciliation
  # Retrieves a reconciliation.  Required scope: **internal:transfers:read**
  # @param guid Identifier for the resource.
  # @param [Hash] opts the optional parameters
  # @return [InternalReconciliationBankModel]
  describe 'internal_get_reconciliation test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_get_trade
  # Get Internal Trade
  # Retrieves a trade.  Required scope: **internal:trades:read**
  # @param trade_guid Identifier for the trade.
  # @param [Hash] opts the optional parameters
  # @return [InternalTradeBankModel]
  describe 'internal_get_trade test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_get_transfer
  # Get Transfer
  # Retrieves an internal transfer.  Required scope: **internal:transfers:read**
  # @param guid Identifier for the internal transfer.
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :include_provider_info Include provider info in the response.
  # @return [InternalTransferBankModel]
  describe 'internal_get_transfer test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_get_transfer_screening
  # Get TransferScreening
  # Retrieves an transfer screening.  Required scope: **internal:transfer_screenings:read**
  # @param transfer_screening_guid Identifier for the transfer screening.
  # @param [Hash] opts the optional parameters
  # @return [InternalTransferScreeningBankModel]
  describe 'internal_get_transfer_screening test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_get_wallet_service
  # Get WalletService
  # Retrieves a wallet service.  Required scope: **internal:wallet_services:read**
  # @param wallet_service_guid Identifier for the wallet service.
  # @param [Hash] opts the optional parameters
  # @return [InternalWalletServiceBankModel]
  describe 'internal_get_wallet_service test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_list_accounts
  # List Accounts
  # Retrieves a list of accounts.  Required scope: **internal:accounts:read**
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page The page index to retrieve.
  # @option opts [Integer] :per_page The number of entities per page to return.
  # @option opts [String] :owner The owner of the entity.
  # @option opts [String] :guid Comma separated account_guids to list accounts for.
  # @option opts [String] :customer_guid Comma separated customer_guids to list accounts for.
  # @option opts [String] :bank_guid Comma separated bank_guids to list accounts for.
  # @option opts [String] :type Comma separated account types to list accounts for.
  # @option opts [String] :asset Comma separated assets to list accounts for.
  # @return [AccountListBankModel]
  describe 'internal_list_accounts test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_list_activity_limit_configurations
  # List ActivityLimitConfigurations
  # Retrieves a listing of activity limit configurations.  Required scope: **internal:banks:read**
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page 
  # @option opts [Integer] :per_page 
  # @option opts [String] :type Comma separated configuration types to list activity limit configurations for.
  # @option opts [String] :environment Comma separated environments to list activity limit configurations for. 
  # @option opts [String] :guid Comma separated guids to list activity limit configurations for.
  # @option opts [String] :customer_guid Comma separated customer guids to list activity limit configurations for.
  # @option opts [String] :bank_guid Comma separated bank guids to list activity limit configurations for.
  # @option opts [String] :audience Comma separated audiences to list activity limit configurations for.
  # @option opts [String] :country_code Comma separated country codes to list activity limit configurations for.
  # @option opts [String] :activity Comma separated activity types to list activity limit configurations for.
  # @option opts [String] :side Comma separated activity sides to list activity limit configurations for.
  # @return [InternalActivityLimitConfigurationListBankModel]
  describe 'internal_list_activity_limit_configurations test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_list_bank_account_services
  # List BankAccountServices
  # Retrieves a listing of bank_account services.  Required scope: **internal:bank_account_services:read**
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page 
  # @option opts [Integer] :per_page 
  # @option opts [String] :environment Comma separated environments to list bank_account services for.
  # @option opts [String] :guid Comma separated guids to list bank_account services for.
  # @option opts [String] :type Comma separated types to list bank_account services for.
  # @return [InternalBankAccountServiceListBankModel]
  describe 'internal_list_bank_account_services test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_list_banks
  # List Banks
  # Retrieves a listing of banks.  Required scope: **internal:banks:read**
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page The page index to retrieve.
  # @option opts [Integer] :per_page The number of entities per page to return.
  # @option opts [String] :guid Comma separated bank_guids to list banks for.
  # @option opts [String] :type Comma separated types to list banks for.
  # @option opts [String] :organization_guid Organization guid to list banks for.
  # @option opts [String] :bank_guid Bank guid to list banks for.
  # @return [InternalBankListBankModel]
  describe 'internal_list_banks test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_list_crypto_asset_configurations
  # List CryptoAssetConfiguration
  # Retrieves a listing of CryptoAssetConfiguration.Required scope: **internal:banks:read**
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page 
  # @option opts [Integer] :per_page 
  # @option opts [String] :guid Comma separated guids to list resources for (max 100).
  # @option opts [String] :asset_code Comma separated asset codes to list resources for (max 100).
  # @option opts [String] :bank_guid Comma separated bank guids to list resources for (max 100).
  # @option opts [Boolean] :deposits_enabled Filter resources with deposits enabled.
  # @option opts [String] :environment Environment to list resources for.
  # @option opts [Boolean] :invoices_enabled Filter resources with invoices enabled.
  # @option opts [Boolean] :storage_enabled Filter resources with storage enabled.
  # @option opts [String] :type Type of resources to list.
  # @return [InternalCryptoAssetConfigurationListBankModel]
  describe 'internal_list_crypto_asset_configurations test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_list_customers
  # List Customers
  # Retrieves a listing of Customers.  Required scope: **internal:customers:read**
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page 
  # @option opts [Integer] :per_page 
  # @option opts [String] :guid Comma separated assets to list customers for.
  # @option opts [String] :bank_guid Comma separated bank_guids to list customers for.
  # @option opts [String] :organization_guid Comma separated organization_guids to list customers for.
  # @return [CustomerListBankModel]
  describe 'internal_list_customers test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_list_cybrid_accounts
  # List CybridAccounts
  # Retrieves a listing of Cybrid accounts.  Required scope: **internal:cybrid_accounts:read**
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page 
  # @option opts [Integer] :per_page 
  # @option opts [String] :environment Comma separated environments to list wallets for.
  # @option opts [String] :type Comma separated types to list wallets for.
  # @option opts [String] :asset Comma separated assets to list wallets for.
  # @return [InternalCybridAccountListBankModel]
  describe 'internal_list_cybrid_accounts test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_list_deposit_bank_accounts
  # List Deposit Bank Accounts
  # Retrieves a list of deposit bank accounts.  Required scope: **internal:deposit_bank_accounts:read**
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page The page index to retrieve.
  # @option opts [Integer] :per_page The number of entities per page to return.
  # @option opts [String] :guid Comma separated guids to list deposit bank accounts for.
  # @option opts [String] :bank_guid Comma separated bank_guids to list deposit bank accounts for.
  # @option opts [String] :customer_guid Comma separated customer_guids to list deposit bank accounts for.
  # @option opts [String] :label Comma separated labels to list deposit bank accounts for.
  # @option opts [String] :unique_memo_id Comma separated unique memo ids to list deposit bank accounts for.
  # @option opts [String] :type Comma separated types to list deposit bank accounts for.
  # @option opts [String] :parent_deposit_bank_account_guid Comma separated guids for parent accounts to list deposit bank accounts for.
  # @return [DepositBankAccountListBankModel]
  describe 'internal_list_deposit_bank_accounts test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_list_exchange_orders
  # List ExchangeOrder
  # Retrieves a listing of ExchangeOrders.Required scope: **internal:exchange_orders:read**
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page 
  # @option opts [Integer] :per_page 
  # @option opts [String] :guid Comma separated guids to list resources for.
  # @option opts [String] :state Comma separated states to list resources for.
  # @return [InternalExchangeOrderListBankModel]
  describe 'internal_list_exchange_orders test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_list_exchange_settlement_configurations
  # List ExchangeSettlementConfigurations
  # Retrieves a listing of configurations.  Required scope: **internal:exchanges:read**
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page 
  # @option opts [Integer] :per_page 
  # @option opts [String] :asset Comma separated assets to list configurations for.
  # @option opts [String] :exchange_guid Comma separated exchange_guids to list configurations for.
  # @return [InternalExchangeSettlementConfigurationListBankModel]
  describe 'internal_list_exchange_settlement_configurations test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_list_exchange_settlement_payment_orders
  # List Exchange Settlement Payment Orders
  # Retrieves a listing of exchange settlement payment orders.  Required scope: **internal:exchange_settlements:read**
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page 
  # @option opts [Integer] :per_page 
  # @option opts [String] :settlement_guid Comma separated exchange settlements to list payments for.
  # @return [InternalExchangeSettlementPaymentOrderListBankModel]
  describe 'internal_list_exchange_settlement_payment_orders test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_list_exchanges
  # List Exchanges
  # Retrieves a listing of exchanges.  Required scope: **internal:exchanges:read**
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page 
  # @option opts [Integer] :per_page 
  # @option opts [String] :provider Comma separated providers to list exchanges for.
  # @option opts [String] :environment Comma separated environments to list exchanges for.
  # @return [InternalExchangeListBankModel]
  describe 'internal_list_exchanges test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_list_expected_payments
  # List Expected Payments
  # Retrieves a listing of expected payments.  Required scope: **internal:exchange_settlements:read**
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page 
  # @option opts [Integer] :per_page 
  # @option opts [String] :settlement_guid Comma separated exchange settlements to list payments for.
  # @return [InternalExpectedPaymentListBankModel]
  describe 'internal_list_expected_payments test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_list_external_bank_accounts
  # List ExternalBankAccounts
  # Retrieves a listing of external bank accounts.  Required scope: **internal:accounts:read**
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page 
  # @option opts [Integer] :per_page 
  # @option opts [String] :asset Comma separated assets to list bank accounts for.
  # @option opts [String] :bank_guid Comma separated bank_guids to list bank accounts for.
  # @option opts [String] :exchange_guid Comma separated exchange_guids to list bank accounts for.
  # @return [InternalExternalBankAccountListBankModel]
  describe 'internal_list_external_bank_accounts test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_list_external_wallets
  # List ExternalWallets
  # Retrieves a listing of external wallets.  Required scope: **internal:accounts:read**
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page 
  # @option opts [Integer] :per_page 
  # @option opts [String] :asset Comma separated assets to list wallets for.
  # @option opts [String] :exchange_guid Comma separated exchange_guids to list wallets for.
  # @return [InternalExternalWalletListBankModel]
  describe 'internal_list_external_wallets test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_list_fee_configurations
  # List FeeConfiguration
  # Retrieves a listing of FeeConfiguration.Required scope: **internal:banks:read**
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page 
  # @option opts [Integer] :per_page 
  # @option opts [String] :guid Comma separated guids to list resources for (max 100).
  # @option opts [String] :configuration_type Comma separated configuration types to list resources for.
  # @option opts [String] :product_type Comma separated product types to list resources for.
  # @option opts [String] :primary_asset_code Comma separated primary asset codes to list resources for.
  # @option opts [String] :counter_asset_code Comma separated counter asset codes to list resources for.
  # @option opts [String] :bank_guid Comma separated bank guids to list resources for.
  # @option opts [String] :organization_guid Comma separated organization guids to list resources for.
  # @return [InternalFeeConfigurationListBankModel]
  describe 'internal_list_fee_configurations test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_list_fees
  # List Fees
  # Retrieves a listing of Fees.Required scope: **internal:fees:read**
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page 
  # @option opts [Integer] :per_page 
  # @option opts [String] :guid Comma separated guids to list resources for.
  # @option opts [String] :state Comma separated states to list resources for.
  # @return [InternalFeeChargeListBankModel]
  describe 'internal_list_fees test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_list_internal_bank_accounts
  # List InternalBankAccounts
  # Retrieves a listing of internal bank accounts.  Required scope: **internal:accounts:read**
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page 
  # @option opts [Integer] :per_page 
  # @option opts [String] :environment Comma separated environments to list bank accounts for.
  # @option opts [String] :asset Comma separated assets to list bank accounts for.
  # @option opts [String] :account_kind Comma separated account kinds to list bank accounts for.
  # @return [InternalInternalBankAccountListBankModel]
  describe 'internal_list_internal_bank_accounts test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_list_internal_wallets
  # List InternalWallets
  # Retrieves a listing of internal wallets.  Required scope: **internal:accounts:read**
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page 
  # @option opts [Integer] :per_page 
  # @option opts [String] :owner The owner of the entity.
  # @option opts [String] :environment Comma separated environments to list wallets for.
  # @option opts [String] :guid Comma separated guids to list wallets for.
  # @option opts [String] :bank_guid Comma separated bank_guids to list wallets for.
  # @option opts [String] :customer_guid Comma separated customer_guids to list wallets for.
  # @option opts [String] :internal_wallet_group_guid Comma separated internal_wallet_group_guids to list wallets for.
  # @option opts [String] :type Comma separated types to list wallets for.
  # @option opts [String] :asset Comma separated assets to list wallets for.
  # @option opts [String] :account_kind Comma separated account kinds to list wallets for.
  # @return [InternalInternalWalletListBankModel]
  describe 'internal_list_internal_wallets test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_list_invoices
  # List Invoices
  # Retrieves a list of invoices.  Required scope: **internal:invoices:read**
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page The page index to retrieve.
  # @option opts [Integer] :per_page The number of entities per page to return.
  # @option opts [String] :guid Comma separated guids to list invoices for.
  # @option opts [String] :bank_guid Comma separated bank_guids to list invoices for.
  # @option opts [String] :customer_guid Comma separated customer_guids to list invoices for.
  # @option opts [String] :account_guid Comma separated account_guids to list invoices for.
  # @option opts [String] :state Comma separated states to list invoices for.
  # @option opts [String] :asset Comma separated assets to list invoices for.
  # @option opts [String] :environment 
  # @option opts [String] :label Comma separated labels to list invoices for.
  # @return [InternalInternalInvoiceListBankModel]
  describe 'internal_list_invoices test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_list_reconciliations
  # List Reconciliations
  # Retrieves a listing of reconciliations.  Required scope: **internal:transfers:read**
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page 
  # @option opts [Integer] :per_page 
  # @option opts [String] :category Comma separated categories to list reconciliations for.
  # @option opts [String] :confidence Comma separated confidences to list reconciliations for.
  # @option opts [String] :direction Comma separated directions to list reconciliations for.
  # @option opts [String] :transfer_guid Comma separated transfer_guids to list reconciliations for.
  # @option opts [String] :transaction_id Comma separated transaction_ids to list reconciliations for.
  # @return [InternalReconciliationListBankModel]
  describe 'internal_list_reconciliations test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_list_trades
  # List Trades
  # Retrieves a list of trades.  Required scope: **internal:trades:read**
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page The page index to retrieve.
  # @option opts [Integer] :per_page The number of entities per page to return.
  # @option opts [String] :guid Comma separated trade_guids to list trades for.
  # @option opts [String] :customer_guid Comma separated customer_guids to list trades for.
  # @option opts [String] :bank_guid Comma separated bank_guids to list trades for.
  # @return [TradeListBankModel]
  describe 'internal_list_trades test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_list_trading_symbol_configurations
  # List TradingSymbolConfigurations
  # Retrieves a listing of trading symbol configurations.  Required scope: **internal:banks:read**
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page 
  # @option opts [Integer] :per_page 
  # @option opts [String] :bank_guid Comma separated bank guids to list trading symbol configurations for.
  # @return [InternalTradingSymbolConfigurationListBankModel]
  describe 'internal_list_trading_symbol_configurations test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_list_transactions
  # List Transactions
  # Retrieves a listing of transactions.  Required scope: **internal:transfers:read**
  # @param environment 
  # @param account_guid 
  # @param account_type 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :cursor 
  # @option opts [Integer] :per_page 
  # @option opts [Boolean] :include_pii Include PII in the response.
  # @option opts [String] :created_at_gte Created at start date inclusive lower bound, ISO8601.
  # @option opts [String] :created_at_lt Created at end date exclusive upper bound, ISO8601.
  # @return [InternalTransactionsListBankModel]
  describe 'internal_list_transactions test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_list_transfers
  # List Transfers
  # Retrieves a listing of internal transfers.  Required scope: **internal:transfers:read**
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page 
  # @option opts [Integer] :per_page 
  # @option opts [String] :asset Comma separated assets to list transfers for.
  # @option opts [String] :guid Comma separated transfer_guids to list transfers for.
  # @option opts [String] :transfer_type Comma separated transfer_types to list accounts for.
  # @option opts [String] :customer_guid Comma separated customer_guids to list transfers for.
  # @option opts [String] :bank_guid Comma separated bank_guids to list transfers for.
  # @option opts [String] :account_guid Comma separated account_guids to list transfers for.
  # @option opts [String] :state Comma separated states to list transfers for.
  # @option opts [String] :side Comma separated sides to list transfers for.
  # @option opts [String] :txn_hash Comma separated txn_hashes to list transfers for.
  # @option opts [String] :external_id Comma separated external_ids to list transfers for.
  # @option opts [Integer] :amount Amount in cents to list transfers for.
  # @option opts [Integer] :estimated_amount Estimated amount in cents to list transfers for.
  # @option opts [String] :principal_source_account_guid Comma separated principal_source_account_guids to list transfers for.
  # @option opts [String] :principal_destination_account_guid Comma separated principal_destination_account_guids to list transfers for.
  # @option opts [String] :created_at_gte Created at start date-time inclusive lower bound, ISO8601
  # @option opts [String] :created_at_lt Created at end date-time exclusive upper bound, ISO8601.
  # @option opts [String] :updated_at_gte Created at start date-time inclusive lower bound, ISO8601
  # @option opts [String] :updated_at_lt Created at end date-time exclusive upper bound, ISO8601.
  # @return [InternalTransferListBankModel]
  describe 'internal_list_transfers test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_list_wallet_services
  # List WalletServices
  # Retrieves a listing of wallet services.  Required scope: **internal:wallet_services:read**
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page 
  # @option opts [Integer] :per_page 
  # @option opts [String] :environment Comma separated environments to list wallet services for.
  # @option opts [String] :guid Comma separated guids to list wallet services for.
  # @option opts [String] :type Comma separated types to list wallet services for.
  # @return [InternalWalletServiceListBankModel]
  describe 'internal_list_wallet_services test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_patch_account
  # Patch Account
  # Patch an account.  Required scope: **internal:accounts:write**
  # @param account_guid Identifier for the account.
  # @param patch_internal_account_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [AccountBankModel]
  describe 'internal_patch_account test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_patch_activity_limit_configuration
  # Patch ActivityLimitConfiguration
  # Updates an activity limit configuration.  Required scope: **internal:banks:write**
  # @param guid Identifier for the activity limit configuration.
  # @param patch_internal_activity_limit_configuration_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [InternalActivityLimitConfigurationBankModel]
  describe 'internal_patch_activity_limit_configuration test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_patch_bank
  # Patch Bank
  # Update a bank.  Required scope: **internal:banks:write**
  # @param bank_guid Identifier for the bank.
  # @param patch_internal_bank_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [InternalBankBankModel]
  describe 'internal_patch_bank test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_patch_bank_account_service
  # Patch Internal BankAccount
  # Patch an internal bank_account.  Required scope: **internal:bank_account_services:write**
  # @param guid Identifier for the resource.
  # @param patch_internal_bank_account_service_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [InternalBankAccountServiceBankModel]
  describe 'internal_patch_bank_account_service test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_patch_business_detail
  # Patch Business Details
  # Patch a business details record.  Required scope: **internal:customers:write**
  # @param guid Identifier for the resource.
  # @param patch_internal_business_detail_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [InternalBusinessDetailBankModel]
  describe 'internal_patch_business_detail test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_patch_counterparty
  # Patch Counterparty
  # Patch a counterparty.  Required scope: **internal:counterparties:write**
  # @param counterparty_guid Identifier for the counterparty.
  # @param patch_internal_counterparty_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [CounterpartyBankModel]
  describe 'internal_patch_counterparty test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_patch_crypto_asset_configuration
  # Patch CryptoAssetConfiguration
  # Updates a crypto asset configuration.  Required scope: **internal:banks:write**
  # @param guid Identifier for the crypto asset configuration.
  # @param patch_internal_crypto_asset_configuration_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [InternalCryptoAssetConfigurationBankModel]
  describe 'internal_patch_crypto_asset_configuration test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_patch_customer
  # Patch Customer
  # Patch a customer.  Required scope: **internal:customers:write**
  # @param customer_guid Identifier for the customer.
  # @param patch_internal_customer_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [CustomerBankModel]
  describe 'internal_patch_customer test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_patch_cybrid_account
  # Patch Cybrid Account
  # Patch an cybrid account.  Required scope: **internal:accounts:write**
  # @param guid Identifier for the resource.
  # @param patch_internal_cybrid_account_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [InternalCybridAccountBankModel]
  describe 'internal_patch_cybrid_account test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_patch_deposit_address
  # Patch Deposit Address
  # Patch an deposit address.  Required scope: **internal:deposit_addresses:write**
  # @param guid Identifier for the resource.
  # @param patch_internal_deposit_address_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [DepositAddressBankModel]
  describe 'internal_patch_deposit_address test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_patch_deposit_bank_account
  # Patch DepositBankAccount
  # Patch an deposit bank account.  Required scope: **internal:deposit_bank_accounts:write**
  # @param deposit_bank_account_guid Identifier for the deposit bank account.
  # @param patch_internal_deposit_bank_account_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [DepositBankAccountBankModel]
  describe 'internal_patch_deposit_bank_account test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_patch_exchange_account
  # Patch Exchange Account
  # Patch an exchange account.  Required scope: **internal:accounts:write**
  # @param guid Identifier for the resource.
  # @param patch_internal_exchange_account_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [InternalExchangeAccountBankModel]
  describe 'internal_patch_exchange_account test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_patch_exchange_order
  # Patch ExchangeOrder
  # Patches a ExchangeOrder.Required scope: **internal:exchange_orders:write**
  # @param guid Identifier for the resource.
  # @param patch_internal_exchange_order_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [InternalExchangeOrderBankModel]
  describe 'internal_patch_exchange_order test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_patch_exchange_settlement
  # Patch Exchange Settlement
  # Patch an exchange settlement verification.  Required scope: **internal:exchange_settlements:write**
  # @param exchange_settlement_guid Identifier for the exchange settlement.
  # @param patch_internal_exchange_settlement_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [InternalCreateExchangeSettlementApproval202ResponseBankModel]
  describe 'internal_patch_exchange_settlement test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_patch_external_bank_account
  # Patch ExternalBankAccount
  # Patch an external bank account.  Required scope: **internal:accounts:write**
  # @param external_bank_account_guid Identifier for the external bank account.
  # @param patch_internal_external_bank_account_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [InternalExternalBankAccountBankModel]
  describe 'internal_patch_external_bank_account test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_patch_external_wallet
  # Patch ExternalWallet
  # Patch an transfer.  Required scope: **internal:accounts:write**
  # @param external_wallet_guid Identifier for the external wallet.
  # @param patch_internal_external_wallet_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [InternalExternalWalletBankModel]
  describe 'internal_patch_external_wallet test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_patch_external_wallet_screening
  # Patch External Wallet Screening
  # Patch an external wallet screening.  Required scope: **internal:external_wallet_screenings:write**
  # @param external_wallet_screening_guid Identifier for the external wallet screening.
  # @param patch_internal_external_wallet_screening_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [InternalExternalWalletScreeningBankModel]
  describe 'internal_patch_external_wallet_screening test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_patch_fee
  # Patch Fee
  # Patches a Fee.Required scope: **internal:fees:write**
  # @param guid Identifier for the resource.
  # @param patch_internal_fee_charge_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [InternalFeeChargeBankModel]
  describe 'internal_patch_fee test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_patch_files
  # Patch Files
  # Patch an file.  Required scope: **internal:files:write**
  # @param file_guid Identifier for the file.
  # @param patch_internal_file_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [PlatformFileBankModel]
  describe 'internal_patch_files test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_patch_identity_verification
  # Patch Identity Verification
  # Patch an identity verification.  Required scope: **internal:identity_verifications:write**
  # @param identity_verification_guid Identifier for the identity verification.
  # @param patch_internal_identity_verification_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [IdentityVerificationBankModel]
  describe 'internal_patch_identity_verification test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_patch_internal_bank_account
  # Patch Internal Bank Account
  # Patch an internal bank account.  Required scope: **internal:accounts:write**
  # @param guid Identifier for the resource.
  # @param patch_internal_internal_bank_account_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [InternalInternalBankAccountBankModel]
  describe 'internal_patch_internal_bank_account test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_patch_internal_wallet
  # Patch Internal Wallet
  # Patch an internal wallet.  Required scope: **internal:accounts:write**
  # @param guid Identifier for the resource.
  # @param patch_internal_internal_wallet_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [InternalInternalWalletBankModel]
  describe 'internal_patch_internal_wallet test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_patch_internal_wallet_group
  # Patch Internal Wallet
  # Patch an internal wallet.  Required scope: **internal:accounts:write**
  # @param guid Identifier for the resource.
  # @param patch_internal_internal_wallet_group_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [InternalInternalWalletGroupBankModel]
  describe 'internal_patch_internal_wallet_group test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_patch_invoice
  # Patch Invoice
  # Patch an invoice.  Required scope: **internal:invoices:write**
  # @param invoice_guid Identifier for the invoice.
  # @param patch_internal_invoice_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [InternalInvoiceBankModel]
  describe 'internal_patch_invoice test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_patch_payment_instruction
  # Patch Payment Instruction
  # Patch an payment instruction.  Required scope: **internal:invoices:write**
  # @param guid Identifier for the resource.
  # @param patch_internal_payment_instruction_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [PaymentInstructionBankModel]
  describe 'internal_patch_payment_instruction test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_patch_person_detail
  # Patch Person Details
  # Patch a person details record.  Required scope: **internal:customers:write**
  # @param guid Identifier for the resource.
  # @param patch_internal_person_detail_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [InternalPersonDetailBankModel]
  describe 'internal_patch_person_detail test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_patch_trade
  # Patch Trade
  # Patch a trade.  Required scope: **internal:trades:write**
  # @param trade_guid Identifier for the trade.
  # @param patch_internal_trade_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [InternalTradeBankModel]
  describe 'internal_patch_trade test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_patch_trading_symbol_configuration
  # Patch TradingSymbolConfiguration
  # Updates an trading symbol configuration.  Required scope: **internal:banks:write**
  # @param guid Identifier for the trading symbol configuration.
  # @param patch_internal_trading_symbol_configuration_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [InternalTradingSymbolConfigurationBankModel]
  describe 'internal_patch_trading_symbol_configuration test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_patch_transfer
  # Patch Transfer
  # Patch an transfer.  Required scope: **internal:transfers:write**
  # @param transfer_guid Identifier for the transfer.
  # @param patch_internal_transfer_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [InternalTransferBankModel]
  describe 'internal_patch_transfer test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_patch_transfer_screening
  # Patch External Wallet Screening
  # Patch an transfer screening.  Required scope: **internal:transfer_screenings:write**
  # @param transfer_screening_guid Identifier for the transfer screening.
  # @param patch_internal_transfer_screening_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [InternalTransferScreeningBankModel]
  describe 'internal_patch_transfer_screening test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_patch_wallet_service
  # Patch Internal Wallet
  # Patch an internal wallet.  Required scope: **internal:wallet_services:write**
  # @param guid Identifier for the resource.
  # @param patch_internal_wallet_service_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [InternalWalletServiceBankModel]
  describe 'internal_patch_wallet_service test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_patch_workflow
  # Patch Workflow
  # Patch an workflow.  Required scope: **internal:workflows:write**
  # @param workflow_guid Identifier for the workflow.
  # @param patch_internal_workflow_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [WorkflowBankModel]
  describe 'internal_patch_workflow test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_signal_external_wallet_screening
  # Signal External Wallet Screening
  # Signal an external wallet screening with a outcome.  Required scope: **internal:external_wallet_screenings:write**
  # @param external_wallet_screening_guid Identifier for the external wallet screening.
  # @param post_signal_internal_external_wallet_screening_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [InternalExternalWalletScreeningBankModel]
  describe 'internal_signal_external_wallet_screening test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_signal_identity_verification
  # Signal Identity Verification
  # Signal an identity verification with a decision.  Required scope: **internal:identity_verifications:write**
  # @param identity_verification_guid Identifier for the identity verification.
  # @param post_signal_internal_identity_verification_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [IdentityVerificationBankModel]
  describe 'internal_signal_identity_verification test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_signal_invoice
  # Signal Invoice
  # Signal an invoice to complete settlment.  Required scope: **internal:invoices:write**
  # @param invoice_guid Identifier for the invoice.
  # @param [Hash] opts the optional parameters
  # @return [InternalInvoiceBankModel]
  describe 'internal_signal_invoice test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for internal_signal_transfer
  # Signal Transfer
  # Signal an transfer to proceed.  Required scope: **internal:transfers:write**
  # @param transfer_guid Identifier for the transfer.
  # @param [Hash] opts the optional parameters
  # @return [TransferBankModel]
  describe 'internal_signal_transfer test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for patch_internal_execution
  # Patch Execution
  # Patch an execution verification.  Required scope: **internal:executions:write**
  # @param execution_guid Identifier for the execution.
  # @param patch_internal_execution_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [InternalExecutionBankModel]
  describe 'patch_internal_execution test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for patch_internal_plan
  # Patch Plan
  # Patch an plan verification.  Required scope: **internal:plans:write**
  # @param plan_guid Identifier for the plan.
  # @param patch_internal_plan_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [InternalPlanBankModel]
  describe 'patch_internal_plan test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for patch_internal_stage
  # Patch Stage
  # Patch a stage.  Required scope: **internal:plans:write**
  # @param stage_guid Identifier for the stage.
  # @param patch_internal_stage_bank_model 
  # @param [Hash] opts the optional parameters
  # @return [InternalStageBankModel]
  describe 'patch_internal_stage test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
