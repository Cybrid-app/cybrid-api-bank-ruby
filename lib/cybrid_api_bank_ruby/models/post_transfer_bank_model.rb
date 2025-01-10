=begin
#Cybrid Bank API

## Cybrid API documentation  Welcome to Cybrid, an all-in-one crypto platform that enables you to easily **build** and **launch** white-label crypto products or services.  In these documents, you'll find details on how our REST API operates and generally how our platform functions.  If you're looking for our UI SDK Widgets for Web or Mobile (iOS/Android), generated API clients, or demo applications, head over to our [Github repo](https://github.com/Cybrid-app).  💡 We recommend bookmarking the [Cybrid LinkTree](https://linktr.ee/cybridtechnologies) which contains many helpful links to platform resources.  ## Getting Started  This is Cybrid's public interactive API documentation, which allows you to fully test our APIs. If you'd like to use a different tool to exercise our APIs, you can download the [Open API 3.0 yaml](https://bank.production.cybrid.app/api/schema/v1/swagger.yaml) for import.  If you're new to our APIs and the Cybrid Platform, follow the below guides to get set up and familiar with the platform:  1. [Introduction](https://docs.cybrid.xyz/docs/introduction) 2. [Platform Introduction](https://docs.cybrid.xyz/docs/how-is-cybrid-architected) 3. [Testing with Hosted Web Demo App](https://docs.cybrid.xyz/docs/testing-with-hosted-web-demo-app)  In [Getting Started in the Cybrid Sandbox](https://docs.cybrid.xyz/docs/how-do-i-get-started-with-the-sandbox), we walk you through how to use the [Cybrid Sandbox](https://id.sandbox.cybrid.app/) to create a test bank and generate API keys. In [Getting Ready for Trading](https://kb.cybrid.xyz/getting-ready-for-trading), we walk through creating customers, customer identities, accounts, as well as executing quotes and trades.  ## Working with the Cybrid Platform  There are three primary ways you can interact with the Cybrid platform:  1. Directly via our RESTful API (this documentation) 2. Using our API clients available in a variety of languages ([Angular](https://github.com/Cybrid-app/cybrid-api-bank-angular), [Java](https://github.com/Cybrid-app/cybrid-api-bank-java), [Kotlin](https://github.com/Cybrid-app/cybrid-api-bank-kotlin), [Python](https://github.com/Cybrid-app/cybrid-api-bank-python), [Ruby](https://github.com/Cybrid-app/cybrid-api-bank-ruby), [Swift](https://github.com/Cybrid-app/cybrid-api-bank-swift) or [Typescript](https://github.com/Cybrid-app/cybrid-api-bank-typescript)) 3. Integrating a platform specific SDK ([Web](https://github.com/Cybrid-app/cybrid-sdk-web), [Android](https://github.com/Cybrid-app/cybrid-sdk-android), [iOS](https://github.com/Cybrid-app/cybrid-sdk-ios))  Our complete set of APIs allows you to manage resources across three distinct areas: your `Organization`, your `Banks` and your `Identities`. For most of your testing and interaction you'll be using the `Bank` API, which is where the majority of APIs reside.  *The complete set of APIs can be found on the following pages:*  | API                                                              | Description                                                 | |------------------------------------------------------------------|-------------------------------------------------------------| | [Organization API](https://organization.production.cybrid.app/api/schema/swagger-ui)   | APIs to manage organizations                                | | [Bank API](https://bank.production.cybrid.app/api/schema/swagger-ui)                   | APIs to manage banks (and all downstream customer activity) | | [Identities API](https://id.production.cybrid.app/api/schema/swagger-ui)                       | APIs to manage organization and bank identities             |  For questions please contact [Support](mailto:support@cybrid.xyz) at any time for assistance, or contact the [Product Team](mailto:product@cybrid.xyz) for product suggestions.  ## Authenticating with the API  The Cybrid Platform uses OAuth 2.0 Bearer Tokens to authenticate requests to the platform. Credentials to create `Organization` and `Bank` tokens can be generated via the [Cybrid Sandbox](https://id.production.cybrid.app). Access tokens can be generated for a `Customer` as well via the [Cybrid IdP](https://id.production.cybrid.app) as well.  An `Organization` access token applies broadly to the whole Organization and all of its `Banks`, whereas, a `Bank` access token is specific to an individual Bank. `Customer` tokens, similarly, are scoped to a specific customer in a bank.  Both `Organization` and `Bank` tokens can be created using the OAuth Client Credential Grant flow. Each Organization and Bank has its own unique `Client ID` and `Secret` that allows for machine-to-machine authentication.  A `Bank` can then generate `Customer` access tokens via API using our [Identities API](https://id.production.cybrid.app/api/schema/swagger-ui).  <font color=\"orange\">**⚠️ Never share your Client ID or Secret publicly or in your source code repository.**</font>  Your `Client ID` and `Secret` can be exchanged for a time-limited `Bearer Token` by interacting with the Cybrid Identity Provider or through interacting with the **Authorize** button in this document.  The following curl command can be used to quickly generate a `Bearer Token` for use in testing the API or demo applications.  ``` # Example request when using Bank credentials curl -X POST https://id.production.cybrid.app/oauth/token -d '{     \"grant_type\": \"client_credentials\",     \"client_id\": \"<Your Client ID>\",     \"client_secret\": \"<Your Secret>\",     \"scope\": \"banks:read banks:write bank_applications:execute accounts:read accounts:execute counterparties:read counterparties:write counterparties:execute customers:read customers:write customers:execute prices:read quotes:execute quotes:read trades:execute trades:read transfers:execute transfers:read external_bank_accounts:read external_bank_accounts:write external_bank_accounts:execute external_wallets:read external_wallets:execute workflows:read workflows:execute deposit_addresses:read deposit_addresses:execute deposit_bank_accounts:read deposit_bank_accounts:execute invoices:read invoices:write invoices:execute identity_verifications:read identity_verifications:write identity_verifications:execute\"   }' -H \"Content-Type: application/json\"  # When using Organization credentials set `scope` to 'organizations:read organizations:write organization_applications:execute banks:read banks:write banks:execute bank_applications:execute users:read users:execute counterparties:read customers:read accounts:read prices:read quotes:execute quotes:read trades:execute trades:read transfers:read transfers:execute external_bank_accounts:read external_wallets:read workflows:read deposit_addresses:read deposit_bank_accounts:read invoices:read subscriptions:read subscriptions:write subscriptions:execute subscription_events:read subscription_events:execute identity_verifications:read' ``` <font color=\"orange\">**⚠️ Note: The above curl will create a bearer token with full scope access. Delete scopes if you'd like to restrict access.**</font>  ## Authentication Scopes  The Cybrid platform supports the use of scopes to control the level of access a token is limited to. Scopes do not grant access to resources; instead, they provide limits, in support of the least privilege principal.  The following scopes are available on the platform and can be requested when generating either an Organization, Bank or Customer token. Generally speaking, the _Read_ scope is required to read and list resources, the _Write_ scope is required to update a resource and the _Execute_ scope is required to create a resource.  | Resource              | Read scope (Token Type)                                    | Write scope (Token Type)                      | Execute scope (Token Type)                       | |-----------------------|------------------------------------------------------------|-----------------------------------------------|--------------------------------------------------| | Account               | accounts:read (Organization, Bank, Customer)               |                                               | accounts:execute (Bank, Customer)                | | Bank                  | banks:read (Organization, Bank)                            | banks:write (Organization, Bank)              | banks:execute (Organization)                     | | Customer              | customers:read (Organization, Bank, Customer)              | customers:write (Bank, Customer)              | customers:execute (Bank)                         | | Counterparty          | counterparties:read (Organization, Bank, Customer)         | counterparties:write (Bank, Customer)         | counterparties:execute (Bank)                    | | Deposit Address       | deposit_addresses:read (Organization, Bank, Customer)      | deposit_addresses:write (Bank, Customer)      | deposit_addresses:execute (Bank, Customer)       | | External Bank Account | external_bank_accounts:read (Organization, Bank, Customer) | external_bank_accounts:write (Bank, Customer) | external_bank_accounts:execute (Bank, Customer)  | | External Wallet       | external_wallet:read (Organization, Bank, Customer)        |                                               | external_wallet:execute (Bank, Customer)         | | Organization          | organizations:read (Organization)                          | organizations:write (Organization)            |                                                  | | User                  | users:read (Organization)                                  |                                               | users:execute (Organization)                     | | Price                 | prices:read (Bank, Customer)                               |                                               |                                                  | | Quote                 | quotes:read (Organization, Bank, Customer)                 |                                               | quotes:execute (Organization, Bank, Customer)    | | Trade                 | trades:read (Organization, Bank, Customer)                 |                                               | trades:execute (Organization, Bank, Customer)    | | Transfer              | transfers:read (Organization, Bank, Customer)              |                                               | transfers:execute (Organization, Bank, Customer) | | Workflow              | workflows:read (Organization, Bank, Customer)              |                                               | workflows:execute (Bank, Customer)               | | Invoice               | invoices:read (Organization, Bank, Customer)               | invoices:write (Bank, Customer)               | invoices:execute (Bank, Customer)                |  ## Available Endpoints  The available APIs for the [Identity](https://id.production.cybrid.app/api/schema/swagger-ui), [Organization](https://organization.production.cybrid.app/api/schema/swagger-ui) and [Bank](https://bank.production.cybrid.app/api/schema/swagger-ui) API services are listed below:  | API Service  | Model                | API Endpoint Path              | Description                                                                                       | |--------------|----------------------|--------------------------------|---------------------------------------------------------------------------------------------------| | Identity     | Bank                 | /api/bank_applications         | Create and list banks                                                                             | | Identity     | CustomerToken        | /api/customer_tokens           | Create customer JWT access tokens                                                                 | | Identity     | Organization         | /api/organization_applications | Create and list organizations                                                                     | | Identity     | Organization         | /api/users                     | Create and list organization users                                                                | | Organization | Organization         | /api/organizations             | APIs to retrieve and update organization name                                                     | | Bank         | Account              | /api/accounts                  | Create and list accounts, which hold a specific asset for a customers                             | | Bank         | Asset                | /api/assets                    | Get a list of assets supported by the platform (ex: BTC, ETH)                                     | | Bank         | Bank                 | /api/banks                     | Create, update and list banks, the parent to customers, accounts, etc                             | | Bank         | Customer             | /api/customers                 | Create and list customers                                                                         | | Bank         | Counterparty         | /api/counterparties            | Create and list counterparties                                                                    | | Bank         | DepositAddress       | /api/deposit_addresses         | Create, get and list deposit addresses                                                            | | Bank         | ExternalBankAccount  | /api/external_bank_accounts    | Create, get and list external bank accounts, which connect customer bank accounts to the platform | | Bank         | ExternalWallet       | /api/external_wallets          | Create, get, list and delete external wallets, which connect customer wallets to the platform     | | Bank         | IdentityVerification | /api/identity_verifications    | Create and list identity verifications, which are performed on customers for KYC                  | | Bank         | Invoice              | /api/invoices                  | Create, get, cancel and list invoices                                                             | | Bank         | PaymentInstruction   | /api/payment_instructions      | Create, get and list payment instructions for invoices                                            | | Bank         | Price                | /api/prices                    | Get the current prices for assets on the platform                                                 | | Bank         | Quote                | /api/quotes                    | Create and list quotes, which are required to execute trades                                      | | Bank         | Symbol               | /api/symbols                   | Get a list of symbols supported for trade (ex: BTC-USD)                                           | | Bank         | Trade                | /api/trades                    | Create and list trades, which buy or sell cryptocurrency                                          | | Bank         | Transfer             | /api/transfers                 | Create, get and list transfers (e.g., funding, book)                                              | | Bank         | Workflow             | /api/workflows                 | Create, get and list workflows                                                                    |  ## Understanding Object Models & Endpoints  **Organizations**  An `Organization` is meant to represent the organization partnering with Cybrid to use our platform.  An `Organization` typically does not directly interact with `customers`. Instead, an Organization has one or more `banks`, which encompass the financial service offerings of the platform.  **Banks**  A `Bank` is owned by an `Organization` and can be thought of as an environment or container for `customers` and product offerings. Banks are created in either `Sandbox` or `Production` mode, where `Sandbox` is the environment that you would test, prototype and build in prior to moving to `Production`.  An `Organization` can have multiple `banks`, in either `Sandbox` or `Production` environments. A `Sandbox Bank` will be backed by stubbed data and process flows. For instance, funding source transfer processes as well as trades will be simulated rather than performed, however asset prices are representative of real-world values. You have an unlimited amount of simulated fiat currency for testing purposes.  **Customers**  `Customers` represent your banking users on the platform. At present, we offer support for `Individuals` as Customers.  `Customers` must be verified (i.e., KYC'd) in our system before they can play any part on the platform, which means they must have an associated and a passing `Identity Verification`. See the Identity Verifications section for more details on how a customer can be verified.  `Customers` must also have an `Account` to be able to transact, in the desired asset class. See the Accounts APIs for more details on setting up accounts for the customer. 

