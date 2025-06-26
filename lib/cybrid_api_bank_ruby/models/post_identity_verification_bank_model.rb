=begin
#Cybrid Bank API

## Cybrid API documentation  Welcome to Cybrid, an all-in-one crypto platform that enables you to easily **build** and **launch** white-label crypto products or services.  In these documents, you'll find details on how our REST API operates and generally how our platform functions.  If you're looking for our UI SDK Widgets for Web or Mobile (iOS/Android), generated API clients, or demo applications, head over to our [Github repo](https://github.com/Cybrid-app).  💡 We recommend bookmarking the [Cybrid LinkTree](https://linktr.ee/cybridtechnologies) which contains many helpful links to platform resources.  ## Getting Started  This is Cybrid's public interactive API documentation, which allows you to fully test our APIs. If you'd like to use a different tool to exercise our APIs, you can download the [Open API 3.0 yaml](https://bank.production.cybrid.app/api/schema/v1/swagger.yaml) for import.  If you're new to our APIs and the Cybrid Platform, follow the below guides to get set up and familiar with the platform:  1. [Introduction](https://docs.cybrid.xyz/docs/introduction) 2. [Platform Introduction](https://docs.cybrid.xyz/docs/how-is-cybrid-architected) 3. [Testing with Hosted Web Demo App](https://docs.cybrid.xyz/docs/testing-with-hosted-web-demo-app)  In [Getting Started in the Cybrid Sandbox](https://docs.cybrid.xyz/docs/how-do-i-get-started-with-the-sandbox), we walk you through how to use the [Cybrid Sandbox](https://id.sandbox.cybrid.app/) to create a test bank and generate API keys. In [Getting Ready for Trading](https://kb.cybrid.xyz/getting-ready-for-trading), we walk through creating customers, customer identities, accounts, as well as executing quotes and trades.  ## Working with the Cybrid Platform  There are three primary ways you can interact with the Cybrid platform:  1. Directly via our RESTful API (this documentation) 2. Using our API clients available in a variety of languages ([Angular](https://github.com/Cybrid-app/cybrid-api-bank-angular), [Java](https://github.com/Cybrid-app/cybrid-api-bank-java), [Kotlin](https://github.com/Cybrid-app/cybrid-api-bank-kotlin), [Python](https://github.com/Cybrid-app/cybrid-api-bank-python), [Ruby](https://github.com/Cybrid-app/cybrid-api-bank-ruby), [Swift](https://github.com/Cybrid-app/cybrid-api-bank-swift) or [Typescript](https://github.com/Cybrid-app/cybrid-api-bank-typescript)) 3. Integrating a platform specific SDK ([Web](https://github.com/Cybrid-app/cybrid-sdk-web), [Android](https://github.com/Cybrid-app/cybrid-sdk-android), [iOS](https://github.com/Cybrid-app/cybrid-sdk-ios))  Our complete set of APIs allows you to manage resources across three distinct areas: your `Organization`, your `Banks` and your `Identities`. For most of your testing and interaction you'll be using the `Bank` API, which is where the majority of APIs reside.  *The complete set of APIs can be found on the following pages:*  | API                                                              | Description                                                 | |------------------------------------------------------------------|-------------------------------------------------------------| | [Organization API](https://organization.production.cybrid.app/api/schema/swagger-ui)   | APIs to manage organizations                                | | [Bank API](https://bank.production.cybrid.app/api/schema/swagger-ui)                   | APIs to manage banks (and all downstream customer activity) | | [Identities API](https://id.production.cybrid.app/api/schema/swagger-ui)                       | APIs to manage organization and bank identities             |  For questions please contact [Support](mailto:support@cybrid.xyz) at any time for assistance, or contact the [Product Team](mailto:product@cybrid.xyz) for product suggestions.  ## Authenticating with the API  The Cybrid Platform uses OAuth 2.0 Bearer Tokens to authenticate requests to the platform. Credentials to create `Organization` and `Bank` tokens can be generated via the [Cybrid Sandbox](https://id.production.cybrid.app). Access tokens can be generated for a `Customer` as well via the [Cybrid IdP](https://id.production.cybrid.app) as well.  An `Organization` access token applies broadly to the whole Organization and all of its `Banks`, whereas, a `Bank` access token is specific to an individual Bank. `Customer` tokens, similarly, are scoped to a specific customer in a bank.  Both `Organization` and `Bank` tokens can be created using the OAuth Client Credential Grant flow. Each Organization and Bank has its own unique `Client ID` and `Secret` that allows for machine-to-machine authentication.  A `Bank` can then generate `Customer` access tokens via API using our [Identities API](https://id.production.cybrid.app/api/schema/swagger-ui).  <font color=\"orange\">**⚠️ Never share your Client ID or Secret publicly or in your source code repository.**</font>  Your `Client ID` and `Secret` can be exchanged for a time-limited `Bearer Token` by interacting with the Cybrid Identity Provider or through interacting with the **Authorize** button in this document.  The following curl command can be used to quickly generate a `Bearer Token` for use in testing the API or demo applications.  ``` # Example request when using Bank credentials curl -X POST https://id.production.cybrid.app/oauth/token -d '{     \"grant_type\": \"client_credentials\",     \"client_id\": \"<Your Client ID>\",     \"client_secret\": \"<Your Secret>\",     \"scope\": \"banks:read banks:write bank_applications:execute accounts:read accounts:execute counterparties:read counterparties:pii:read counterparties:write counterparties:execute customers:read customers:pii:read customers:write customers:execute prices:read quotes:execute quotes:read trades:execute trades:read transfers:execute transfers:read transfers:write external_bank_accounts:read external_bank_accounts:pii:read external_bank_accounts:write external_bank_accounts:execute external_wallets:read external_wallets:execute workflows:read workflows:execute deposit_addresses:read deposit_addresses:execute deposit_bank_accounts:read deposit_bank_accounts:execute invoices:read invoices:write invoices:execute identity_verifications:read identity_verifications:pii:read identity_verifications:write identity_verifications:execute persona_sessions:execute files:read files:pii:read files:execute\"   }' -H \"Content-Type: application/json\"  # When using Organization credentials set `scope` to 'organizations:read organizations:write organization_applications:execute banks:read banks:write banks:execute bank_applications:execute users:read users:execute counterparties:read counterparties:pii:read customers:read customers:pii:read accounts:read prices:read quotes:execute quotes:read trades:execute trades:read transfers:read transfers:write transfers:execute external_bank_accounts:read external_bank_accounts:pii:read external_wallets:read workflows:read deposit_addresses:read deposit_bank_accounts:read invoices:read subscriptions:read subscriptions:write subscriptions:execute subscription_events:read subscription_events:execute identity_verifications:read identity_verifications:pii:read identity_verifications:execute persona_sessions:execute files:read files:pii:read files:execute' ``` <font color=\"orange\">**⚠️ Note: The above curl will create a bearer token with full scope access. Delete scopes if you'd like to restrict access.**</font>  ## Authentication Scopes  The Cybrid platform supports the use of scopes to control the level of access a token is limited to. Scopes do not grant access to resources; instead, they provide limits, in support of the least privilege principal.  The following scopes are available on the platform and can be requested when generating either an Organization, Bank or Customer token. Generally speaking, the _Read_ scope is required to read and list resources, the _Write_ scope is required to update a resource and the _Execute_ scope is required to create a resource.  | Resource              | Read scope (Token Type)                                    | Write scope (Token Type)                      | Execute scope (Token Type)                       | |-----------------------|------------------------------------------------------------|-----------------------------------------------|--------------------------------------------------| | Account               | accounts:read (Organization, Bank, Customer)               |                                               | accounts:execute (Bank, Customer)                | | Bank                  | banks:read (Organization, Bank)                            | banks:write (Organization, Bank)              | banks:execute (Organization)                     | | Customer              | customers:read (Organization, Bank, Customer)              | customers:write (Bank, Customer)              | customers:execute (Bank)                         | | Counterparty          | counterparties:read (Organization, Bank, Customer)         | counterparties:write (Bank, Customer)         | counterparties:execute (Bank)                    | | Deposit Address       | deposit_addresses:read (Organization, Bank, Customer)      | deposit_addresses:write (Bank, Customer)      | deposit_addresses:execute (Bank, Customer)       | | External Bank Account | external_bank_accounts:read (Organization, Bank, Customer) | external_bank_accounts:write (Bank, Customer) | external_bank_accounts:execute (Bank, Customer)  | | External Wallet       | external_wallet:read (Organization, Bank, Customer)        |                                               | external_wallet:execute (Bank, Customer)         | | Organization          | organizations:read (Organization)                          | organizations:write (Organization)            |                                                  | | User                  | users:read (Organization)                                  |                                               | users:execute (Organization)                     | | Price                 | prices:read (Bank, Customer)                               |                                               |                                                  | | Quote                 | quotes:read (Organization, Bank, Customer)                 |                                               | quotes:execute (Organization, Bank, Customer)    | | Trade                 | trades:read (Organization, Bank, Customer)                 |                                               | trades:execute (Organization, Bank, Customer)    | | Transfer              | transfers:read (Organization, Bank, Customer)              |                                               | transfers:execute (Organization, Bank, Customer) | | Workflow              | workflows:read (Organization, Bank, Customer)              |                                               | workflows:execute (Bank, Customer)               | | Invoice               | invoices:read (Organization, Bank, Customer)               | invoices:write (Bank, Customer)               | invoices:execute (Bank, Customer)                |  ## Available Endpoints  The available APIs for the [Identity](https://id.production.cybrid.app/api/schema/swagger-ui), [Organization](https://organization.production.cybrid.app/api/schema/swagger-ui) and [Bank](https://bank.production.cybrid.app/api/schema/swagger-ui) API services are listed below:  | API Service  | Model                | API Endpoint Path              | Description                                                                                       | |--------------|----------------------|--------------------------------|---------------------------------------------------------------------------------------------------| | Identity     | Bank                 | /api/bank_applications         | Create and list banks                                                                             | | Identity     | CustomerToken        | /api/customer_tokens           | Create customer JWT access tokens                                                                 | | Identity     | Organization         | /api/organization_applications | Create and list organizations                                                                     | | Identity     | Organization         | /api/users                     | Create and list organization users                                                                | | Organization | Organization         | /api/organizations             | APIs to retrieve and update organization name                                                     | | Bank         | Account              | /api/accounts                  | Create and list accounts, which hold a specific asset for a customers                             | | Bank         | Asset                | /api/assets                    | Get a list of assets supported by the platform (ex: BTC, ETH)                                     | | Bank         | Bank                 | /api/banks                     | Create, update and list banks, the parent to customers, accounts, etc                             | | Bank         | Customer             | /api/customers                 | Create and list customers                                                                         | | Bank         | Counterparty         | /api/counterparties            | Create and list counterparties                                                                    | | Bank         | DepositAddress       | /api/deposit_addresses         | Create, get and list deposit addresses                                                            | | Bank         | ExternalBankAccount  | /api/external_bank_accounts    | Create, get and list external bank accounts, which connect customer bank accounts to the platform | | Bank         | ExternalWallet       | /api/external_wallets          | Create, get, list and delete external wallets, which connect customer wallets to the platform     | | Bank         | IdentityVerification | /api/identity_verifications    | Create and list identity verifications, which are performed on customers for KYC                  | | Bank         | Invoice              | /api/invoices                  | Create, get, cancel and list invoices                                                             | | Bank         | PaymentInstruction   | /api/payment_instructions      | Create, get and list payment instructions for invoices                                            | | Bank         | Price                | /api/prices                    | Get the current prices for assets on the platform                                                 | | Bank         | Quote                | /api/quotes                    | Create and list quotes, which are required to execute trades                                      | | Bank         | Symbol               | /api/symbols                   | Get a list of symbols supported for trade (ex: BTC-USD)                                           | | Bank         | Trade                | /api/trades                    | Create and list trades, which buy or sell cryptocurrency                                          | | Bank         | Transfer             | /api/transfers                 | Create, get and list transfers (e.g., funding, book)                                              | | Bank         | Workflow             | /api/workflows                 | Create, get and list workflows                                                                    |  ## Understanding Object Models & Endpoints  **Organizations**  An `Organization` is meant to represent the organization partnering with Cybrid to use our platform.  An `Organization` typically does not directly interact with `customers`. Instead, an Organization has one or more `banks`, which encompass the financial service offerings of the platform.  **Banks**  A `Bank` is owned by an `Organization` and can be thought of as an environment or container for `customers` and product offerings. Banks are created in either `Sandbox` or `Production` mode, where `Sandbox` is the environment that you would test, prototype and build in prior to moving to `Production`.  An `Organization` can have multiple `banks`, in either `Sandbox` or `Production` environments. A `Sandbox Bank` will be backed by stubbed data and process flows. For instance, funding source transfer processes as well as trades will be simulated rather than performed, however asset prices are representative of real-world values. You have an unlimited amount of simulated fiat currency for testing purposes.  **Customers**  `Customers` represent your banking users on the platform. At present, we offer support for `Individuals` as Customers.  `Customers` must be verified (i.e., KYC'd) in our system before they can play any part on the platform, which means they must have an associated and a passing `Identity Verification`. See the Identity Verifications section for more details on how a customer can be verified.  `Customers` must also have an `Account` to be able to transact, in the desired asset class. See the Accounts APIs for more details on setting up accounts for the customer. 

