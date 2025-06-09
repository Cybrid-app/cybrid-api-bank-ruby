=begin
#Cybrid Bank API

## Cybrid API documentation  Welcome to Cybrid, an all-in-one crypto platform that enables you to easily **build** and **launch** white-label crypto products or services.  In these documents, you'll find details on how our REST API operates and generally how our platform functions.  If you're looking for our UI SDK Widgets for Web or Mobile (iOS/Android), generated API clients, or demo applications, head over to our [Github repo](https://github.com/Cybrid-app).  💡 We recommend bookmarking the [Cybrid LinkTree](https://linktr.ee/cybridtechnologies) which contains many helpful links to platform resources.  ## Getting Started  This is Cybrid's public interactive API documentation, which allows you to fully test our APIs. If you'd like to use a different tool to exercise our APIs, you can download the [Open API 3.0 yaml](https://bank.production.cybrid.app/api/schema/v1/swagger.yaml) for import.  If you're new to our APIs and the Cybrid Platform, follow the below guides to get set up and familiar with the platform:  1. [Introduction](https://docs.cybrid.xyz/docs/introduction) 2. [Platform Introduction](https://docs.cybrid.xyz/docs/how-is-cybrid-architected) 3. [Testing with Hosted Web Demo App](https://docs.cybrid.xyz/docs/testing-with-hosted-web-demo-app)  In [Getting Started in the Cybrid Sandbox](https://docs.cybrid.xyz/docs/how-do-i-get-started-with-the-sandbox), we walk you through how to use the [Cybrid Sandbox](https://id.sandbox.cybrid.app/) to create a test bank and generate API keys. In [Getting Ready for Trading](https://kb.cybrid.xyz/getting-ready-for-trading), we walk through creating customers, customer identities, accounts, as well as executing quotes and trades.  ## Working with the Cybrid Platform  There are three primary ways you can interact with the Cybrid platform:  1. Directly via our RESTful API (this documentation) 2. Using our API clients available in a variety of languages ([Angular](https://github.com/Cybrid-app/cybrid-api-bank-angular), [Java](https://github.com/Cybrid-app/cybrid-api-bank-java), [Kotlin](https://github.com/Cybrid-app/cybrid-api-bank-kotlin), [Python](https://github.com/Cybrid-app/cybrid-api-bank-python), [Ruby](https://github.com/Cybrid-app/cybrid-api-bank-ruby), [Swift](https://github.com/Cybrid-app/cybrid-api-bank-swift) or [Typescript](https://github.com/Cybrid-app/cybrid-api-bank-typescript)) 3. Integrating a platform specific SDK ([Web](https://github.com/Cybrid-app/cybrid-sdk-web), [Android](https://github.com/Cybrid-app/cybrid-sdk-android), [iOS](https://github.com/Cybrid-app/cybrid-sdk-ios))  Our complete set of APIs allows you to manage resources across three distinct areas: your `Organization`, your `Banks` and your `Identities`. For most of your testing and interaction you'll be using the `Bank` API, which is where the majority of APIs reside.  *The complete set of APIs can be found on the following pages:*  | API                                                              | Description                                                 | |------------------------------------------------------------------|-------------------------------------------------------------| | [Organization API](https://organization.production.cybrid.app/api/schema/swagger-ui)   | APIs to manage organizations                                | | [Bank API](https://bank.production.cybrid.app/api/schema/swagger-ui)                   | APIs to manage banks (and all downstream customer activity) | | [Identities API](https://id.production.cybrid.app/api/schema/swagger-ui)                       | APIs to manage organization and bank identities             |  For questions please contact [Support](mailto:support@cybrid.xyz) at any time for assistance, or contact the [Product Team](mailto:product@cybrid.xyz) for product suggestions.  ## Authenticating with the API  The Cybrid Platform uses OAuth 2.0 Bearer Tokens to authenticate requests to the platform. Credentials to create `Organization` and `Bank` tokens can be generated via the [Cybrid Sandbox](https://id.production.cybrid.app). Access tokens can be generated for a `Customer` as well via the [Cybrid IdP](https://id.production.cybrid.app) as well.  An `Organization` access token applies broadly to the whole Organization and all of its `Banks`, whereas, a `Bank` access token is specific to an individual Bank. `Customer` tokens, similarly, are scoped to a specific customer in a bank.  Both `Organization` and `Bank` tokens can be created using the OAuth Client Credential Grant flow. Each Organization and Bank has its own unique `Client ID` and `Secret` that allows for machine-to-machine authentication.  A `Bank` can then generate `Customer` access tokens via API using our [Identities API](https://id.production.cybrid.app/api/schema/swagger-ui).  <font color=\"orange\">**⚠️ Never share your Client ID or Secret publicly or in your source code repository.**</font>  Your `Client ID` and `Secret` can be exchanged for a time-limited `Bearer Token` by interacting with the Cybrid Identity Provider or through interacting with the **Authorize** button in this document.  The following curl command can be used to quickly generate a `Bearer Token` for use in testing the API or demo applications.  ``` # Example request when using Bank credentials curl -X POST https://id.production.cybrid.app/oauth/token -d '{     \"grant_type\": \"client_credentials\",     \"client_id\": \"<Your Client ID>\",     \"client_secret\": \"<Your Secret>\",     \"scope\": \"banks:read banks:write bank_applications:execute accounts:read accounts:execute counterparties:read counterparties:pii:read counterparties:write counterparties:execute customers:read customers:pii:read customers:write customers:execute prices:read quotes:execute quotes:read trades:execute trades:read transfers:execute transfers:read transfers:write external_bank_accounts:read external_bank_accounts:pii:read external_bank_accounts:write external_bank_accounts:execute external_wallets:read external_wallets:execute workflows:read workflows:execute deposit_addresses:read deposit_addresses:execute deposit_bank_accounts:read deposit_bank_accounts:execute invoices:read invoices:write invoices:execute identity_verifications:read identity_verifications:pii:read identity_verifications:write identity_verifications:execute persona_sessions:execute files:read files:pii:read files:execute\"   }' -H \"Content-Type: application/json\"  # When using Organization credentials set `scope` to 'organizations:read organizations:write organization_applications:execute banks:read banks:write banks:execute bank_applications:execute users:read users:execute counterparties:read counterparties:pii:read customers:read customers:pii:read accounts:read prices:read quotes:execute quotes:read trades:execute trades:read transfers:read transfers:write transfers:execute external_bank_accounts:read external_bank_accounts:pii:read external_wallets:read workflows:read deposit_addresses:read deposit_bank_accounts:read invoices:read subscriptions:read subscriptions:write subscriptions:execute subscription_events:read subscription_events:execute identity_verifications:read identity_verifications:pii:read identity_verifications:execute persona_sessions:execute files:read files:pii:read files:execute' ``` <font color=\"orange\">**⚠️ Note: The above curl will create a bearer token with full scope access. Delete scopes if you'd like to restrict access.**</font>  ## Authentication Scopes  The Cybrid platform supports the use of scopes to control the level of access a token is limited to. Scopes do not grant access to resources; instead, they provide limits, in support of the least privilege principal.  The following scopes are available on the platform and can be requested when generating either an Organization, Bank or Customer token. Generally speaking, the _Read_ scope is required to read and list resources, the _Write_ scope is required to update a resource and the _Execute_ scope is required to create a resource.  | Resource              | Read scope (Token Type)                                    | Write scope (Token Type)                      | Execute scope (Token Type)                       | |-----------------------|------------------------------------------------------------|-----------------------------------------------|--------------------------------------------------| | Account               | accounts:read (Organization, Bank, Customer)               |                                               | accounts:execute (Bank, Customer)                | | Bank                  | banks:read (Organization, Bank)                            | banks:write (Organization, Bank)              | banks:execute (Organization)                     | | Customer              | customers:read (Organization, Bank, Customer)              | customers:write (Bank, Customer)              | customers:execute (Bank)                         | | Counterparty          | counterparties:read (Organization, Bank, Customer)         | counterparties:write (Bank, Customer)         | counterparties:execute (Bank)                    | | Deposit Address       | deposit_addresses:read (Organization, Bank, Customer)      | deposit_addresses:write (Bank, Customer)      | deposit_addresses:execute (Bank, Customer)       | | External Bank Account | external_bank_accounts:read (Organization, Bank, Customer) | external_bank_accounts:write (Bank, Customer) | external_bank_accounts:execute (Bank, Customer)  | | External Wallet       | external_wallet:read (Organization, Bank, Customer)        |                                               | external_wallet:execute (Bank, Customer)         | | Organization          | organizations:read (Organization)                          | organizations:write (Organization)            |                                                  | | User                  | users:read (Organization)                                  |                                               | users:execute (Organization)                     | | Price                 | prices:read (Bank, Customer)                               |                                               |                                                  | | Quote                 | quotes:read (Organization, Bank, Customer)                 |                                               | quotes:execute (Organization, Bank, Customer)    | | Trade                 | trades:read (Organization, Bank, Customer)                 |                                               | trades:execute (Organization, Bank, Customer)    | | Transfer              | transfers:read (Organization, Bank, Customer)              |                                               | transfers:execute (Organization, Bank, Customer) | | Workflow              | workflows:read (Organization, Bank, Customer)              |                                               | workflows:execute (Bank, Customer)               | | Invoice               | invoices:read (Organization, Bank, Customer)               | invoices:write (Bank, Customer)               | invoices:execute (Bank, Customer)                |  ## Available Endpoints  The available APIs for the [Identity](https://id.production.cybrid.app/api/schema/swagger-ui), [Organization](https://organization.production.cybrid.app/api/schema/swagger-ui) and [Bank](https://bank.production.cybrid.app/api/schema/swagger-ui) API services are listed below:  | API Service  | Model                | API Endpoint Path              | Description                                                                                       | |--------------|----------------------|--------------------------------|---------------------------------------------------------------------------------------------------| | Identity     | Bank                 | /api/bank_applications         | Create and list banks                                                                             | | Identity     | CustomerToken        | /api/customer_tokens           | Create customer JWT access tokens                                                                 | | Identity     | Organization         | /api/organization_applications | Create and list organizations                                                                     | | Identity     | Organization         | /api/users                     | Create and list organization users                                                                | | Organization | Organization         | /api/organizations             | APIs to retrieve and update organization name                                                     | | Bank         | Account              | /api/accounts                  | Create and list accounts, which hold a specific asset for a customers                             | | Bank         | Asset                | /api/assets                    | Get a list of assets supported by the platform (ex: BTC, ETH)                                     | | Bank         | Bank                 | /api/banks                     | Create, update and list banks, the parent to customers, accounts, etc                             | | Bank         | Customer             | /api/customers                 | Create and list customers                                                                         | | Bank         | Counterparty         | /api/counterparties            | Create and list counterparties                                                                    | | Bank         | DepositAddress       | /api/deposit_addresses         | Create, get and list deposit addresses                                                            | | Bank         | ExternalBankAccount  | /api/external_bank_accounts    | Create, get and list external bank accounts, which connect customer bank accounts to the platform | | Bank         | ExternalWallet       | /api/external_wallets          | Create, get, list and delete external wallets, which connect customer wallets to the platform     | | Bank         | IdentityVerification | /api/identity_verifications    | Create and list identity verifications, which are performed on customers for KYC                  | | Bank         | Invoice              | /api/invoices                  | Create, get, cancel and list invoices                                                             | | Bank         | PaymentInstruction   | /api/payment_instructions      | Create, get and list payment instructions for invoices                                            | | Bank         | Price                | /api/prices                    | Get the current prices for assets on the platform                                                 | | Bank         | Quote                | /api/quotes                    | Create and list quotes, which are required to execute trades                                      | | Bank         | Symbol               | /api/symbols                   | Get a list of symbols supported for trade (ex: BTC-USD)                                           | | Bank         | Trade                | /api/trades                    | Create and list trades, which buy or sell cryptocurrency                                          | | Bank         | Transfer             | /api/transfers                 | Create, get and list transfers (e.g., funding, book)                                              | | Bank         | Workflow             | /api/workflows                 | Create, get and list workflows                                                                    |  ## Understanding Object Models & Endpoints  **Organizations**  An `Organization` is meant to represent the organization partnering with Cybrid to use our platform.  An `Organization` typically does not directly interact with `customers`. Instead, an Organization has one or more `banks`, which encompass the financial service offerings of the platform.  **Banks**  A `Bank` is owned by an `Organization` and can be thought of as an environment or container for `customers` and product offerings. Banks are created in either `Sandbox` or `Production` mode, where `Sandbox` is the environment that you would test, prototype and build in prior to moving to `Production`.  An `Organization` can have multiple `banks`, in either `Sandbox` or `Production` environments. A `Sandbox Bank` will be backed by stubbed data and process flows. For instance, funding source transfer processes as well as trades will be simulated rather than performed, however asset prices are representative of real-world values. You have an unlimited amount of simulated fiat currency for testing purposes.  **Customers**  `Customers` represent your banking users on the platform. At present, we offer support for `Individuals` as Customers.  `Customers` must be verified (i.e., KYC'd) in our system before they can play any part on the platform, which means they must have an associated and a passing `Identity Verification`. See the Identity Verifications section for more details on how a customer can be verified.  `Customers` must also have an `Account` to be able to transact, in the desired asset class. See the Accounts APIs for more details on setting up accounts for the customer. 