The version of the OpenAPI document: v0.123.137
Contact: support@cybrid.app
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.0

=end

require 'date'
require 'time'

module CybridApiBank
  # Request body for transfer creation.
  class PostTransferBankModel
    # The associated quote's identifier.
    attr_accessor :quote_guid

    # The type of transfer.
    attr_accessor :transfer_type

    # The customer's 'plaid' or 'plaid_processor_token' external bank account's identifier. Required when transfer_type is funding or transfer_type is instant_funding.
    attr_accessor :external_bank_account_guid

    # The identifier for the fiat account to use for the transfer. Required if the customer or bank has multiple fiat accounts. Optional when transfer_type is funding.
    attr_accessor :fiat_account_guid

    # The deposit bank account's identifier. Only valid for withdrawals. The deposit bank account must be owned by the customer or bank initiating the transfer. Optional when transfer_type is funding.
    attr_accessor :send_as_deposit_bank_account_guid

    # The desired payment rail to initiate the transfer for. Optional when transfer_type is funding.
    attr_accessor :payment_rail

    # The memo to send to the counterparty. Optional when transfer_type is funding.
    attr_accessor :beneficiary_memo

    # The source participants for the transfer. Required when transfer_type is funding, transfer_type is instant_funding, transfer_type is book, transfer_type is crypto, or transfer_type is lightning.
    attr_accessor :source_participants

    # The destination participants for the transfer. Required when transfer_type is funding, transfer_type is instant_funding, transfer_type is book, transfer_type is crypto, or transfer_type is lightning.
    attr_accessor :destination_participants

    # The identifier for the fiat account to use for the transfer. Required if the bank has multiple fiat accounts. Optional when transfer_type is instant_funding or transfer_type is lightning.
    attr_accessor :bank_fiat_account_guid

    # The identifier for the fiat account to use for the transfer. Required if the customer has multiple fiat accounts. Optional when transfer_type is instant_funding or transfer_type is lightning.
    attr_accessor :customer_fiat_account_guid

    # The source account's identifier. Required when transfer_type is book or transfer_type is inter_account.
    attr_accessor :source_account_guid

    # The destination account's identifier. Required when transfer_type is book or transfer_type is inter_account.
    attr_accessor :destination_account_guid

    # The customer's external wallet's identifier. Optional when transfer_type is crypto.
    attr_accessor :external_wallet_guid

    # The customer's identifier. Required when transfer_type is lightning.
    attr_accessor :customer_guid

    # The network fee account's identifier. Required for network fee transfers. Must be the identifier for the customer's or bank's fiat or trading account. For customer's to pay the network fees, include the customer's fiat or trading account guid. For bank's to pay the network fees, include the bank's fiat or trading account guid. Required when transfer_type is lightning.
    attr_accessor :network_fee_account_guid

    # The optional expected behaviour to simulate. Only applicable for transfers under sandbox banks. The force_review behaviour will force the transfer to be reviewed for funding and instant_funding transfers.
    attr_accessor :expected_behaviours

    # The labels associated with the transfer.
    attr_accessor :labels

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'quote_guid' => :'quote_guid',
        :'transfer_type' => :'transfer_type',
        :'external_bank_account_guid' => :'external_bank_account_guid',
        :'fiat_account_guid' => :'fiat_account_guid',
        :'send_as_deposit_bank_account_guid' => :'send_as_deposit_bank_account_guid',
        :'payment_rail' => :'payment_rail',
        :'beneficiary_memo' => :'beneficiary_memo',
        :'source_participants' => :'source_participants',
        :'destination_participants' => :'destination_participants',
        :'bank_fiat_account_guid' => :'bank_fiat_account_guid',
        :'customer_fiat_account_guid' => :'customer_fiat_account_guid',
        :'source_account_guid' => :'source_account_guid',
        :'destination_account_guid' => :'destination_account_guid',
        :'external_wallet_guid' => :'external_wallet_guid',
        :'customer_guid' => :'customer_guid',
        :'network_fee_account_guid' => :'network_fee_account_guid',
        :'expected_behaviours' => :'expected_behaviours',
        :'labels' => :'labels'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'quote_guid' => :'String',
        :'transfer_type' => :'String',
        :'external_bank_account_guid' => :'String',
        :'fiat_account_guid' => :'String',
        :'send_as_deposit_bank_account_guid' => :'String',
        :'payment_rail' => :'String',
        :'beneficiary_memo' => :'String',
        :'source_participants' => :'Array<PostTransferParticipantBankModel>',
        :'destination_participants' => :'Array<PostTransferParticipantBankModel>',
        :'bank_fiat_account_guid' => :'String',
        :'customer_fiat_account_guid' => :'String',
        :'source_account_guid' => :'String',
        :'destination_account_guid' => :'String',
        :'external_wallet_guid' => :'String',
        :'customer_guid' => :'String',
        :'network_fee_account_guid' => :'String',
        :'expected_behaviours' => :'Array<String>',
        :'labels' => :'Array<String>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'external_bank_account_guid',
        :'fiat_account_guid',
        :'send_as_deposit_bank_account_guid',
        :'payment_rail',
        :'beneficiary_memo',
        :'source_participants',
        :'destination_participants',
        :'bank_fiat_account_guid',
        :'customer_fiat_account_guid',
        :'source_account_guid',
        :'destination_account_guid',
        :'external_wallet_guid',
        :'customer_guid',
        :'network_fee_account_guid',
        :'expected_behaviours',
        :'labels'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `CybridApiBank::PostTransferBankModel` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `CybridApiBank::PostTransferBankModel`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'quote_guid')
        self.quote_guid = attributes[:'quote_guid']
      end

      if attributes.key?(:'transfer_type')
        self.transfer_type = attributes[:'transfer_type']
      end

      if attributes.key?(:'external_bank_account_guid')
        self.external_bank_account_guid = attributes[:'external_bank_account_guid']
      end

      if attributes.key?(:'fiat_account_guid')
        self.fiat_account_guid = attributes[:'fiat_account_guid']
      end

      if attributes.key?(:'send_as_deposit_bank_account_guid')
        self.send_as_deposit_bank_account_guid = attributes[:'send_as_deposit_bank_account_guid']
      end

      if attributes.key?(:'payment_rail')
        self.payment_rail = attributes[:'payment_rail']
      end

      if attributes.key?(:'beneficiary_memo')
        self.beneficiary_memo = attributes[:'beneficiary_memo']
      end

      if attributes.key?(:'source_participants')
        if (value = attributes[:'source_participants']).is_a?(Array)
          self.source_participants = value
        end
      end

      if attributes.key?(:'destination_participants')
        if (value = attributes[:'destination_participants']).is_a?(Array)
          self.destination_participants = value
        end
      end

      if attributes.key?(:'bank_fiat_account_guid')
        self.bank_fiat_account_guid = attributes[:'bank_fiat_account_guid']
      end

      if attributes.key?(:'customer_fiat_account_guid')
        self.customer_fiat_account_guid = attributes[:'customer_fiat_account_guid']
      end

      if attributes.key?(:'source_account_guid')
        self.source_account_guid = attributes[:'source_account_guid']
      end

      if attributes.key?(:'destination_account_guid')
        self.destination_account_guid = attributes[:'destination_account_guid']
      end

      if attributes.key?(:'external_wallet_guid')
        self.external_wallet_guid = attributes[:'external_wallet_guid']
      end

      if attributes.key?(:'customer_guid')
        self.customer_guid = attributes[:'customer_guid']
      end

      if attributes.key?(:'network_fee_account_guid')
        self.network_fee_account_guid = attributes[:'network_fee_account_guid']
      end

      if attributes.key?(:'expected_behaviours')
        if (value = attributes[:'expected_behaviours']).is_a?(Array)
          self.expected_behaviours = value
        end
      end

      if attributes.key?(:'labels')
        if (value = attributes[:'labels']).is_a?(Array)
          self.labels = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @quote_guid.nil?
        invalid_properties.push('invalid value for "quote_guid", quote_guid cannot be nil.')
      end

      if @quote_guid.to_s.length > 32
        invalid_properties.push('invalid value for "quote_guid", the character length must be smaller than or equal to 32.')
      end

      if @quote_guid.to_s.length < 32
        invalid_properties.push('invalid value for "quote_guid", the character length must be great than or equal to 32.')
      end

      if @transfer_type.nil?
        invalid_properties.push('invalid value for "transfer_type", transfer_type cannot be nil.')
      end

      if !@external_bank_account_guid.nil? && @external_bank_account_guid.to_s.length > 32
        invalid_properties.push('invalid value for "external_bank_account_guid", the character length must be smaller than or equal to 32.')
      end

      if !@fiat_account_guid.nil? && @fiat_account_guid.to_s.length > 32
        invalid_properties.push('invalid value for "fiat_account_guid", the character length must be smaller than or equal to 32.')
      end

      if !@send_as_deposit_bank_account_guid.nil? && @send_as_deposit_bank_account_guid.to_s.length > 32
        invalid_properties.push('invalid value for "send_as_deposit_bank_account_guid", the character length must be smaller than or equal to 32.')
      end

      if !@source_participants.nil? && @source_participants.length > 100
        invalid_properties.push('invalid value for "source_participants", number of items must be less than or equal to 100.')
      end

      if !@source_participants.nil? && @source_participants.length < 0
        invalid_properties.push('invalid value for "source_participants", number of items must be greater than or equal to 0.')
      end

      if !@destination_participants.nil? && @destination_participants.length > 100
        invalid_properties.push('invalid value for "destination_participants", number of items must be less than or equal to 100.')
      end

      if !@destination_participants.nil? && @destination_participants.length < 0
        invalid_properties.push('invalid value for "destination_participants", number of items must be greater than or equal to 0.')
      end

      if !@bank_fiat_account_guid.nil? && @bank_fiat_account_guid.to_s.length > 32
        invalid_properties.push('invalid value for "bank_fiat_account_guid", the character length must be smaller than or equal to 32.')
      end

      if !@customer_fiat_account_guid.nil? && @customer_fiat_account_guid.to_s.length > 32
        invalid_properties.push('invalid value for "customer_fiat_account_guid", the character length must be smaller than or equal to 32.')
      end

      if !@source_account_guid.nil? && @source_account_guid.to_s.length > 32
        invalid_properties.push('invalid value for "source_account_guid", the character length must be smaller than or equal to 32.')
      end

      if !@destination_account_guid.nil? && @destination_account_guid.to_s.length > 32
        invalid_properties.push('invalid value for "destination_account_guid", the character length must be smaller than or equal to 32.')
      end

      if !@external_wallet_guid.nil? && @external_wallet_guid.to_s.length > 32
        invalid_properties.push('invalid value for "external_wallet_guid", the character length must be smaller than or equal to 32.')
      end

      if !@customer_guid.nil? && @customer_guid.to_s.length > 32
        invalid_properties.push('invalid value for "customer_guid", the character length must be smaller than or equal to 32.')
      end

      if !@network_fee_account_guid.nil? && @network_fee_account_guid.to_s.length > 32
        invalid_properties.push('invalid value for "network_fee_account_guid", the character length must be smaller than or equal to 32.')
      end

      if !@expected_behaviours.nil? && @expected_behaviours.length > 50
        invalid_properties.push('invalid value for "expected_behaviours", number of items must be less than or equal to 50.')
      end

      if !@labels.nil? && @labels.length > 8
        invalid_properties.push('invalid value for "labels", number of items must be less than or equal to 8.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @quote_guid.nil?
      return false if @quote_guid.to_s.length > 32
      return false if @quote_guid.to_s.length < 32
      return false if @transfer_type.nil?
      transfer_type_validator = EnumAttributeValidator.new('String', ["funding", "book", "crypto", "instant_funding", "inter_account", "lightning"])
      return false unless transfer_type_validator.valid?(@transfer_type)
      return false if !@external_bank_account_guid.nil? && @external_bank_account_guid.to_s.length > 32
      return false if !@fiat_account_guid.nil? && @fiat_account_guid.to_s.length > 32
      return false if !@send_as_deposit_bank_account_guid.nil? && @send_as_deposit_bank_account_guid.to_s.length > 32
      payment_rail_validator = EnumAttributeValidator.new('String', ["ach", "eft", "wire", "rtp"])
      return false unless payment_rail_validator.valid?(@payment_rail)
      return false if !@source_participants.nil? && @source_participants.length > 100
      return false if !@source_participants.nil? && @source_participants.length < 0
      return false if !@destination_participants.nil? && @destination_participants.length > 100
      return false if !@destination_participants.nil? && @destination_participants.length < 0
      return false if !@bank_fiat_account_guid.nil? && @bank_fiat_account_guid.to_s.length > 32
      return false if !@customer_fiat_account_guid.nil? && @customer_fiat_account_guid.to_s.length > 32
      return false if !@source_account_guid.nil? && @source_account_guid.to_s.length > 32
      return false if !@destination_account_guid.nil? && @destination_account_guid.to_s.length > 32
      return false if !@external_wallet_guid.nil? && @external_wallet_guid.to_s.length > 32
      return false if !@customer_guid.nil? && @customer_guid.to_s.length > 32
      return false if !@network_fee_account_guid.nil? && @network_fee_account_guid.to_s.length > 32
      return false if !@expected_behaviours.nil? && @expected_behaviours.length > 50
      return false if !@labels.nil? && @labels.length > 8
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] quote_guid Value to be assigned
    def quote_guid=(quote_guid)
      if quote_guid.nil?
        fail ArgumentError, 'quote_guid cannot be nil'
      end

      if quote_guid.to_s.length > 32
        fail ArgumentError, 'invalid value for "quote_guid", the character length must be smaller than or equal to 32.'
      end

      if quote_guid.to_s.length < 32
        fail ArgumentError, 'invalid value for "quote_guid", the character length must be great than or equal to 32.'
      end

      @quote_guid = quote_guid
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transfer_type Object to be assigned
    def transfer_type=(transfer_type)
      validator = EnumAttributeValidator.new('String', ["funding", "book", "crypto", "instant_funding", "inter_account", "lightning"])
      unless validator.valid?(transfer_type)
        fail ArgumentError, "invalid value for \"transfer_type\", must be one of #{validator.allowable_values}."
      end
      @transfer_type = transfer_type
    end

    # Custom attribute writer method with validation
    # @param [Object] external_bank_account_guid Value to be assigned
    def external_bank_account_guid=(external_bank_account_guid)
      if !external_bank_account_guid.nil? && external_bank_account_guid.to_s.length > 32
        fail ArgumentError, 'invalid value for "external_bank_account_guid", the character length must be smaller than or equal to 32.'
      end

      @external_bank_account_guid = external_bank_account_guid
    end

    # Custom attribute writer method with validation
    # @param [Object] fiat_account_guid Value to be assigned
    def fiat_account_guid=(fiat_account_guid)
      if !fiat_account_guid.nil? && fiat_account_guid.to_s.length > 32
        fail ArgumentError, 'invalid value for "fiat_account_guid", the character length must be smaller than or equal to 32.'
      end

      @fiat_account_guid = fiat_account_guid
    end

    # Custom attribute writer method with validation
    # @param [Object] send_as_deposit_bank_account_guid Value to be assigned
    def send_as_deposit_bank_account_guid=(send_as_deposit_bank_account_guid)
      if !send_as_deposit_bank_account_guid.nil? && send_as_deposit_bank_account_guid.to_s.length > 32
        fail ArgumentError, 'invalid value for "send_as_deposit_bank_account_guid", the character length must be smaller than or equal to 32.'
      end

      @send_as_deposit_bank_account_guid = send_as_deposit_bank_account_guid
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_rail Object to be assigned
    def payment_rail=(payment_rail)
      validator = EnumAttributeValidator.new('String', ["ach", "eft", "wire", "rtp"])
      unless validator.valid?(payment_rail)
        fail ArgumentError, "invalid value for \"payment_rail\", must be one of #{validator.allowable_values}."
      end
      @payment_rail = payment_rail
    end

    # Custom attribute writer method with validation
    # @param [Object] source_participants Value to be assigned
    def source_participants=(source_participants)
      if !source_participants.nil? && source_participants.length > 100
        fail ArgumentError, 'invalid value for "source_participants", number of items must be less than or equal to 100.'
      end

      if !source_participants.nil? && source_participants.length < 0
        fail ArgumentError, 'invalid value for "source_participants", number of items must be greater than or equal to 0.'
      end

      @source_participants = source_participants
    end

    # Custom attribute writer method with validation
    # @param [Object] destination_participants Value to be assigned
    def destination_participants=(destination_participants)
      if !destination_participants.nil? && destination_participants.length > 100
        fail ArgumentError, 'invalid value for "destination_participants", number of items must be less than or equal to 100.'
      end

      if !destination_participants.nil? && destination_participants.length < 0
        fail ArgumentError, 'invalid value for "destination_participants", number of items must be greater than or equal to 0.'
      end

      @destination_participants = destination_participants
    end

    # Custom attribute writer method with validation
    # @param [Object] bank_fiat_account_guid Value to be assigned
    def bank_fiat_account_guid=(bank_fiat_account_guid)
      if !bank_fiat_account_guid.nil? && bank_fiat_account_guid.to_s.length > 32
        fail ArgumentError, 'invalid value for "bank_fiat_account_guid", the character length must be smaller than or equal to 32.'
      end

      @bank_fiat_account_guid = bank_fiat_account_guid
    end

    # Custom attribute writer method with validation
    # @param [Object] customer_fiat_account_guid Value to be assigned
    def customer_fiat_account_guid=(customer_fiat_account_guid)
      if !customer_fiat_account_guid.nil? && customer_fiat_account_guid.to_s.length > 32
        fail ArgumentError, 'invalid value for "customer_fiat_account_guid", the character length must be smaller than or equal to 32.'
      end

      @customer_fiat_account_guid = customer_fiat_account_guid
    end

    # Custom attribute writer method with validation
    # @param [Object] source_account_guid Value to be assigned
    def source_account_guid=(source_account_guid)
      if !source_account_guid.nil? && source_account_guid.to_s.length > 32
        fail ArgumentError, 'invalid value for "source_account_guid", the character length must be smaller than or equal to 32.'
      end

      @source_account_guid = source_account_guid
    end

    # Custom attribute writer method with validation
    # @param [Object] destination_account_guid Value to be assigned
    def destination_account_guid=(destination_account_guid)
      if !destination_account_guid.nil? && destination_account_guid.to_s.length > 32
        fail ArgumentError, 'invalid value for "destination_account_guid", the character length must be smaller than or equal to 32.'
      end

      @destination_account_guid = destination_account_guid
    end

    # Custom attribute writer method with validation
    # @param [Object] external_wallet_guid Value to be assigned
    def external_wallet_guid=(external_wallet_guid)
      if !external_wallet_guid.nil? && external_wallet_guid.to_s.length > 32
        fail ArgumentError, 'invalid value for "external_wallet_guid", the character length must be smaller than or equal to 32.'
      end

      @external_wallet_guid = external_wallet_guid
    end

    # Custom attribute writer method with validation
    # @param [Object] customer_guid Value to be assigned
    def customer_guid=(customer_guid)
      if !customer_guid.nil? && customer_guid.to_s.length > 32
        fail ArgumentError, 'invalid value for "customer_guid", the character length must be smaller than or equal to 32.'
      end

      @customer_guid = customer_guid
    end

    # Custom attribute writer method with validation
    # @param [Object] network_fee_account_guid Value to be assigned
    def network_fee_account_guid=(network_fee_account_guid)
      if !network_fee_account_guid.nil? && network_fee_account_guid.to_s.length > 32
        fail ArgumentError, 'invalid value for "network_fee_account_guid", the character length must be smaller than or equal to 32.'
      end

      @network_fee_account_guid = network_fee_account_guid
    end

    # Custom attribute writer method with validation
    # @param [Object] labels Value to be assigned
    def labels=(labels)
      if !labels.nil? && labels.length > 8
        fail ArgumentError, 'invalid value for "labels", number of items must be less than or equal to 8.'
      end

      @labels = labels
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          quote_guid == o.quote_guid &&
          transfer_type == o.transfer_type &&
          external_bank_account_guid == o.external_bank_account_guid &&
          fiat_account_guid == o.fiat_account_guid &&
          send_as_deposit_bank_account_guid == o.send_as_deposit_bank_account_guid &&
          payment_rail == o.payment_rail &&
          beneficiary_memo == o.beneficiary_memo &&
          source_participants == o.source_participants &&
          destination_participants == o.destination_participants &&
          bank_fiat_account_guid == o.bank_fiat_account_guid &&
          customer_fiat_account_guid == o.customer_fiat_account_guid &&
          source_account_guid == o.source_account_guid &&
          destination_account_guid == o.destination_account_guid &&
          external_wallet_guid == o.external_wallet_guid &&
          customer_guid == o.customer_guid &&
          network_fee_account_guid == o.network_fee_account_guid &&
          expected_behaviours == o.expected_behaviours &&
          labels == o.labels
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [quote_guid, transfer_type, external_bank_account_guid, fiat_account_guid, send_as_deposit_bank_account_guid, payment_rail, beneficiary_memo, source_participants, destination_participants, bank_fiat_account_guid, customer_fiat_account_guid, source_account_guid, destination_account_guid, external_wallet_guid, customer_guid, network_fee_account_guid, expected_behaviours, labels].hash
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