The version of the OpenAPI document: v0.123.643
Contact: support@cybrid.app
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.0

=end

require 'date'
require 'time'

module CybridApiBank
  # Request body for identity verification creation.
  class PostIdentityVerificationBankModel
    # The type of identity verification.
    attr_accessor :type

    # The customer's identifier. Required when type is kyc and method is attested_business_registration or type is kyc and method is attested_id_and_selfie.
    attr_accessor :customer_guid

    # The optional expected behaviour to simulate.
    attr_accessor :expected_behaviours

    # The identity verification method. Required when type is counterparty, type is kyc, or type is bank_account.
    attr_accessor :method

    # The counterparty's identifier. Required when type is counterparty.
    attr_accessor :counterparty_guid

    # The ISO 3166 country 2-Alpha country the customer is being verified in. If not present, will default to the Bank's configured country code. Optional when type is kyc and method is id_and_selfie, type is kyc and method is tax_id_and_selfie, or type is kyc and method is business_registration.
    attr_accessor :country_code

    attr_accessor :name

    attr_accessor :address

    # The customer's date of birth. Required when type is kyc and method is attested or type is kyc and method is attested_id_and_selfie.
    attr_accessor :date_of_birth

    # The customer's identification numbers. Required when type is kyc and method is attested, type is kyc and method is attested_business_registration, or type is kyc and method is attested_id_and_selfie.
    attr_accessor :identification_numbers

    # The aliases of the customer. Optional when type is kyc and method is attested_business_registration.
    attr_accessor :aliases

    # The customer's phone number. Required when type is kyc and method is attested_business_registration or type is kyc and method is attested_id_and_selfie. Optional when type is bank_account and method is attested_ownership.
    attr_accessor :phone_number

    # The customer's email address. Required when type is kyc and method is attested_business_registration or type is kyc and method is attested_id_and_selfie. Optional when type is bank_account and method is attested_ownership.
    attr_accessor :email_address

    # The customer's website. Required when type is kyc and method is attested_business_registration.
    attr_accessor :website

    # The customer's nature of business. Required when type is kyc and method is attested_business_registration.
    attr_accessor :nature_of_business

    # The customer guids of the directors of the business Required when type is kyc and method is attested_business_registration.
    attr_accessor :director_customer_guids

    # The ultimate beneficial owners of the business with 10% or more ownership Required when type is kyc and method is attested_business_registration.
    attr_accessor :ultimate_beneficial_owners

    # File guids supporting the verification Required when type is kyc and method is attested_business_registration or type is kyc and method is attested_id_and_selfie.
    attr_accessor :supporting_file_guids

    # The customer's occupation. Optional when type is kyc and method is attested_id_and_selfie.
    attr_accessor :occupation

    # The external bank account's identifier. Required when type is bank_account.
    attr_accessor :external_bank_account_guid

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
        :'type' => :'type',
        :'customer_guid' => :'customer_guid',
        :'expected_behaviours' => :'expected_behaviours',
        :'method' => :'method',
        :'counterparty_guid' => :'counterparty_guid',
        :'country_code' => :'country_code',
        :'name' => :'name',
        :'address' => :'address',
        :'date_of_birth' => :'date_of_birth',
        :'identification_numbers' => :'identification_numbers',
        :'aliases' => :'aliases',
        :'phone_number' => :'phone_number',
        :'email_address' => :'email_address',
        :'website' => :'website',
        :'nature_of_business' => :'nature_of_business',
        :'director_customer_guids' => :'director_customer_guids',
        :'ultimate_beneficial_owners' => :'ultimate_beneficial_owners',
        :'supporting_file_guids' => :'supporting_file_guids',
        :'occupation' => :'occupation',
        :'external_bank_account_guid' => :'external_bank_account_guid'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'type' => :'String',
        :'customer_guid' => :'String',
        :'expected_behaviours' => :'Array<String>',
        :'method' => :'String',
        :'counterparty_guid' => :'String',
        :'country_code' => :'String',
        :'name' => :'PostIdentityVerificationNameBankModel',
        :'address' => :'PostIdentityVerificationAddressBankModel',
        :'date_of_birth' => :'Date',
        :'identification_numbers' => :'Array<PostIdentificationNumberBankModel>',
        :'aliases' => :'Array<PostIdentityVerificationAliasesInnerBankModel>',
        :'phone_number' => :'String',
        :'email_address' => :'String',
        :'website' => :'String',
        :'nature_of_business' => :'String',
        :'director_customer_guids' => :'Array<String>',
        :'ultimate_beneficial_owners' => :'Array<PostUltimateBeneficialOwnerBankModel>',
        :'supporting_file_guids' => :'Array<String>',
        :'occupation' => :'String',
        :'external_bank_account_guid' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'customer_guid',
        :'expected_behaviours',
        :'method',
        :'counterparty_guid',
        :'country_code',
        :'name',
        :'address',
        :'date_of_birth',
        :'identification_numbers',
        :'aliases',
        :'phone_number',
        :'email_address',
        :'website',
        :'nature_of_business',
        :'director_customer_guids',
        :'ultimate_beneficial_owners',
        :'supporting_file_guids',
        :'occupation',
        :'external_bank_account_guid'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `CybridApiBank::PostIdentityVerificationBankModel` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `CybridApiBank::PostIdentityVerificationBankModel`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'customer_guid')
        self.customer_guid = attributes[:'customer_guid']
      end

      if attributes.key?(:'expected_behaviours')
        if (value = attributes[:'expected_behaviours']).is_a?(Array)
          self.expected_behaviours = value
        end
      end

      if attributes.key?(:'method')
        self.method = attributes[:'method']
      end

      if attributes.key?(:'counterparty_guid')
        self.counterparty_guid = attributes[:'counterparty_guid']
      end

      if attributes.key?(:'country_code')
        self.country_code = attributes[:'country_code']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'address')
        self.address = attributes[:'address']
      end

      if attributes.key?(:'date_of_birth')
        self.date_of_birth = attributes[:'date_of_birth']
      end

      if attributes.key?(:'identification_numbers')
        if (value = attributes[:'identification_numbers']).is_a?(Array)
          self.identification_numbers = value
        end
      end

      if attributes.key?(:'aliases')
        if (value = attributes[:'aliases']).is_a?(Array)
          self.aliases = value
        end
      end

      if attributes.key?(:'phone_number')
        self.phone_number = attributes[:'phone_number']
      end

      if attributes.key?(:'email_address')
        self.email_address = attributes[:'email_address']
      end

      if attributes.key?(:'website')
        self.website = attributes[:'website']
      end

      if attributes.key?(:'nature_of_business')
        self.nature_of_business = attributes[:'nature_of_business']
      end

      if attributes.key?(:'director_customer_guids')
        if (value = attributes[:'director_customer_guids']).is_a?(Array)
          self.director_customer_guids = value
        end
      end

      if attributes.key?(:'ultimate_beneficial_owners')
        if (value = attributes[:'ultimate_beneficial_owners']).is_a?(Array)
          self.ultimate_beneficial_owners = value
        end
      end

      if attributes.key?(:'supporting_file_guids')
        if (value = attributes[:'supporting_file_guids']).is_a?(Array)
          self.supporting_file_guids = value
        end
      end

      if attributes.key?(:'occupation')
        self.occupation = attributes[:'occupation']
      end

      if attributes.key?(:'external_bank_account_guid')
        self.external_bank_account_guid = attributes[:'external_bank_account_guid']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      if !@customer_guid.nil? && @customer_guid.to_s.length > 32
        invalid_properties.push('invalid value for "customer_guid", the character length must be smaller than or equal to 32.')
      end

      if !@expected_behaviours.nil? && @expected_behaviours.length > 50
        invalid_properties.push('invalid value for "expected_behaviours", number of items must be less than or equal to 50.')
      end

      if !@identification_numbers.nil? && @identification_numbers.length > 10
        invalid_properties.push('invalid value for "identification_numbers", number of items must be less than or equal to 10.')
      end

      if !@identification_numbers.nil? && @identification_numbers.length < 1
        invalid_properties.push('invalid value for "identification_numbers", number of items must be greater than or equal to 1.')
      end

      if !@aliases.nil? && @aliases.length < 0
        invalid_properties.push('invalid value for "aliases", number of items must be greater than or equal to 0.')
      end

      if !@director_customer_guids.nil? && @director_customer_guids.length > 50
        invalid_properties.push('invalid value for "director_customer_guids", number of items must be less than or equal to 50.')
      end

      if !@director_customer_guids.nil? && @director_customer_guids.length < 1
        invalid_properties.push('invalid value for "director_customer_guids", number of items must be greater than or equal to 1.')
      end

      if !@ultimate_beneficial_owners.nil? && @ultimate_beneficial_owners.length > 50
        invalid_properties.push('invalid value for "ultimate_beneficial_owners", number of items must be less than or equal to 50.')
      end

      if !@ultimate_beneficial_owners.nil? && @ultimate_beneficial_owners.length < 1
        invalid_properties.push('invalid value for "ultimate_beneficial_owners", number of items must be greater than or equal to 1.')
      end

      if !@supporting_file_guids.nil? && @supporting_file_guids.length > 10
        invalid_properties.push('invalid value for "supporting_file_guids", number of items must be less than or equal to 10.')
      end

      if !@supporting_file_guids.nil? && @supporting_file_guids.length < 1
        invalid_properties.push('invalid value for "supporting_file_guids", number of items must be greater than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ["kyc", "bank_account", "counterparty"])
      return false unless type_validator.valid?(@type)
      return false if !@customer_guid.nil? && @customer_guid.to_s.length > 32
      return false if !@expected_behaviours.nil? && @expected_behaviours.length > 50
      method_validator = EnumAttributeValidator.new('String', ["watchlists", "attested", "document_submission", "enhanced_due_diligence", "id_and_selfie", "tax_id_and_selfie", "business_registration", "attested_id_and_selfie", "attested_business_registration", "attested_ownership", "account_ownership"])
      return false unless method_validator.valid?(@method)
      return false if !@identification_numbers.nil? && @identification_numbers.length > 10
      return false if !@identification_numbers.nil? && @identification_numbers.length < 1
      return false if !@aliases.nil? && @aliases.length < 0
      return false if !@director_customer_guids.nil? && @director_customer_guids.length > 50
      return false if !@director_customer_guids.nil? && @director_customer_guids.length < 1
      return false if !@ultimate_beneficial_owners.nil? && @ultimate_beneficial_owners.length > 50
      return false if !@ultimate_beneficial_owners.nil? && @ultimate_beneficial_owners.length < 1
      return false if !@supporting_file_guids.nil? && @supporting_file_guids.length > 10
      return false if !@supporting_file_guids.nil? && @supporting_file_guids.length < 1
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["kyc", "bank_account", "counterparty"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Custom attribute writer method with validation
    # @param [Object] customer_guid Value to be assigned
    def customer_guid=(customer_guid)
      if !customer_guid.nil? && customer_guid.to_s.length > 32
        fail ArgumentError, 'invalid value for "customer_guid", the character length must be smaller than or equal to 32.'
      end

      @customer_guid = customer_guid
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] method Object to be assigned
    def method=(method)
      validator = EnumAttributeValidator.new('String', ["watchlists", "attested", "document_submission", "enhanced_due_diligence", "id_and_selfie", "tax_id_and_selfie", "business_registration", "attested_id_and_selfie", "attested_business_registration", "attested_ownership", "account_ownership"])
      unless validator.valid?(method)
        fail ArgumentError, "invalid value for \"method\", must be one of #{validator.allowable_values}."
      end
      @method = method
    end

    # Custom attribute writer method with validation
    # @param [Object] identification_numbers Value to be assigned
    def identification_numbers=(identification_numbers)
      if !identification_numbers.nil? && identification_numbers.length > 10
        fail ArgumentError, 'invalid value for "identification_numbers", number of items must be less than or equal to 10.'
      end

      if !identification_numbers.nil? && identification_numbers.length < 1
        fail ArgumentError, 'invalid value for "identification_numbers", number of items must be greater than or equal to 1.'
      end

      @identification_numbers = identification_numbers
    end

    # Custom attribute writer method with validation
    # @param [Object] aliases Value to be assigned
    def aliases=(aliases)
      if !aliases.nil? && aliases.length < 0
        fail ArgumentError, 'invalid value for "aliases", number of items must be greater than or equal to 0.'
      end

      @aliases = aliases
    end

    # Custom attribute writer method with validation
    # @param [Object] director_customer_guids Value to be assigned
    def director_customer_guids=(director_customer_guids)
      if !director_customer_guids.nil? && director_customer_guids.length > 50
        fail ArgumentError, 'invalid value for "director_customer_guids", number of items must be less than or equal to 50.'
      end

      if !director_customer_guids.nil? && director_customer_guids.length < 1
        fail ArgumentError, 'invalid value for "director_customer_guids", number of items must be greater than or equal to 1.'
      end

      @director_customer_guids = director_customer_guids
    end

    # Custom attribute writer method with validation
    # @param [Object] ultimate_beneficial_owners Value to be assigned
    def ultimate_beneficial_owners=(ultimate_beneficial_owners)
      if !ultimate_beneficial_owners.nil? && ultimate_beneficial_owners.length > 50
        fail ArgumentError, 'invalid value for "ultimate_beneficial_owners", number of items must be less than or equal to 50.'
      end

      if !ultimate_beneficial_owners.nil? && ultimate_beneficial_owners.length < 1
        fail ArgumentError, 'invalid value for "ultimate_beneficial_owners", number of items must be greater than or equal to 1.'
      end

      @ultimate_beneficial_owners = ultimate_beneficial_owners
    end

    # Custom attribute writer method with validation
    # @param [Object] supporting_file_guids Value to be assigned
    def supporting_file_guids=(supporting_file_guids)
      if !supporting_file_guids.nil? && supporting_file_guids.length > 10
        fail ArgumentError, 'invalid value for "supporting_file_guids", number of items must be less than or equal to 10.'
      end

      if !supporting_file_guids.nil? && supporting_file_guids.length < 1
        fail ArgumentError, 'invalid value for "supporting_file_guids", number of items must be greater than or equal to 1.'
      end

      @supporting_file_guids = supporting_file_guids
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          customer_guid == o.customer_guid &&
          expected_behaviours == o.expected_behaviours &&
          method == o.method &&
          counterparty_guid == o.counterparty_guid &&
          country_code == o.country_code &&
          name == o.name &&
          address == o.address &&
          date_of_birth == o.date_of_birth &&
          identification_numbers == o.identification_numbers &&
          aliases == o.aliases &&
          phone_number == o.phone_number &&
          email_address == o.email_address &&
          website == o.website &&
          nature_of_business == o.nature_of_business &&
          director_customer_guids == o.director_customer_guids &&
          ultimate_beneficial_owners == o.ultimate_beneficial_owners &&
          supporting_file_guids == o.supporting_file_guids &&
          occupation == o.occupation &&
          external_bank_account_guid == o.external_bank_account_guid
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [type, customer_guid, expected_behaviours, method, counterparty_guid, country_code, name, address, date_of_birth, identification_numbers, aliases, phone_number, email_address, website, nature_of_business, director_customer_guids, ultimate_beneficial_owners, supporting_file_guids, occupation, external_bank_account_guid].hash
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