The version of the OpenAPI document: v0.123.562
Contact: support@cybrid.app
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.0

=end

require 'date'
require 'time'

module CybridApiBank
  class TransferBankModel
    # Auto-generated unique identifier for the transfer.
    attr_accessor :guid

    # The type of transfer; one of funding, book, crypto, instant_funding, funding_return, crypto_return, loss_recovery, inter_account, lightning, or instant_funding_return.
    attr_accessor :transfer_type

    # The associated bank's identifier.
    attr_accessor :bank_guid

    # The associated customer's identifier.
    attr_accessor :customer_guid

    # The associated quote's identifier.
    attr_accessor :quote_guid

    # The associated external bank account's identifier.
    attr_accessor :external_bank_account_guid

    # The asset the transfer is related to, e.g., USD.
    attr_accessor :asset

    # The direction of the quote; one of deposit or withdrawal.
    attr_accessor :side

    # The state of the transfer; one of storing, pending, reviewing, completed, or failed.
    attr_accessor :state

    # The failure code for failed transfers; one of non_sufficient_funds, refresh_required, party_name_invalid, payment_rail_invalid, compliance_rejection, cancelled, reversed, limit_exceeded, network_fee_too_low, amount_too_low, internal_error, or invalid_address.
    attr_accessor :failure_code

    # The return code for reversed transfers
    attr_accessor :return_code

    # The actual amount in base units of the asset.
    attr_accessor :amount

    # The estimated amount in base units of the asset.
    attr_accessor :estimated_amount

    # The fee associated with the transfer.
    attr_accessor :fee

    # The estimated network fee in base units of network_fee_asset. Only present on `crypto` transfers.
    attr_accessor :estimated_network_fee

    # The actual network fee in base units of network_fee_asset. Only present on `crypto` transfers that have successfully completed.
    attr_accessor :network_fee

    # The asset code of the network fee. Only present on `crypto` transfers that have successfully completed.
    attr_accessor :network_fee_asset

    # The equivalent fiat network fee in base units of network_fee_liability_amount_asset. Only present on `crypto` transfers that have successfully completed.
    attr_accessor :network_fee_liability_amount

    # The fiat asset the network_fee_liability_amount is denominated in. Only present on `crypto` transfers that have successfully completed.
    attr_accessor :network_fee_liability_amount_asset

    # The hash of the blockchain transaction
    attr_accessor :txn_hash

    # The guid of the related transfer. Only present on return type transfers.
    attr_accessor :reference_transfer_guid

    attr_accessor :source_account

    # The participants in the source account.
    attr_accessor :source_participants

    attr_accessor :destination_account

    # The participants in the source account.
    attr_accessor :destination_participants

    # The guid of the deposit address. Only present on crypto deposits.
    attr_accessor :deposit_address_guid

    # ISO8601 datetime the record was created at.
    attr_accessor :created_at

    # ISO8601 datetime the record was last updated at.
    attr_accessor :updated_at

    # ISO8601 datetime the transfer hold was started at.
    attr_accessor :hold_started_at

    # The approximate time (in seconds) that the transfer will be held for.
    attr_accessor :hold_duration

    # The raw details on the transfer from the bank.
    attr_accessor :transfer_details

    # The rail the payment was done on. One of: ach, eft, wire, rtp
    attr_accessor :payment_rail

    # The labels associated with the transfer.
    attr_accessor :labels

    # Transfer entries associated with the batch transfer
    attr_accessor :entries

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'guid' => :'guid',
        :'transfer_type' => :'transfer_type',
        :'bank_guid' => :'bank_guid',
        :'customer_guid' => :'customer_guid',
        :'quote_guid' => :'quote_guid',
        :'external_bank_account_guid' => :'external_bank_account_guid',
        :'asset' => :'asset',
        :'side' => :'side',
        :'state' => :'state',
        :'failure_code' => :'failure_code',
        :'return_code' => :'return_code',
        :'amount' => :'amount',
        :'estimated_amount' => :'estimated_amount',
        :'fee' => :'fee',
        :'estimated_network_fee' => :'estimated_network_fee',
        :'network_fee' => :'network_fee',
        :'network_fee_asset' => :'network_fee_asset',
        :'network_fee_liability_amount' => :'network_fee_liability_amount',
        :'network_fee_liability_amount_asset' => :'network_fee_liability_amount_asset',
        :'txn_hash' => :'txn_hash',
        :'reference_transfer_guid' => :'reference_transfer_guid',
        :'source_account' => :'source_account',
        :'source_participants' => :'source_participants',
        :'destination_account' => :'destination_account',
        :'destination_participants' => :'destination_participants',
        :'deposit_address_guid' => :'deposit_address_guid',
        :'created_at' => :'created_at',
        :'updated_at' => :'updated_at',
        :'hold_started_at' => :'hold_started_at',
        :'hold_duration' => :'hold_duration',
        :'transfer_details' => :'transfer_details',
        :'payment_rail' => :'payment_rail',
        :'labels' => :'labels',
        :'entries' => :'entries'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'guid' => :'String',
        :'transfer_type' => :'String',
        :'bank_guid' => :'String',
        :'customer_guid' => :'String',
        :'quote_guid' => :'String',
        :'external_bank_account_guid' => :'String',
        :'asset' => :'String',
        :'side' => :'String',
        :'state' => :'String',
        :'failure_code' => :'String',
        :'return_code' => :'String',
        :'amount' => :'Integer',
        :'estimated_amount' => :'Integer',
        :'fee' => :'Integer',
        :'estimated_network_fee' => :'Integer',
        :'network_fee' => :'Integer',
        :'network_fee_asset' => :'String',
        :'network_fee_liability_amount' => :'Integer',
        :'network_fee_liability_amount_asset' => :'String',
        :'txn_hash' => :'String',
        :'reference_transfer_guid' => :'String',
        :'source_account' => :'TransferSourceAccountBankModel',
        :'source_participants' => :'Array<TransferParticipantBankModel>',
        :'destination_account' => :'TransferDestinationAccountBankModel',
        :'destination_participants' => :'Array<TransferParticipantBankModel>',
        :'deposit_address_guid' => :'String',
        :'created_at' => :'Time',
        :'updated_at' => :'Time',
        :'hold_started_at' => :'Time',
        :'hold_duration' => :'Integer',
        :'transfer_details' => :'Object',
        :'payment_rail' => :'String',
        :'labels' => :'Array<String>',
        :'entries' => :'Array<TransferEntryBankModel>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'bank_guid',
        :'customer_guid',
        :'external_bank_account_guid',
        :'failure_code',
        :'return_code',
        :'amount',
        :'estimated_network_fee',
        :'network_fee',
        :'network_fee_asset',
        :'network_fee_liability_amount',
        :'network_fee_liability_amount_asset',
        :'txn_hash',
        :'reference_transfer_guid',
        :'source_account',
        :'source_participants',
        :'destination_account',
        :'destination_participants',
        :'deposit_address_guid',
        :'hold_started_at',
        :'hold_duration',
        :'transfer_details',
        :'payment_rail',
        :'labels',
        :'entries'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `CybridApiBank::TransferBankModel` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `CybridApiBank::TransferBankModel`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'guid')
        self.guid = attributes[:'guid']
      end

      if attributes.key?(:'transfer_type')
        self.transfer_type = attributes[:'transfer_type']
      end

      if attributes.key?(:'bank_guid')
        self.bank_guid = attributes[:'bank_guid']
      end

      if attributes.key?(:'customer_guid')
        self.customer_guid = attributes[:'customer_guid']
      end

      if attributes.key?(:'quote_guid')
        self.quote_guid = attributes[:'quote_guid']
      end

      if attributes.key?(:'external_bank_account_guid')
        self.external_bank_account_guid = attributes[:'external_bank_account_guid']
      end

      if attributes.key?(:'asset')
        self.asset = attributes[:'asset']
      end

      if attributes.key?(:'side')
        self.side = attributes[:'side']
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.key?(:'failure_code')
        self.failure_code = attributes[:'failure_code']
      end

      if attributes.key?(:'return_code')
        self.return_code = attributes[:'return_code']
      end

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'estimated_amount')
        self.estimated_amount = attributes[:'estimated_amount']
      end

      if attributes.key?(:'fee')
        self.fee = attributes[:'fee']
      end

      if attributes.key?(:'estimated_network_fee')
        self.estimated_network_fee = attributes[:'estimated_network_fee']
      end

      if attributes.key?(:'network_fee')
        self.network_fee = attributes[:'network_fee']
      end

      if attributes.key?(:'network_fee_asset')
        self.network_fee_asset = attributes[:'network_fee_asset']
      end

      if attributes.key?(:'network_fee_liability_amount')
        self.network_fee_liability_amount = attributes[:'network_fee_liability_amount']
      end

      if attributes.key?(:'network_fee_liability_amount_asset')
        self.network_fee_liability_amount_asset = attributes[:'network_fee_liability_amount_asset']
      end

      if attributes.key?(:'txn_hash')
        self.txn_hash = attributes[:'txn_hash']
      end

      if attributes.key?(:'reference_transfer_guid')
        self.reference_transfer_guid = attributes[:'reference_transfer_guid']
      end

      if attributes.key?(:'source_account')
        self.source_account = attributes[:'source_account']
      end

      if attributes.key?(:'source_participants')
        if (value = attributes[:'source_participants']).is_a?(Array)
          self.source_participants = value
        end
      end

      if attributes.key?(:'destination_account')
        self.destination_account = attributes[:'destination_account']
      end

      if attributes.key?(:'destination_participants')
        if (value = attributes[:'destination_participants']).is_a?(Array)
          self.destination_participants = value
        end
      end

      if attributes.key?(:'deposit_address_guid')
        self.deposit_address_guid = attributes[:'deposit_address_guid']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'hold_started_at')
        self.hold_started_at = attributes[:'hold_started_at']
      end

      if attributes.key?(:'hold_duration')
        self.hold_duration = attributes[:'hold_duration']
      end

      if attributes.key?(:'transfer_details')
        self.transfer_details = attributes[:'transfer_details']
      end

      if attributes.key?(:'payment_rail')
        self.payment_rail = attributes[:'payment_rail']
      end

      if attributes.key?(:'labels')
        if (value = attributes[:'labels']).is_a?(Array)
          self.labels = value
        end
      end

      if attributes.key?(:'entries')
        if (value = attributes[:'entries']).is_a?(Array)
          self.entries = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@guid.nil? && @guid.to_s.length > 32
        invalid_properties.push('invalid value for "guid", the character length must be smaller than or equal to 32.')
      end

      if !@guid.nil? && @guid.to_s.length < 32
        invalid_properties.push('invalid value for "guid", the character length must be great than or equal to 32.')
      end

      if !@bank_guid.nil? && @bank_guid.to_s.length > 32
        invalid_properties.push('invalid value for "bank_guid", the character length must be smaller than or equal to 32.')
      end

      if !@bank_guid.nil? && @bank_guid.to_s.length < 32
        invalid_properties.push('invalid value for "bank_guid", the character length must be great than or equal to 32.')
      end

      if !@customer_guid.nil? && @customer_guid.to_s.length > 32
        invalid_properties.push('invalid value for "customer_guid", the character length must be smaller than or equal to 32.')
      end

      if !@customer_guid.nil? && @customer_guid.to_s.length < 32
        invalid_properties.push('invalid value for "customer_guid", the character length must be great than or equal to 32.')
      end

      if !@quote_guid.nil? && @quote_guid.to_s.length > 32
        invalid_properties.push('invalid value for "quote_guid", the character length must be smaller than or equal to 32.')
      end

      if !@quote_guid.nil? && @quote_guid.to_s.length < 32
        invalid_properties.push('invalid value for "quote_guid", the character length must be great than or equal to 32.')
      end

      if !@external_bank_account_guid.nil? && @external_bank_account_guid.to_s.length > 32
        invalid_properties.push('invalid value for "external_bank_account_guid", the character length must be smaller than or equal to 32.')
      end

      if !@external_bank_account_guid.nil? && @external_bank_account_guid.to_s.length < 32
        invalid_properties.push('invalid value for "external_bank_account_guid", the character length must be great than or equal to 32.')
      end

      if !@network_fee_asset.nil? && @network_fee_asset.to_s.length > 8
        invalid_properties.push('invalid value for "network_fee_asset", the character length must be smaller than or equal to 8.')
      end

      if !@network_fee_asset.nil? && @network_fee_asset.to_s.length < 1
        invalid_properties.push('invalid value for "network_fee_asset", the character length must be great than or equal to 1.')
      end

      if !@reference_transfer_guid.nil? && @reference_transfer_guid.to_s.length > 32
        invalid_properties.push('invalid value for "reference_transfer_guid", the character length must be smaller than or equal to 32.')
      end

      if !@reference_transfer_guid.nil? && @reference_transfer_guid.to_s.length < 32
        invalid_properties.push('invalid value for "reference_transfer_guid", the character length must be great than or equal to 32.')
      end

      if !@deposit_address_guid.nil? && @deposit_address_guid.to_s.length > 32
        invalid_properties.push('invalid value for "deposit_address_guid", the character length must be smaller than or equal to 32.')
      end

      if !@deposit_address_guid.nil? && @deposit_address_guid.to_s.length < 32
        invalid_properties.push('invalid value for "deposit_address_guid", the character length must be great than or equal to 32.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@guid.nil? && @guid.to_s.length > 32
      return false if !@guid.nil? && @guid.to_s.length < 32
      return false if !@bank_guid.nil? && @bank_guid.to_s.length > 32
      return false if !@bank_guid.nil? && @bank_guid.to_s.length < 32
      return false if !@customer_guid.nil? && @customer_guid.to_s.length > 32
      return false if !@customer_guid.nil? && @customer_guid.to_s.length < 32
      return false if !@quote_guid.nil? && @quote_guid.to_s.length > 32
      return false if !@quote_guid.nil? && @quote_guid.to_s.length < 32
      return false if !@external_bank_account_guid.nil? && @external_bank_account_guid.to_s.length > 32
      return false if !@external_bank_account_guid.nil? && @external_bank_account_guid.to_s.length < 32
      return false if !@network_fee_asset.nil? && @network_fee_asset.to_s.length > 8
      return false if !@network_fee_asset.nil? && @network_fee_asset.to_s.length < 1
      return false if !@reference_transfer_guid.nil? && @reference_transfer_guid.to_s.length > 32
      return false if !@reference_transfer_guid.nil? && @reference_transfer_guid.to_s.length < 32
      return false if !@deposit_address_guid.nil? && @deposit_address_guid.to_s.length > 32
      return false if !@deposit_address_guid.nil? && @deposit_address_guid.to_s.length < 32
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] guid Value to be assigned
    def guid=(guid)
      if !guid.nil? && guid.to_s.length > 32
        fail ArgumentError, 'invalid value for "guid", the character length must be smaller than or equal to 32.'
      end

      if !guid.nil? && guid.to_s.length < 32
        fail ArgumentError, 'invalid value for "guid", the character length must be great than or equal to 32.'
      end

      @guid = guid
    end

    # Custom attribute writer method with validation
    # @param [Object] bank_guid Value to be assigned
    def bank_guid=(bank_guid)
      if !bank_guid.nil? && bank_guid.to_s.length > 32
        fail ArgumentError, 'invalid value for "bank_guid", the character length must be smaller than or equal to 32.'
      end

      if !bank_guid.nil? && bank_guid.to_s.length < 32
        fail ArgumentError, 'invalid value for "bank_guid", the character length must be great than or equal to 32.'
      end

      @bank_guid = bank_guid
    end

    # Custom attribute writer method with validation
    # @param [Object] customer_guid Value to be assigned
    def customer_guid=(customer_guid)
      if !customer_guid.nil? && customer_guid.to_s.length > 32
        fail ArgumentError, 'invalid value for "customer_guid", the character length must be smaller than or equal to 32.'
      end

      if !customer_guid.nil? && customer_guid.to_s.length < 32
        fail ArgumentError, 'invalid value for "customer_guid", the character length must be great than or equal to 32.'
      end

      @customer_guid = customer_guid
    end

    # Custom attribute writer method with validation
    # @param [Object] quote_guid Value to be assigned
    def quote_guid=(quote_guid)
      if !quote_guid.nil? && quote_guid.to_s.length > 32
        fail ArgumentError, 'invalid value for "quote_guid", the character length must be smaller than or equal to 32.'
      end

      if !quote_guid.nil? && quote_guid.to_s.length < 32
        fail ArgumentError, 'invalid value for "quote_guid", the character length must be great than or equal to 32.'
      end

      @quote_guid = quote_guid
    end

    # Custom attribute writer method with validation
    # @param [Object] external_bank_account_guid Value to be assigned
    def external_bank_account_guid=(external_bank_account_guid)
      if !external_bank_account_guid.nil? && external_bank_account_guid.to_s.length > 32
        fail ArgumentError, 'invalid value for "external_bank_account_guid", the character length must be smaller than or equal to 32.'
      end

      if !external_bank_account_guid.nil? && external_bank_account_guid.to_s.length < 32
        fail ArgumentError, 'invalid value for "external_bank_account_guid", the character length must be great than or equal to 32.'
      end

      @external_bank_account_guid = external_bank_account_guid
    end

    # Custom attribute writer method with validation
    # @param [Object] network_fee_asset Value to be assigned
    def network_fee_asset=(network_fee_asset)
      if !network_fee_asset.nil? && network_fee_asset.to_s.length > 8
        fail ArgumentError, 'invalid value for "network_fee_asset", the character length must be smaller than or equal to 8.'
      end

      if !network_fee_asset.nil? && network_fee_asset.to_s.length < 1
        fail ArgumentError, 'invalid value for "network_fee_asset", the character length must be great than or equal to 1.'
      end

      @network_fee_asset = network_fee_asset
    end

    # Custom attribute writer method with validation
    # @param [Object] reference_transfer_guid Value to be assigned
    def reference_transfer_guid=(reference_transfer_guid)
      if !reference_transfer_guid.nil? && reference_transfer_guid.to_s.length > 32
        fail ArgumentError, 'invalid value for "reference_transfer_guid", the character length must be smaller than or equal to 32.'
      end

      if !reference_transfer_guid.nil? && reference_transfer_guid.to_s.length < 32
        fail ArgumentError, 'invalid value for "reference_transfer_guid", the character length must be great than or equal to 32.'
      end

      @reference_transfer_guid = reference_transfer_guid
    end

    # Custom attribute writer method with validation
    # @param [Object] deposit_address_guid Value to be assigned
    def deposit_address_guid=(deposit_address_guid)
      if !deposit_address_guid.nil? && deposit_address_guid.to_s.length > 32
        fail ArgumentError, 'invalid value for "deposit_address_guid", the character length must be smaller than or equal to 32.'
      end

      if !deposit_address_guid.nil? && deposit_address_guid.to_s.length < 32
        fail ArgumentError, 'invalid value for "deposit_address_guid", the character length must be great than or equal to 32.'
      end

      @deposit_address_guid = deposit_address_guid
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          guid == o.guid &&
          transfer_type == o.transfer_type &&
          bank_guid == o.bank_guid &&
          customer_guid == o.customer_guid &&
          quote_guid == o.quote_guid &&
          external_bank_account_guid == o.external_bank_account_guid &&
          asset == o.asset &&
          side == o.side &&
          state == o.state &&
          failure_code == o.failure_code &&
          return_code == o.return_code &&
          amount == o.amount &&
          estimated_amount == o.estimated_amount &&
          fee == o.fee &&
          estimated_network_fee == o.estimated_network_fee &&
          network_fee == o.network_fee &&
          network_fee_asset == o.network_fee_asset &&
          network_fee_liability_amount == o.network_fee_liability_amount &&
          network_fee_liability_amount_asset == o.network_fee_liability_amount_asset &&
          txn_hash == o.txn_hash &&
          reference_transfer_guid == o.reference_transfer_guid &&
          source_account == o.source_account &&
          source_participants == o.source_participants &&
          destination_account == o.destination_account &&
          destination_participants == o.destination_participants &&
          deposit_address_guid == o.deposit_address_guid &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          hold_started_at == o.hold_started_at &&
          hold_duration == o.hold_duration &&
          transfer_details == o.transfer_details &&
          payment_rail == o.payment_rail &&
          labels == o.labels &&
          entries == o.entries
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [guid, transfer_type, bank_guid, customer_guid, quote_guid, external_bank_account_guid, asset, side, state, failure_code, return_code, amount, estimated_amount, fee, estimated_network_fee, network_fee, network_fee_asset, network_fee_liability_amount, network_fee_liability_amount_asset, txn_hash, reference_transfer_guid, source_account, source_participants, destination_account, destination_participants, deposit_address_guid, created_at, updated_at, hold_started_at, hold_duration, transfer_details, payment_rail, labels, entries].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = CybridApiBank.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
