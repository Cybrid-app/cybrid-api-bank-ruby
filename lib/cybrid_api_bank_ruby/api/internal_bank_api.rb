=begin
#Cybrid Bank API

## Cybrid API documentation  Welcome to Cybrid, an all-in-one crypto platform that enables you to easily **build** and **launch** white-label crypto products or services.  In these documents, you'll find details on how our REST API operates and generally how our platform functions.  If you're looking for our UI SDK Widgets for Web or Mobile (iOS/Android), generated API clients, or demo applications, head over to our [Github repo](https://github.com/Cybrid-app).  💡 We recommend bookmarking the [Cybrid LinkTree](https://linktr.ee/cybridtechnologies) which contains many helpful links to platform resources.  ## Getting Started  This is Cybrid's public interactive API documentation, which allows you to fully test our APIs. If you'd like to use a different tool to exercise our APIs, you can download the [Open API 3.0 yaml](<api_platform_bank_swagger_schema_url>) for import.  If you're new to our APIs and the Cybrid Platform, follow the below guides to get set up and familiar with the platform:  1. [Introduction](https://docs.cybrid.xyz/docs/introduction) 2. [Platform Introduction](https://docs.cybrid.xyz/docs/how-is-cybrid-architected) 3. [Testing with Hosted Web Demo App](https://docs.cybrid.xyz/docs/testing-with-hosted-web-demo-app)  In [Getting Started in the Cybrid Sandbox](https://docs.cybrid.xyz/docs/how-do-i-get-started-with-the-sandbox), we walk you through how to use the [Cybrid Sandbox](https://id.sandbox.cybrid.app/) to create a test bank and generate API keys. In [Getting Ready for Trading](https://kb.cybrid.xyz/getting-ready-for-trading), we walk through creating customers, customer identities, accounts, as well as executing quotes and trades.  ## Working with the Cybrid Platform  There are three primary ways you can interact with the Cybrid platform:  1. Directly via our RESTful API (this documentation) 2. Using our API clients available in a variety of languages ([Angular](https://github.com/Cybrid-app/cybrid-api-bank-angular), [Java](https://github.com/Cybrid-app/cybrid-api-bank-java), [Kotlin](https://github.com/Cybrid-app/cybrid-api-bank-kotlin), [Python](https://github.com/Cybrid-app/cybrid-api-bank-python), [Ruby](https://github.com/Cybrid-app/cybrid-api-bank-ruby), [Swift](https://github.com/Cybrid-app/cybrid-api-bank-swift) or [Typescript](https://github.com/Cybrid-app/cybrid-api-bank-typescript)) 3. Integrating a platform specific SDK ([Web](https://github.com/Cybrid-app/cybrid-sdk-web), [Android](https://github.com/Cybrid-app/cybrid-sdk-android), [iOS](https://github.com/Cybrid-app/cybrid-sdk-ios))  Our complete set of APIs allows you to manage resources across three distinct areas: your `Organization`, your `Banks` and your `Identities`. For most of your testing and interaction you'll be using the `Bank` API, which is where the majority of APIs reside.  *The complete set of APIs can be found on the following pages:*  | API                                                              | Description                                                 | |------------------------------------------------------------------|-------------------------------------------------------------| | [Organization API](<api_platform_organization_swagger_ui_url>)   | APIs to manage organizations                                | | [Bank API](<api_platform_bank_swagger_ui_url>)                   | APIs to manage banks (and all downstream customer activity) | | [Identities API](<api_idp_swagger_ui_url>)                       | APIs to manage organization and bank identities             |  For questions please contact [Support](mailto:support@cybrid.xyz) at any time for assistance, or contact the [Product Team](mailto:product@cybrid.xyz) for product suggestions.  ## Authenticating with the API  The Cybrid Platform uses OAuth 2.0 Bearer Tokens to authenticate requests to the platform. Credentials to create `Organization` and `Bank` tokens can be generated via the [Cybrid Sandbox](<api_idp_url>). Access tokens can be generated for a `Customer` as well via the [Cybrid IdP](<api_idp_url>) as well.  An `Organization` access token applies broadly to the whole Organization and all of its `Banks`, whereas, a `Bank` access token is specific to an individual Bank. `Customer` tokens, similarly, are scoped to a specific customer in a bank.  Both `Organization` and `Bank` tokens can be created using the OAuth Client Credential Grant flow. Each Organization and Bank has its own unique `Client ID` and `Secret` that allows for machine-to-machine authentication.  A `Bank` can then generate `Customer` access tokens via API using our [Identities API](<api_idp_swagger_ui_url>).  <font color=\"orange\">**⚠️ Never share your Client ID or Secret publicly or in your source code repository.**</font>  Your `Client ID` and `Secret` can be exchanged for a time-limited `Bearer Token` by interacting with the Cybrid Identity Provider or through interacting with the **Authorize** button in this document.  The following curl command can be used to quickly generate a `Bearer Token` for use in testing the API or demo applications.  ``` # Example request when using Bank credentials curl -X POST <api_idp_url>/oauth/token -d '{     \"grant_type\": \"client_credentials\",     \"client_id\": \"<Your Client ID>\",     \"client_secret\": \"<Your Secret>\",     \"scope\": \"<api_platform_bank_scopes>\"   }' -H \"Content-Type: application/json\"  # When using Organization credentials set `scope` to '<api_platform_organization_scopes>' ``` <font color=\"orange\">**⚠️ Note: The above curl will create a bearer token with full scope access. Delete scopes if you'd like to restrict access.**</font>  ## Authentication Scopes  The Cybrid platform supports the use of scopes to control the level of access a token is limited to. Scopes do not grant access to resources; instead, they provide limits, in support of the least privilege principal.  The following scopes are available on the platform and can be requested when generating either an Organization, Bank or Customer token. Generally speaking, the _Read_ scope is required to read and list resources, the _Write_ scope is required to update a resource and the _Execute_ scope is required to create a resource.  | Resource              | Read scope (Token Type)                                    | Write scope (Token Type)                      | Execute scope (Token Type)                       | |-----------------------|------------------------------------------------------------|-----------------------------------------------|--------------------------------------------------| | Account               | accounts:read (Organization, Bank, Customer)               |                                               | accounts:execute (Bank, Customer)                | | Bank                  | banks:read (Organization, Bank)                            | banks:write (Organization, Bank)              | banks:execute (Organization)                     | | Customer              | customers:read (Organization, Bank, Customer)              | customers:write (Bank, Customer)              | customers:execute (Bank)                         | | Counterparty          | counterparties:read (Organization, Bank, Customer)         | counterparties:write (Bank, Customer)         | counterparties:execute (Bank)                    | | Deposit Address       | deposit_addresses:read (Organization, Bank, Customer)      | deposit_addresses:write (Bank, Customer)      | deposit_addresses:execute (Bank, Customer)       | | External Bank Account | external_bank_accounts:read (Organization, Bank, Customer) | external_bank_accounts:write (Bank, Customer) | external_bank_accounts:execute (Bank, Customer)  | | External Wallet       | external_wallet:read (Organization, Bank, Customer)        |                                               | external_wallet:execute (Bank, Customer)         | | Organization          | organizations:read (Organization)                          | organizations:write (Organization)            |                                                  | | User                  | users:read (Organization)                                  |                                               | users:execute (Organization)                     | | Price                 | prices:read (Bank, Customer)                               |                                               |                                                  | | Quote                 | quotes:read (Organization, Bank, Customer)                 |                                               | quotes:execute (Organization, Bank, Customer)    | | Trade                 | trades:read (Organization, Bank, Customer)                 |                                               | trades:execute (Organization, Bank, Customer)    | | Transfer              | transfers:read (Organization, Bank, Customer)              |                                               | transfers:execute (Organization, Bank, Customer) | | Workflow              | workflows:read (Organization, Bank, Customer)              |                                               | workflows:execute (Bank, Customer)               | | Invoice               | invoices:read (Organization, Bank, Customer)               | invoices:write (Bank, Customer)               | invoices:execute (Bank, Customer)                |  ## Available Endpoints  The available APIs for the [Identity](<api_idp_swagger_ui_url>), [Organization](<api_platform_organization_swagger_ui_url>) and [Bank](<api_platform_bank_swagger_ui_url>) API services are listed below:  | API Service  | Model                | API Endpoint Path              | Description                                                                                       | |--------------|----------------------|--------------------------------|---------------------------------------------------------------------------------------------------| | Identity     | Bank                 | /api/bank_applications         | Create and list banks                                                                             | | Identity     | CustomerToken        | /api/customer_tokens           | Create customer JWT access tokens                                                                 | | Identity     | Organization         | /api/organization_applications | Create and list organizations                                                                     | | Identity     | Organization         | /api/users                     | Create and list organization users                                                                | | Organization | Organization         | /api/organizations             | APIs to retrieve and update organization name                                                     | | Bank         | Account              | /api/accounts                  | Create and list accounts, which hold a specific asset for a customers                             | | Bank         | Asset                | /api/assets                    | Get a list of assets supported by the platform (ex: BTC, ETH)                                     | | Bank         | Bank                 | /api/banks                     | Create, update and list banks, the parent to customers, accounts, etc                             | | Bank         | Customer             | /api/customers                 | Create and list customers                                                                         | | Bank         | Counterparty         | /api/counterparties            | Create and list counterparties                                                                    | | Bank         | DepositAddress       | /api/deposit_addresses         | Create, get and list deposit addresses                                                            | | Bank         | ExternalBankAccount  | /api/external_bank_accounts    | Create, get and list external bank accounts, which connect customer bank accounts to the platform | | Bank         | ExternalWallet       | /api/external_wallets          | Create, get, list and delete external wallets, which connect customer wallets to the platform     | | Bank         | IdentityVerification | /api/identity_verifications    | Create and list identity verifications, which are performed on customers for KYC                  | | Bank         | Invoice              | /api/invoices                  | Create, get, cancel and list invoices                                                             | | Bank         | PaymentInstruction   | /api/payment_instructions      | Create, get and list payment instructions for invoices                                            | | Bank         | Price                | /api/prices                    | Get the current prices for assets on the platform                                                 | | Bank         | Quote                | /api/quotes                    | Create and list quotes, which are required to execute trades                                      | | Bank         | Symbol               | /api/symbols                   | Get a list of symbols supported for trade (ex: BTC-USD)                                           | | Bank         | Trade                | /api/trades                    | Create and list trades, which buy or sell cryptocurrency                                          | | Bank         | Transfer             | /api/transfers                 | Create, get and list transfers (e.g., funding, book)                                              | | Bank         | Workflow             | /api/workflows                 | Create, get and list workflows                                                                    |  ## Understanding Object Models & Endpoints  **Organizations**  An `Organization` is meant to represent the organization partnering with Cybrid to use our platform.  An `Organization` typically does not directly interact with `customers`. Instead, an Organization has one or more `banks`, which encompass the financial service offerings of the platform.  **Banks**  A `Bank` is owned by an `Organization` and can be thought of as an environment or container for `customers` and product offerings. Banks are created in either `Sandbox` or `Production` mode, where `Sandbox` is the environment that you would test, prototype and build in prior to moving to `Production`.  An `Organization` can have multiple `banks`, in either `Sandbox` or `Production` environments. A `Sandbox Bank` will be backed by stubbed data and process flows. For instance, funding source transfer processes as well as trades will be simulated rather than performed, however asset prices are representative of real-world values. You have an unlimited amount of simulated fiat currency for testing purposes.  **Customers**  `Customers` represent your banking users on the platform. At present, we offer support for `Individuals` as Customers.  `Customers` must be verified (i.e., KYC'd) in our system before they can play any part on the platform, which means they must have an associated and a passing `Identity Verification`. See the Identity Verifications section for more details on how a customer can be verified.  `Customers` must also have an `Account` to be able to transact, in the desired asset class. See the Accounts APIs for more details on setting up accounts for the customer. 

The version of the OpenAPI document: v0.0.0
Contact: support@cybrid.app
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.0

=end

require 'cgi'

module CybridApiBank
  class InternalBankApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Claim Exchange Settlement Payment Order
    # Claim an Exchange Settlement Payment Order.  Required scope: **internal:exchange_settlements:write**
    # @param guid [String] Identifier for the exchange settlement expected payment.
    # @param post_internal_claim_exchange_settlement_payment_order_bank_model [PostInternalClaimExchangeSettlementPaymentOrderBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [InternalExchangeSettlementPaymentOrderBankModel]
    def internal_claim_exchange_settlement_payment_order(guid, post_internal_claim_exchange_settlement_payment_order_bank_model, opts = {})
      data, _status_code, _headers = internal_claim_exchange_settlement_payment_order_with_http_info(guid, post_internal_claim_exchange_settlement_payment_order_bank_model, opts)
      data
    end

    # Claim Exchange Settlement Payment Order
    # Claim an Exchange Settlement Payment Order.  Required scope: **internal:exchange_settlements:write**
    # @param guid [String] Identifier for the exchange settlement expected payment.
    # @param post_internal_claim_exchange_settlement_payment_order_bank_model [PostInternalClaimExchangeSettlementPaymentOrderBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalExchangeSettlementPaymentOrderBankModel, Integer, Hash)>] InternalExchangeSettlementPaymentOrderBankModel data, response status code and response headers
    def internal_claim_exchange_settlement_payment_order_with_http_info(guid, post_internal_claim_exchange_settlement_payment_order_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_claim_exchange_settlement_payment_order ...'
      end
      # verify the required parameter 'guid' is set
      if @api_client.config.client_side_validation && guid.nil?
        fail ArgumentError, "Missing the required parameter 'guid' when calling InternalBankApi.internal_claim_exchange_settlement_payment_order"
      end
      # verify the required parameter 'post_internal_claim_exchange_settlement_payment_order_bank_model' is set
      if @api_client.config.client_side_validation && post_internal_claim_exchange_settlement_payment_order_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'post_internal_claim_exchange_settlement_payment_order_bank_model' when calling InternalBankApi.internal_claim_exchange_settlement_payment_order"
      end
      # resource path
      local_var_path = '/api/internal/exchange_settlement_payment_orders/{guid}/claim'.sub('{' + 'guid' + '}', CGI.escape(guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(post_internal_claim_exchange_settlement_payment_order_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalExchangeSettlementPaymentOrderBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_claim_exchange_settlement_payment_order",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_claim_exchange_settlement_payment_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Claim Expected Payment
    # Claim an Expected Payments.  Required scope: **internal:exchange_settlements:write**
    # @param guid [String] Identifier for the expected payment.
    # @param post_internal_claim_expected_payment_bank_model [PostInternalClaimExpectedPaymentBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [InternalExpectedPaymentBankModel]
    def internal_claim_expected_payment(guid, post_internal_claim_expected_payment_bank_model, opts = {})
      data, _status_code, _headers = internal_claim_expected_payment_with_http_info(guid, post_internal_claim_expected_payment_bank_model, opts)
      data
    end

    # Claim Expected Payment
    # Claim an Expected Payments.  Required scope: **internal:exchange_settlements:write**
    # @param guid [String] Identifier for the expected payment.
    # @param post_internal_claim_expected_payment_bank_model [PostInternalClaimExpectedPaymentBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalExpectedPaymentBankModel, Integer, Hash)>] InternalExpectedPaymentBankModel data, response status code and response headers
    def internal_claim_expected_payment_with_http_info(guid, post_internal_claim_expected_payment_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_claim_expected_payment ...'
      end
      # verify the required parameter 'guid' is set
      if @api_client.config.client_side_validation && guid.nil?
        fail ArgumentError, "Missing the required parameter 'guid' when calling InternalBankApi.internal_claim_expected_payment"
      end
      # verify the required parameter 'post_internal_claim_expected_payment_bank_model' is set
      if @api_client.config.client_side_validation && post_internal_claim_expected_payment_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'post_internal_claim_expected_payment_bank_model' when calling InternalBankApi.internal_claim_expected_payment"
      end
      # resource path
      local_var_path = '/api/internal/expected_payments/{guid}/claim'.sub('{' + 'guid' + '}', CGI.escape(guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(post_internal_claim_expected_payment_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalExpectedPaymentBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_claim_expected_payment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_claim_expected_payment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create Account
    # Creates an account.  Required scope: **internal:accounts:execute**
    # @param internal_post_account_bank_model [InternalPostAccountBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [AccountBankModel]
    def internal_create_account(internal_post_account_bank_model, opts = {})
      data, _status_code, _headers = internal_create_account_with_http_info(internal_post_account_bank_model, opts)
      data
    end

    # Create Account
    # Creates an account.  Required scope: **internal:accounts:execute**
    # @param internal_post_account_bank_model [InternalPostAccountBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AccountBankModel, Integer, Hash)>] AccountBankModel data, response status code and response headers
    def internal_create_account_with_http_info(internal_post_account_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_create_account ...'
      end
      # verify the required parameter 'internal_post_account_bank_model' is set
      if @api_client.config.client_side_validation && internal_post_account_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'internal_post_account_bank_model' when calling InternalBankApi.internal_create_account"
      end
      # resource path
      local_var_path = '/api/internal/accounts'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(internal_post_account_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'AccountBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_create_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_create_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create ActivityLimitConfiguration
    # Creates a transfer rail configuration.  Required scope: **internal:banks:write**
    # @param post_internal_activity_limit_configuration_bank_model [PostInternalActivityLimitConfigurationBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [InternalActivityLimitConfigurationBankModel]
    def internal_create_activity_limit_configuration(post_internal_activity_limit_configuration_bank_model, opts = {})
      data, _status_code, _headers = internal_create_activity_limit_configuration_with_http_info(post_internal_activity_limit_configuration_bank_model, opts)
      data
    end

    # Create ActivityLimitConfiguration
    # Creates a transfer rail configuration.  Required scope: **internal:banks:write**
    # @param post_internal_activity_limit_configuration_bank_model [PostInternalActivityLimitConfigurationBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalActivityLimitConfigurationBankModel, Integer, Hash)>] InternalActivityLimitConfigurationBankModel data, response status code and response headers
    def internal_create_activity_limit_configuration_with_http_info(post_internal_activity_limit_configuration_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_create_activity_limit_configuration ...'
      end
      # verify the required parameter 'post_internal_activity_limit_configuration_bank_model' is set
      if @api_client.config.client_side_validation && post_internal_activity_limit_configuration_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'post_internal_activity_limit_configuration_bank_model' when calling InternalBankApi.internal_create_activity_limit_configuration"
      end
      # resource path
      local_var_path = '/api/internal/activity_limit_configurations'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(post_internal_activity_limit_configuration_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalActivityLimitConfigurationBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_create_activity_limit_configuration",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_create_activity_limit_configuration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create Activity Report
    # Create an Activity Report.  Required scope: **internal:reports:execute**
    # @param post_internal_activity_report_bank_model [PostInternalActivityReportBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [InternalActivityReportBankModel]
    def internal_create_activity_report(post_internal_activity_report_bank_model, opts = {})
      data, _status_code, _headers = internal_create_activity_report_with_http_info(post_internal_activity_report_bank_model, opts)
      data
    end

    # Create Activity Report
    # Create an Activity Report.  Required scope: **internal:reports:execute**
    # @param post_internal_activity_report_bank_model [PostInternalActivityReportBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalActivityReportBankModel, Integer, Hash)>] InternalActivityReportBankModel data, response status code and response headers
    def internal_create_activity_report_with_http_info(post_internal_activity_report_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_create_activity_report ...'
      end
      # verify the required parameter 'post_internal_activity_report_bank_model' is set
      if @api_client.config.client_side_validation && post_internal_activity_report_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'post_internal_activity_report_bank_model' when calling InternalBankApi.internal_create_activity_report"
      end
      # resource path
      local_var_path = '/api/internal/activity_reports'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(post_internal_activity_report_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalActivityReportBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_create_activity_report",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_create_activity_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create Bank
    # Create a bank.  Required scope: **internal:banks:execute**
    # @param post_internal_bank_bank_model [PostInternalBankBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [InternalBankBankModel]
    def internal_create_bank(post_internal_bank_bank_model, opts = {})
      data, _status_code, _headers = internal_create_bank_with_http_info(post_internal_bank_bank_model, opts)
      data
    end

    # Create Bank
    # Create a bank.  Required scope: **internal:banks:execute**
    # @param post_internal_bank_bank_model [PostInternalBankBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalBankBankModel, Integer, Hash)>] InternalBankBankModel data, response status code and response headers
    def internal_create_bank_with_http_info(post_internal_bank_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_create_bank ...'
      end
      # verify the required parameter 'post_internal_bank_bank_model' is set
      if @api_client.config.client_side_validation && post_internal_bank_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'post_internal_bank_bank_model' when calling InternalBankApi.internal_create_bank"
      end
      # resource path
      local_var_path = '/api/internal/banks'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(post_internal_bank_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalBankBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_create_bank",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_create_bank\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create BankAccountService
    # Create an BankAccountService.  Required scope: **internal:bank_account_services:execute**
    # @param post_internal_bank_account_service_bank_model [PostInternalBankAccountServiceBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [InternalBankAccountServiceBankModel]
    def internal_create_bank_account_service(post_internal_bank_account_service_bank_model, opts = {})
      data, _status_code, _headers = internal_create_bank_account_service_with_http_info(post_internal_bank_account_service_bank_model, opts)
      data
    end

    # Create BankAccountService
    # Create an BankAccountService.  Required scope: **internal:bank_account_services:execute**
    # @param post_internal_bank_account_service_bank_model [PostInternalBankAccountServiceBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalBankAccountServiceBankModel, Integer, Hash)>] InternalBankAccountServiceBankModel data, response status code and response headers
    def internal_create_bank_account_service_with_http_info(post_internal_bank_account_service_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_create_bank_account_service ...'
      end
      # verify the required parameter 'post_internal_bank_account_service_bank_model' is set
      if @api_client.config.client_side_validation && post_internal_bank_account_service_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'post_internal_bank_account_service_bank_model' when calling InternalBankApi.internal_create_bank_account_service"
      end
      # resource path
      local_var_path = '/api/internal/bank_account_services'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(post_internal_bank_account_service_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalBankAccountServiceBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_create_bank_account_service",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_create_bank_account_service\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create Compliance Decision
    # Create an Compliance Decision.  Required scope: **internal:customers:write**
    # @param post_internal_compliance_decision_bank_model [PostInternalComplianceDecisionBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [InternalComplianceDecisionBankModel]
    def internal_create_compliance_decision(post_internal_compliance_decision_bank_model, opts = {})
      data, _status_code, _headers = internal_create_compliance_decision_with_http_info(post_internal_compliance_decision_bank_model, opts)
      data
    end

    # Create Compliance Decision
    # Create an Compliance Decision.  Required scope: **internal:customers:write**
    # @param post_internal_compliance_decision_bank_model [PostInternalComplianceDecisionBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalComplianceDecisionBankModel, Integer, Hash)>] InternalComplianceDecisionBankModel data, response status code and response headers
    def internal_create_compliance_decision_with_http_info(post_internal_compliance_decision_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_create_compliance_decision ...'
      end
      # verify the required parameter 'post_internal_compliance_decision_bank_model' is set
      if @api_client.config.client_side_validation && post_internal_compliance_decision_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'post_internal_compliance_decision_bank_model' when calling InternalBankApi.internal_create_compliance_decision"
      end
      # resource path
      local_var_path = '/api/internal/compliance_decisions'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(post_internal_compliance_decision_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalComplianceDecisionBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_create_compliance_decision",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_create_compliance_decision\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create CountryCodeConfiguration
    # Creates a country code configuration.  Required scope: **internal:banks:write**
    # @param post_internal_country_code_configuration_bank_model [PostInternalCountryCodeConfigurationBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [InternalCountryCodeConfigurationBankModel]
    def internal_create_country_code_configuration(post_internal_country_code_configuration_bank_model, opts = {})
      data, _status_code, _headers = internal_create_country_code_configuration_with_http_info(post_internal_country_code_configuration_bank_model, opts)
      data
    end

    # Create CountryCodeConfiguration
    # Creates a country code configuration.  Required scope: **internal:banks:write**
    # @param post_internal_country_code_configuration_bank_model [PostInternalCountryCodeConfigurationBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalCountryCodeConfigurationBankModel, Integer, Hash)>] InternalCountryCodeConfigurationBankModel data, response status code and response headers
    def internal_create_country_code_configuration_with_http_info(post_internal_country_code_configuration_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_create_country_code_configuration ...'
      end
      # verify the required parameter 'post_internal_country_code_configuration_bank_model' is set
      if @api_client.config.client_side_validation && post_internal_country_code_configuration_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'post_internal_country_code_configuration_bank_model' when calling InternalBankApi.internal_create_country_code_configuration"
      end
      # resource path
      local_var_path = '/api/internal/country_code_configurations'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(post_internal_country_code_configuration_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalCountryCodeConfigurationBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_create_country_code_configuration",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_create_country_code_configuration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create CryptoAssetConfiguration
    # Creates a crypto asset configuration.  Required scope: **internal:banks:write**
    # @param post_internal_crypto_asset_configuration_bank_model [PostInternalCryptoAssetConfigurationBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [InternalCryptoAssetConfigurationBankModel]
    def internal_create_crypto_asset_configuration(post_internal_crypto_asset_configuration_bank_model, opts = {})
      data, _status_code, _headers = internal_create_crypto_asset_configuration_with_http_info(post_internal_crypto_asset_configuration_bank_model, opts)
      data
    end

    # Create CryptoAssetConfiguration
    # Creates a crypto asset configuration.  Required scope: **internal:banks:write**
    # @param post_internal_crypto_asset_configuration_bank_model [PostInternalCryptoAssetConfigurationBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalCryptoAssetConfigurationBankModel, Integer, Hash)>] InternalCryptoAssetConfigurationBankModel data, response status code and response headers
    def internal_create_crypto_asset_configuration_with_http_info(post_internal_crypto_asset_configuration_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_create_crypto_asset_configuration ...'
      end
      # verify the required parameter 'post_internal_crypto_asset_configuration_bank_model' is set
      if @api_client.config.client_side_validation && post_internal_crypto_asset_configuration_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'post_internal_crypto_asset_configuration_bank_model' when calling InternalBankApi.internal_create_crypto_asset_configuration"
      end
      # resource path
      local_var_path = '/api/internal/crypto_asset_configurations'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(post_internal_crypto_asset_configuration_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalCryptoAssetConfigurationBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_create_crypto_asset_configuration",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_create_crypto_asset_configuration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create CybridAccount
    # Create a CybridAccount.  Required scope: **internal:cybrid_accounts:execute**
    # @param post_internal_cybrid_account_bank_model [PostInternalCybridAccountBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [InternalCybridAccountBankModel]
    def internal_create_cybrid_account(post_internal_cybrid_account_bank_model, opts = {})
      data, _status_code, _headers = internal_create_cybrid_account_with_http_info(post_internal_cybrid_account_bank_model, opts)
      data
    end

    # Create CybridAccount
    # Create a CybridAccount.  Required scope: **internal:cybrid_accounts:execute**
    # @param post_internal_cybrid_account_bank_model [PostInternalCybridAccountBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalCybridAccountBankModel, Integer, Hash)>] InternalCybridAccountBankModel data, response status code and response headers
    def internal_create_cybrid_account_with_http_info(post_internal_cybrid_account_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_create_cybrid_account ...'
      end
      # verify the required parameter 'post_internal_cybrid_account_bank_model' is set
      if @api_client.config.client_side_validation && post_internal_cybrid_account_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'post_internal_cybrid_account_bank_model' when calling InternalBankApi.internal_create_cybrid_account"
      end
      # resource path
      local_var_path = '/api/internal/cybrid_accounts'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(post_internal_cybrid_account_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalCybridAccountBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_create_cybrid_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_create_cybrid_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create CybridGasAccountConfiguration
    # Creates a cybrid gas account configuration.  Required scope: **internal:accounts:write**
    # @param post_internal_cybrid_gas_account_configuration_bank_model [PostInternalCybridGasAccountConfigurationBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [InternalCybridGasAccountConfigurationBankModel]
    def internal_create_cybrid_gas_account_configuration(post_internal_cybrid_gas_account_configuration_bank_model, opts = {})
      data, _status_code, _headers = internal_create_cybrid_gas_account_configuration_with_http_info(post_internal_cybrid_gas_account_configuration_bank_model, opts)
      data
    end

    # Create CybridGasAccountConfiguration
    # Creates a cybrid gas account configuration.  Required scope: **internal:accounts:write**
    # @param post_internal_cybrid_gas_account_configuration_bank_model [PostInternalCybridGasAccountConfigurationBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalCybridGasAccountConfigurationBankModel, Integer, Hash)>] InternalCybridGasAccountConfigurationBankModel data, response status code and response headers
    def internal_create_cybrid_gas_account_configuration_with_http_info(post_internal_cybrid_gas_account_configuration_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_create_cybrid_gas_account_configuration ...'
      end
      # verify the required parameter 'post_internal_cybrid_gas_account_configuration_bank_model' is set
      if @api_client.config.client_side_validation && post_internal_cybrid_gas_account_configuration_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'post_internal_cybrid_gas_account_configuration_bank_model' when calling InternalBankApi.internal_create_cybrid_gas_account_configuration"
      end
      # resource path
      local_var_path = '/api/internal/cybrid_gas_account_configurations'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(post_internal_cybrid_gas_account_configuration_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalCybridGasAccountConfigurationBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_create_cybrid_gas_account_configuration",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_create_cybrid_gas_account_configuration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create Deposit Bank Account
    # Creates a deposit bank account.  Required scope: **internal:deposit_bank_accounts:execute**
    # @param internal_post_deposit_bank_account_bank_model [InternalPostDepositBankAccountBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [DepositBankAccountBankModel]
    def internal_create_deposit_bank_account(internal_post_deposit_bank_account_bank_model, opts = {})
      data, _status_code, _headers = internal_create_deposit_bank_account_with_http_info(internal_post_deposit_bank_account_bank_model, opts)
      data
    end

    # Create Deposit Bank Account
    # Creates a deposit bank account.  Required scope: **internal:deposit_bank_accounts:execute**
    # @param internal_post_deposit_bank_account_bank_model [InternalPostDepositBankAccountBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(DepositBankAccountBankModel, Integer, Hash)>] DepositBankAccountBankModel data, response status code and response headers
    def internal_create_deposit_bank_account_with_http_info(internal_post_deposit_bank_account_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_create_deposit_bank_account ...'
      end
      # verify the required parameter 'internal_post_deposit_bank_account_bank_model' is set
      if @api_client.config.client_side_validation && internal_post_deposit_bank_account_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'internal_post_deposit_bank_account_bank_model' when calling InternalBankApi.internal_create_deposit_bank_account"
      end
      # resource path
      local_var_path = '/api/internal/deposit_bank_accounts'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(internal_post_deposit_bank_account_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'DepositBankAccountBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_create_deposit_bank_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_create_deposit_bank_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create Exchange
    # Create an Exchanges.  Required scope: **internal:exchanges:execute**
    # @param post_internal_exchange_bank_model [PostInternalExchangeBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [InternalExchangeBankModel]
    def internal_create_exchange(post_internal_exchange_bank_model, opts = {})
      data, _status_code, _headers = internal_create_exchange_with_http_info(post_internal_exchange_bank_model, opts)
      data
    end

    # Create Exchange
    # Create an Exchanges.  Required scope: **internal:exchanges:execute**
    # @param post_internal_exchange_bank_model [PostInternalExchangeBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalExchangeBankModel, Integer, Hash)>] InternalExchangeBankModel data, response status code and response headers
    def internal_create_exchange_with_http_info(post_internal_exchange_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_create_exchange ...'
      end
      # verify the required parameter 'post_internal_exchange_bank_model' is set
      if @api_client.config.client_side_validation && post_internal_exchange_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'post_internal_exchange_bank_model' when calling InternalBankApi.internal_create_exchange"
      end
      # resource path
      local_var_path = '/api/internal/exchanges'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(post_internal_exchange_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalExchangeBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_create_exchange",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_create_exchange\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create ExchangeAccount
    # Create an ExchangeAccount.  Required scope: **internal:exchange_accounts:execute**
    # @param post_internal_exchange_account_bank_model [PostInternalExchangeAccountBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [InternalExchangeAccountBankModel]
    def internal_create_exchange_account(post_internal_exchange_account_bank_model, opts = {})
      data, _status_code, _headers = internal_create_exchange_account_with_http_info(post_internal_exchange_account_bank_model, opts)
      data
    end

    # Create ExchangeAccount
    # Create an ExchangeAccount.  Required scope: **internal:exchange_accounts:execute**
    # @param post_internal_exchange_account_bank_model [PostInternalExchangeAccountBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalExchangeAccountBankModel, Integer, Hash)>] InternalExchangeAccountBankModel data, response status code and response headers
    def internal_create_exchange_account_with_http_info(post_internal_exchange_account_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_create_exchange_account ...'
      end
      # verify the required parameter 'post_internal_exchange_account_bank_model' is set
      if @api_client.config.client_side_validation && post_internal_exchange_account_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'post_internal_exchange_account_bank_model' when calling InternalBankApi.internal_create_exchange_account"
      end
      # resource path
      local_var_path = '/api/internal/exchange_accounts'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(post_internal_exchange_account_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalExchangeAccountBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_create_exchange_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_create_exchange_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create ExchangeMonitor
    # Creates a ExchangeMonitor.Required scope: **internal:exchange_monitors:execute**
    # @param post_internal_exchange_monitor_bank_model [PostInternalExchangeMonitorBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [InternalExchangeMonitorBankModel]
    def internal_create_exchange_monitor(post_internal_exchange_monitor_bank_model, opts = {})
      data, _status_code, _headers = internal_create_exchange_monitor_with_http_info(post_internal_exchange_monitor_bank_model, opts)
      data
    end

    # Create ExchangeMonitor
    # Creates a ExchangeMonitor.Required scope: **internal:exchange_monitors:execute**
    # @param post_internal_exchange_monitor_bank_model [PostInternalExchangeMonitorBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalExchangeMonitorBankModel, Integer, Hash)>] InternalExchangeMonitorBankModel data, response status code and response headers
    def internal_create_exchange_monitor_with_http_info(post_internal_exchange_monitor_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_create_exchange_monitor ...'
      end
      # verify the required parameter 'post_internal_exchange_monitor_bank_model' is set
      if @api_client.config.client_side_validation && post_internal_exchange_monitor_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'post_internal_exchange_monitor_bank_model' when calling InternalBankApi.internal_create_exchange_monitor"
      end
      # resource path
      local_var_path = '/api/internal/exchange_monitors'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(post_internal_exchange_monitor_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalExchangeMonitorBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_create_exchange_monitor",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_create_exchange_monitor\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create ExchangeOrder
    # Creates a ExchangeOrder.Required scope: **internal:exchange_orders:execute**
    # @param post_internal_exchange_order_bank_model [PostInternalExchangeOrderBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [InternalExchangeOrderBankModel]
    def internal_create_exchange_order(post_internal_exchange_order_bank_model, opts = {})
      data, _status_code, _headers = internal_create_exchange_order_with_http_info(post_internal_exchange_order_bank_model, opts)
      data
    end

    # Create ExchangeOrder
    # Creates a ExchangeOrder.Required scope: **internal:exchange_orders:execute**
    # @param post_internal_exchange_order_bank_model [PostInternalExchangeOrderBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalExchangeOrderBankModel, Integer, Hash)>] InternalExchangeOrderBankModel data, response status code and response headers
    def internal_create_exchange_order_with_http_info(post_internal_exchange_order_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_create_exchange_order ...'
      end
      # verify the required parameter 'post_internal_exchange_order_bank_model' is set
      if @api_client.config.client_side_validation && post_internal_exchange_order_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'post_internal_exchange_order_bank_model' when calling InternalBankApi.internal_create_exchange_order"
      end
      # resource path
      local_var_path = '/api/internal/exchange_orders'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(post_internal_exchange_order_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalExchangeOrderBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_create_exchange_order",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_create_exchange_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create Exchange Settlement
    # Create an Exchange Settlements.  Required scope: **internal:exchange_settlements:execute**
    # @param post_internal_exchange_settlement_bank_model [PostInternalExchangeSettlementBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [InternalExchangeSettlementBankModel]
    def internal_create_exchange_settlement(post_internal_exchange_settlement_bank_model, opts = {})
      data, _status_code, _headers = internal_create_exchange_settlement_with_http_info(post_internal_exchange_settlement_bank_model, opts)
      data
    end

    # Create Exchange Settlement
    # Create an Exchange Settlements.  Required scope: **internal:exchange_settlements:execute**
    # @param post_internal_exchange_settlement_bank_model [PostInternalExchangeSettlementBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalExchangeSettlementBankModel, Integer, Hash)>] InternalExchangeSettlementBankModel data, response status code and response headers
    def internal_create_exchange_settlement_with_http_info(post_internal_exchange_settlement_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_create_exchange_settlement ...'
      end
      # verify the required parameter 'post_internal_exchange_settlement_bank_model' is set
      if @api_client.config.client_side_validation && post_internal_exchange_settlement_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'post_internal_exchange_settlement_bank_model' when calling InternalBankApi.internal_create_exchange_settlement"
      end
      # resource path
      local_var_path = '/api/internal/exchange_settlements'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(post_internal_exchange_settlement_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalExchangeSettlementBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_create_exchange_settlement",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_create_exchange_settlement\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create Exchange Settlement Approval
    # Queue an Exchange Settlement Approval.  Required scope: **internal:exchange_settlements:write**
    # @param guid [String] Identifier for the exchange settlement.
    # @param [Hash] opts the optional parameters
    # @return [InternalCreateExchangeSettlementApproval202ResponseBankModel]
    def internal_create_exchange_settlement_approval(guid, opts = {})
      data, _status_code, _headers = internal_create_exchange_settlement_approval_with_http_info(guid, opts)
      data
    end

    # Create Exchange Settlement Approval
    # Queue an Exchange Settlement Approval.  Required scope: **internal:exchange_settlements:write**
    # @param guid [String] Identifier for the exchange settlement.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalCreateExchangeSettlementApproval202ResponseBankModel, Integer, Hash)>] InternalCreateExchangeSettlementApproval202ResponseBankModel data, response status code and response headers
    def internal_create_exchange_settlement_approval_with_http_info(guid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_create_exchange_settlement_approval ...'
      end
      # verify the required parameter 'guid' is set
      if @api_client.config.client_side_validation && guid.nil?
        fail ArgumentError, "Missing the required parameter 'guid' when calling InternalBankApi.internal_create_exchange_settlement_approval"
      end
      # resource path
      local_var_path = '/api/internal/exchange_settlements/{guid}/approval'.sub('{' + 'guid' + '}', CGI.escape(guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InternalCreateExchangeSettlementApproval202ResponseBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_create_exchange_settlement_approval",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_create_exchange_settlement_approval\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create Exchange Settlement Completion
    # Queue an Exchange Settlement Completion.  Required scope: **internal:exchange_settlements:write**
    # @param guid [String] Identifier for the exchange settlement.
    # @param [Hash] opts the optional parameters
    # @return [InternalCreateExchangeSettlementApproval202ResponseBankModel]
    def internal_create_exchange_settlement_completion(guid, opts = {})
      data, _status_code, _headers = internal_create_exchange_settlement_completion_with_http_info(guid, opts)
      data
    end

    # Create Exchange Settlement Completion
    # Queue an Exchange Settlement Completion.  Required scope: **internal:exchange_settlements:write**
    # @param guid [String] Identifier for the exchange settlement.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalCreateExchangeSettlementApproval202ResponseBankModel, Integer, Hash)>] InternalCreateExchangeSettlementApproval202ResponseBankModel data, response status code and response headers
    def internal_create_exchange_settlement_completion_with_http_info(guid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_create_exchange_settlement_completion ...'
      end
      # verify the required parameter 'guid' is set
      if @api_client.config.client_side_validation && guid.nil?
        fail ArgumentError, "Missing the required parameter 'guid' when calling InternalBankApi.internal_create_exchange_settlement_completion"
      end
      # resource path
      local_var_path = '/api/internal/exchange_settlements/{guid}/completion'.sub('{' + 'guid' + '}', CGI.escape(guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InternalCreateExchangeSettlementApproval202ResponseBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_create_exchange_settlement_completion",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_create_exchange_settlement_completion\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create ExchangeSettlementConfiguration
    # Creates a configuration.  Required scope: **internal:exchanges:execute**
    # @param post_internal_exchange_settlement_configuration_bank_model [PostInternalExchangeSettlementConfigurationBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [InternalExchangeSettlementConfigurationBankModel]
    def internal_create_exchange_settlement_configuration(post_internal_exchange_settlement_configuration_bank_model, opts = {})
      data, _status_code, _headers = internal_create_exchange_settlement_configuration_with_http_info(post_internal_exchange_settlement_configuration_bank_model, opts)
      data
    end

    # Create ExchangeSettlementConfiguration
    # Creates a configuration.  Required scope: **internal:exchanges:execute**
    # @param post_internal_exchange_settlement_configuration_bank_model [PostInternalExchangeSettlementConfigurationBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalExchangeSettlementConfigurationBankModel, Integer, Hash)>] InternalExchangeSettlementConfigurationBankModel data, response status code and response headers
    def internal_create_exchange_settlement_configuration_with_http_info(post_internal_exchange_settlement_configuration_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_create_exchange_settlement_configuration ...'
      end
      # verify the required parameter 'post_internal_exchange_settlement_configuration_bank_model' is set
      if @api_client.config.client_side_validation && post_internal_exchange_settlement_configuration_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'post_internal_exchange_settlement_configuration_bank_model' when calling InternalBankApi.internal_create_exchange_settlement_configuration"
      end
      # resource path
      local_var_path = '/api/internal/exchange_settlement_configurations'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(post_internal_exchange_settlement_configuration_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalExchangeSettlementConfigurationBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_create_exchange_settlement_configuration",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_create_exchange_settlement_configuration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create Exchange Settlement Payment Order
    # Create an Exchange Settlement Payment Orders.  Required scope: **internal:exchange_settlements:execute**
    # @param post_internal_exchange_settlement_payment_order_bank_model [PostInternalExchangeSettlementPaymentOrderBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [InternalExchangeSettlementPaymentOrderBankModel]
    def internal_create_exchange_settlement_payment_order(post_internal_exchange_settlement_payment_order_bank_model, opts = {})
      data, _status_code, _headers = internal_create_exchange_settlement_payment_order_with_http_info(post_internal_exchange_settlement_payment_order_bank_model, opts)
      data
    end

    # Create Exchange Settlement Payment Order
    # Create an Exchange Settlement Payment Orders.  Required scope: **internal:exchange_settlements:execute**
    # @param post_internal_exchange_settlement_payment_order_bank_model [PostInternalExchangeSettlementPaymentOrderBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalExchangeSettlementPaymentOrderBankModel, Integer, Hash)>] InternalExchangeSettlementPaymentOrderBankModel data, response status code and response headers
    def internal_create_exchange_settlement_payment_order_with_http_info(post_internal_exchange_settlement_payment_order_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_create_exchange_settlement_payment_order ...'
      end
      # verify the required parameter 'post_internal_exchange_settlement_payment_order_bank_model' is set
      if @api_client.config.client_side_validation && post_internal_exchange_settlement_payment_order_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'post_internal_exchange_settlement_payment_order_bank_model' when calling InternalBankApi.internal_create_exchange_settlement_payment_order"
      end
      # resource path
      local_var_path = '/api/internal/exchange_settlement_payment_orders'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(post_internal_exchange_settlement_payment_order_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalExchangeSettlementPaymentOrderBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_create_exchange_settlement_payment_order",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_create_exchange_settlement_payment_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create Expected Payment
    # Create an Expected Payments.  Required scope: **internal:exchange_settlements:execute**
    # @param post_internal_expected_payment_bank_model [PostInternalExpectedPaymentBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [InternalExpectedPaymentBankModel]
    def internal_create_expected_payment(post_internal_expected_payment_bank_model, opts = {})
      data, _status_code, _headers = internal_create_expected_payment_with_http_info(post_internal_expected_payment_bank_model, opts)
      data
    end

    # Create Expected Payment
    # Create an Expected Payments.  Required scope: **internal:exchange_settlements:execute**
    # @param post_internal_expected_payment_bank_model [PostInternalExpectedPaymentBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalExpectedPaymentBankModel, Integer, Hash)>] InternalExpectedPaymentBankModel data, response status code and response headers
    def internal_create_expected_payment_with_http_info(post_internal_expected_payment_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_create_expected_payment ...'
      end
      # verify the required parameter 'post_internal_expected_payment_bank_model' is set
      if @api_client.config.client_side_validation && post_internal_expected_payment_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'post_internal_expected_payment_bank_model' when calling InternalBankApi.internal_create_expected_payment"
      end
      # resource path
      local_var_path = '/api/internal/expected_payments'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(post_internal_expected_payment_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalExpectedPaymentBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_create_expected_payment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_create_expected_payment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create ExternalBankAccount
    # Create an ExternalBankAccount.  Required scope: **internal:accounts:execute**
    # @param post_internal_external_bank_account_bank_model [PostInternalExternalBankAccountBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [InternalExternalBankAccountBankModel]
    def internal_create_external_bank_account(post_internal_external_bank_account_bank_model, opts = {})
      data, _status_code, _headers = internal_create_external_bank_account_with_http_info(post_internal_external_bank_account_bank_model, opts)
      data
    end

    # Create ExternalBankAccount
    # Create an ExternalBankAccount.  Required scope: **internal:accounts:execute**
    # @param post_internal_external_bank_account_bank_model [PostInternalExternalBankAccountBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalExternalBankAccountBankModel, Integer, Hash)>] InternalExternalBankAccountBankModel data, response status code and response headers
    def internal_create_external_bank_account_with_http_info(post_internal_external_bank_account_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_create_external_bank_account ...'
      end
      # verify the required parameter 'post_internal_external_bank_account_bank_model' is set
      if @api_client.config.client_side_validation && post_internal_external_bank_account_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'post_internal_external_bank_account_bank_model' when calling InternalBankApi.internal_create_external_bank_account"
      end
      # resource path
      local_var_path = '/api/internal/external_bank_accounts'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(post_internal_external_bank_account_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalExternalBankAccountBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_create_external_bank_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_create_external_bank_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create ExternalWallet
    # Create an ExternalWallet.  Required scope: **internal:accounts:execute**
    # @param post_internal_external_wallet_bank_model [PostInternalExternalWalletBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [InternalExternalWalletBankModel]
    def internal_create_external_wallet(post_internal_external_wallet_bank_model, opts = {})
      data, _status_code, _headers = internal_create_external_wallet_with_http_info(post_internal_external_wallet_bank_model, opts)
      data
    end

    # Create ExternalWallet
    # Create an ExternalWallet.  Required scope: **internal:accounts:execute**
    # @param post_internal_external_wallet_bank_model [PostInternalExternalWalletBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalExternalWalletBankModel, Integer, Hash)>] InternalExternalWalletBankModel data, response status code and response headers
    def internal_create_external_wallet_with_http_info(post_internal_external_wallet_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_create_external_wallet ...'
      end
      # verify the required parameter 'post_internal_external_wallet_bank_model' is set
      if @api_client.config.client_side_validation && post_internal_external_wallet_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'post_internal_external_wallet_bank_model' when calling InternalBankApi.internal_create_external_wallet"
      end
      # resource path
      local_var_path = '/api/internal/external_wallets'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(post_internal_external_wallet_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalExternalWalletBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_create_external_wallet",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_create_external_wallet\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create Fee
    # Creates a Fee.Required scope: **internal:fees:execute**
    # @param post_internal_fee_charge_bank_model [PostInternalFeeChargeBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [InternalFeeChargeBankModel]
    def internal_create_fee(post_internal_fee_charge_bank_model, opts = {})
      data, _status_code, _headers = internal_create_fee_with_http_info(post_internal_fee_charge_bank_model, opts)
      data
    end

    # Create Fee
    # Creates a Fee.Required scope: **internal:fees:execute**
    # @param post_internal_fee_charge_bank_model [PostInternalFeeChargeBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalFeeChargeBankModel, Integer, Hash)>] InternalFeeChargeBankModel data, response status code and response headers
    def internal_create_fee_with_http_info(post_internal_fee_charge_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_create_fee ...'
      end
      # verify the required parameter 'post_internal_fee_charge_bank_model' is set
      if @api_client.config.client_side_validation && post_internal_fee_charge_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'post_internal_fee_charge_bank_model' when calling InternalBankApi.internal_create_fee"
      end
      # resource path
      local_var_path = '/api/internal/fees'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(post_internal_fee_charge_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalFeeChargeBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_create_fee",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_create_fee\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create FeeConfiguration
    # Creates a fee configuration.  Required scope: **internal:banks:write**
    # @param internal_post_fee_configuration_bank_model [InternalPostFeeConfigurationBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [InternalFeeConfigurationBankModel]
    def internal_create_fee_configuration(internal_post_fee_configuration_bank_model, opts = {})
      data, _status_code, _headers = internal_create_fee_configuration_with_http_info(internal_post_fee_configuration_bank_model, opts)
      data
    end

    # Create FeeConfiguration
    # Creates a fee configuration.  Required scope: **internal:banks:write**
    # @param internal_post_fee_configuration_bank_model [InternalPostFeeConfigurationBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalFeeConfigurationBankModel, Integer, Hash)>] InternalFeeConfigurationBankModel data, response status code and response headers
    def internal_create_fee_configuration_with_http_info(internal_post_fee_configuration_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_create_fee_configuration ...'
      end
      # verify the required parameter 'internal_post_fee_configuration_bank_model' is set
      if @api_client.config.client_side_validation && internal_post_fee_configuration_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'internal_post_fee_configuration_bank_model' when calling InternalBankApi.internal_create_fee_configuration"
      end
      # resource path
      local_var_path = '/api/internal/fee_configurations'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(internal_post_fee_configuration_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalFeeConfigurationBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_create_fee_configuration",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_create_fee_configuration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create FiatAssetConfiguration
    # Creates a fiat asset configuration.  Required scope: **internal:banks:write**
    # @param post_internal_fiat_asset_configuration_bank_model [PostInternalFiatAssetConfigurationBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [InternalFiatAssetConfigurationBankModel]
    def internal_create_fiat_asset_configuration(post_internal_fiat_asset_configuration_bank_model, opts = {})
      data, _status_code, _headers = internal_create_fiat_asset_configuration_with_http_info(post_internal_fiat_asset_configuration_bank_model, opts)
      data
    end

    # Create FiatAssetConfiguration
    # Creates a fiat asset configuration.  Required scope: **internal:banks:write**
    # @param post_internal_fiat_asset_configuration_bank_model [PostInternalFiatAssetConfigurationBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalFiatAssetConfigurationBankModel, Integer, Hash)>] InternalFiatAssetConfigurationBankModel data, response status code and response headers
    def internal_create_fiat_asset_configuration_with_http_info(post_internal_fiat_asset_configuration_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_create_fiat_asset_configuration ...'
      end
      # verify the required parameter 'post_internal_fiat_asset_configuration_bank_model' is set
      if @api_client.config.client_side_validation && post_internal_fiat_asset_configuration_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'post_internal_fiat_asset_configuration_bank_model' when calling InternalBankApi.internal_create_fiat_asset_configuration"
      end
      # resource path
      local_var_path = '/api/internal/fiat_asset_configurations'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(post_internal_fiat_asset_configuration_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalFiatAssetConfigurationBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_create_fiat_asset_configuration",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_create_fiat_asset_configuration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create File
    # Creates a file.  Required scope: **internal:files:execute**
    # @param post_file_bank_model [PostFileBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [PlatformFileBankModel]
    def internal_create_file(post_file_bank_model, opts = {})
      data, _status_code, _headers = internal_create_file_with_http_info(post_file_bank_model, opts)
      data
    end

    # Create File
    # Creates a file.  Required scope: **internal:files:execute**
    # @param post_file_bank_model [PostFileBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PlatformFileBankModel, Integer, Hash)>] PlatformFileBankModel data, response status code and response headers
    def internal_create_file_with_http_info(post_file_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_create_file ...'
      end
      # verify the required parameter 'post_file_bank_model' is set
      if @api_client.config.client_side_validation && post_file_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'post_file_bank_model' when calling InternalBankApi.internal_create_file"
      end
      # resource path
      local_var_path = '/api/internal/files'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(post_file_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'PlatformFileBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_create_file",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_create_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create InternalBankAccount
    # Create an InternalBankAccount.  Required scope: **internal:accounts:execute**
    # @param post_internal_internal_bank_account_bank_model [PostInternalInternalBankAccountBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [InternalInternalBankAccountBankModel]
    def internal_create_internal_bank_account(post_internal_internal_bank_account_bank_model, opts = {})
      data, _status_code, _headers = internal_create_internal_bank_account_with_http_info(post_internal_internal_bank_account_bank_model, opts)
      data
    end

    # Create InternalBankAccount
    # Create an InternalBankAccount.  Required scope: **internal:accounts:execute**
    # @param post_internal_internal_bank_account_bank_model [PostInternalInternalBankAccountBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalInternalBankAccountBankModel, Integer, Hash)>] InternalInternalBankAccountBankModel data, response status code and response headers
    def internal_create_internal_bank_account_with_http_info(post_internal_internal_bank_account_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_create_internal_bank_account ...'
      end
      # verify the required parameter 'post_internal_internal_bank_account_bank_model' is set
      if @api_client.config.client_side_validation && post_internal_internal_bank_account_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'post_internal_internal_bank_account_bank_model' when calling InternalBankApi.internal_create_internal_bank_account"
      end
      # resource path
      local_var_path = '/api/internal/internal_bank_accounts'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(post_internal_internal_bank_account_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalInternalBankAccountBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_create_internal_bank_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_create_internal_bank_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create InternalBankAccountConfiguration
    # Creates an internal bank account configuration.  Required scope: **internal:banks:write**
    # @param post_internal_internal_bank_account_configuration_bank_model [PostInternalInternalBankAccountConfigurationBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [InternalInternalBankAccountConfigurationBankModel]
    def internal_create_internal_bank_account_configuration(post_internal_internal_bank_account_configuration_bank_model, opts = {})
      data, _status_code, _headers = internal_create_internal_bank_account_configuration_with_http_info(post_internal_internal_bank_account_configuration_bank_model, opts)
      data
    end

    # Create InternalBankAccountConfiguration
    # Creates an internal bank account configuration.  Required scope: **internal:banks:write**
    # @param post_internal_internal_bank_account_configuration_bank_model [PostInternalInternalBankAccountConfigurationBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalInternalBankAccountConfigurationBankModel, Integer, Hash)>] InternalInternalBankAccountConfigurationBankModel data, response status code and response headers
    def internal_create_internal_bank_account_configuration_with_http_info(post_internal_internal_bank_account_configuration_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_create_internal_bank_account_configuration ...'
      end
      # verify the required parameter 'post_internal_internal_bank_account_configuration_bank_model' is set
      if @api_client.config.client_side_validation && post_internal_internal_bank_account_configuration_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'post_internal_internal_bank_account_configuration_bank_model' when calling InternalBankApi.internal_create_internal_bank_account_configuration"
      end
      # resource path
      local_var_path = '/api/internal/internal_bank_account_configurations'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(post_internal_internal_bank_account_configuration_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalInternalBankAccountConfigurationBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_create_internal_bank_account_configuration",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_create_internal_bank_account_configuration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create InternalWallet
    # Create an InternalWallet.  Required scope: **internal:accounts:execute**
    # @param post_internal_internal_wallet_bank_model [PostInternalInternalWalletBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [InternalInternalWalletBankModel]
    def internal_create_internal_wallet(post_internal_internal_wallet_bank_model, opts = {})
      data, _status_code, _headers = internal_create_internal_wallet_with_http_info(post_internal_internal_wallet_bank_model, opts)
      data
    end

    # Create InternalWallet
    # Create an InternalWallet.  Required scope: **internal:accounts:execute**
    # @param post_internal_internal_wallet_bank_model [PostInternalInternalWalletBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalInternalWalletBankModel, Integer, Hash)>] InternalInternalWalletBankModel data, response status code and response headers
    def internal_create_internal_wallet_with_http_info(post_internal_internal_wallet_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_create_internal_wallet ...'
      end
      # verify the required parameter 'post_internal_internal_wallet_bank_model' is set
      if @api_client.config.client_side_validation && post_internal_internal_wallet_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'post_internal_internal_wallet_bank_model' when calling InternalBankApi.internal_create_internal_wallet"
      end
      # resource path
      local_var_path = '/api/internal/internal_wallets'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(post_internal_internal_wallet_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalInternalWalletBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_create_internal_wallet",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_create_internal_wallet\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create InternalWalletConfiguration
    # Creates an internal wallet configuration.  Required scope: **internal:banks:write**
    # @param post_internal_internal_wallet_configuration_bank_model [PostInternalInternalWalletConfigurationBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [InternalInternalWalletConfigurationBankModel]
    def internal_create_internal_wallet_configuration(post_internal_internal_wallet_configuration_bank_model, opts = {})
      data, _status_code, _headers = internal_create_internal_wallet_configuration_with_http_info(post_internal_internal_wallet_configuration_bank_model, opts)
      data
    end

    # Create InternalWalletConfiguration
    # Creates an internal wallet configuration.  Required scope: **internal:banks:write**
    # @param post_internal_internal_wallet_configuration_bank_model [PostInternalInternalWalletConfigurationBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalInternalWalletConfigurationBankModel, Integer, Hash)>] InternalInternalWalletConfigurationBankModel data, response status code and response headers
    def internal_create_internal_wallet_configuration_with_http_info(post_internal_internal_wallet_configuration_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_create_internal_wallet_configuration ...'
      end
      # verify the required parameter 'post_internal_internal_wallet_configuration_bank_model' is set
      if @api_client.config.client_side_validation && post_internal_internal_wallet_configuration_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'post_internal_internal_wallet_configuration_bank_model' when calling InternalBankApi.internal_create_internal_wallet_configuration"
      end
      # resource path
      local_var_path = '/api/internal/internal_wallet_configurations'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(post_internal_internal_wallet_configuration_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalInternalWalletConfigurationBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_create_internal_wallet_configuration",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_create_internal_wallet_configuration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create PayoutSymbolConfiguration
    # Creates a payout symbol configuration.  Required scope: **internal:banks:write**
    # @param post_internal_payout_symbol_configuration_bank_model [PostInternalPayoutSymbolConfigurationBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [InternalPayoutSymbolConfigurationBankModel]
    def internal_create_payout_symbol_configuration(post_internal_payout_symbol_configuration_bank_model, opts = {})
      data, _status_code, _headers = internal_create_payout_symbol_configuration_with_http_info(post_internal_payout_symbol_configuration_bank_model, opts)
      data
    end

    # Create PayoutSymbolConfiguration
    # Creates a payout symbol configuration.  Required scope: **internal:banks:write**
    # @param post_internal_payout_symbol_configuration_bank_model [PostInternalPayoutSymbolConfigurationBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalPayoutSymbolConfigurationBankModel, Integer, Hash)>] InternalPayoutSymbolConfigurationBankModel data, response status code and response headers
    def internal_create_payout_symbol_configuration_with_http_info(post_internal_payout_symbol_configuration_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_create_payout_symbol_configuration ...'
      end
      # verify the required parameter 'post_internal_payout_symbol_configuration_bank_model' is set
      if @api_client.config.client_side_validation && post_internal_payout_symbol_configuration_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'post_internal_payout_symbol_configuration_bank_model' when calling InternalBankApi.internal_create_payout_symbol_configuration"
      end
      # resource path
      local_var_path = '/api/internal/payout_symbol_configurations'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(post_internal_payout_symbol_configuration_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalPayoutSymbolConfigurationBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_create_payout_symbol_configuration",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_create_payout_symbol_configuration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create InternalQuote
    # Creates a quote.  Required scope: **internal:quotes:read**
    # @param internal_post_quote_bank_model [InternalPostQuoteBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [InternalQuoteBankModel]
    def internal_create_quote(internal_post_quote_bank_model, opts = {})
      data, _status_code, _headers = internal_create_quote_with_http_info(internal_post_quote_bank_model, opts)
      data
    end

    # Create InternalQuote
    # Creates a quote.  Required scope: **internal:quotes:read**
    # @param internal_post_quote_bank_model [InternalPostQuoteBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalQuoteBankModel, Integer, Hash)>] InternalQuoteBankModel data, response status code and response headers
    def internal_create_quote_with_http_info(internal_post_quote_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_create_quote ...'
      end
      # verify the required parameter 'internal_post_quote_bank_model' is set
      if @api_client.config.client_side_validation && internal_post_quote_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'internal_post_quote_bank_model' when calling InternalBankApi.internal_create_quote"
      end
      # resource path
      local_var_path = '/api/internal/quotes'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(internal_post_quote_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalQuoteBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_create_quote",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_create_quote\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create Reconciliation
    # Creates a Reconciliation.Required scope: **internal:transfers:write**
    # @param post_internal_reconciliation_bank_model [PostInternalReconciliationBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [InternalReconciliationBankModel]
    def internal_create_reconciliation(post_internal_reconciliation_bank_model, opts = {})
      data, _status_code, _headers = internal_create_reconciliation_with_http_info(post_internal_reconciliation_bank_model, opts)
      data
    end

    # Create Reconciliation
    # Creates a Reconciliation.Required scope: **internal:transfers:write**
    # @param post_internal_reconciliation_bank_model [PostInternalReconciliationBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalReconciliationBankModel, Integer, Hash)>] InternalReconciliationBankModel data, response status code and response headers
    def internal_create_reconciliation_with_http_info(post_internal_reconciliation_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_create_reconciliation ...'
      end
      # verify the required parameter 'post_internal_reconciliation_bank_model' is set
      if @api_client.config.client_side_validation && post_internal_reconciliation_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'post_internal_reconciliation_bank_model' when calling InternalBankApi.internal_create_reconciliation"
      end
      # resource path
      local_var_path = '/api/internal/reconciliations'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(post_internal_reconciliation_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalReconciliationBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_create_reconciliation",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_create_reconciliation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create Stage
    # Create an Stage.  Required scope: **internal:plans:write**
    # @param post_internal_stage_bank_model [PostInternalStageBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [InternalStageBankModel]
    def internal_create_stage(post_internal_stage_bank_model, opts = {})
      data, _status_code, _headers = internal_create_stage_with_http_info(post_internal_stage_bank_model, opts)
      data
    end

    # Create Stage
    # Create an Stage.  Required scope: **internal:plans:write**
    # @param post_internal_stage_bank_model [PostInternalStageBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalStageBankModel, Integer, Hash)>] InternalStageBankModel data, response status code and response headers
    def internal_create_stage_with_http_info(post_internal_stage_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_create_stage ...'
      end
      # verify the required parameter 'post_internal_stage_bank_model' is set
      if @api_client.config.client_side_validation && post_internal_stage_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'post_internal_stage_bank_model' when calling InternalBankApi.internal_create_stage"
      end
      # resource path
      local_var_path = '/api/internal/stages'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(post_internal_stage_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalStageBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_create_stage",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_create_stage\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create Internal Trade
    # Creates a trade.  Required scope: **internal:trades:execute**
    # @param post_internal_trade_bank_model [PostInternalTradeBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [InternalTradeBankModel]
    def internal_create_trade(post_internal_trade_bank_model, opts = {})
      data, _status_code, _headers = internal_create_trade_with_http_info(post_internal_trade_bank_model, opts)
      data
    end

    # Create Internal Trade
    # Creates a trade.  Required scope: **internal:trades:execute**
    # @param post_internal_trade_bank_model [PostInternalTradeBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalTradeBankModel, Integer, Hash)>] InternalTradeBankModel data, response status code and response headers
    def internal_create_trade_with_http_info(post_internal_trade_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_create_trade ...'
      end
      # verify the required parameter 'post_internal_trade_bank_model' is set
      if @api_client.config.client_side_validation && post_internal_trade_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'post_internal_trade_bank_model' when calling InternalBankApi.internal_create_trade"
      end
      # resource path
      local_var_path = '/api/internal/trades'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(post_internal_trade_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalTradeBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_create_trade",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_create_trade\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create TradingSymbolConfiguration
    # Creates a trading symbol configuration.  Required scope: **internal:banks:write**
    # @param post_internal_trading_symbol_configuration_bank_model [PostInternalTradingSymbolConfigurationBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [InternalTradingSymbolConfigurationBankModel]
    def internal_create_trading_symbol_configuration(post_internal_trading_symbol_configuration_bank_model, opts = {})
      data, _status_code, _headers = internal_create_trading_symbol_configuration_with_http_info(post_internal_trading_symbol_configuration_bank_model, opts)
      data
    end

    # Create TradingSymbolConfiguration
    # Creates a trading symbol configuration.  Required scope: **internal:banks:write**
    # @param post_internal_trading_symbol_configuration_bank_model [PostInternalTradingSymbolConfigurationBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalTradingSymbolConfigurationBankModel, Integer, Hash)>] InternalTradingSymbolConfigurationBankModel data, response status code and response headers
    def internal_create_trading_symbol_configuration_with_http_info(post_internal_trading_symbol_configuration_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_create_trading_symbol_configuration ...'
      end
      # verify the required parameter 'post_internal_trading_symbol_configuration_bank_model' is set
      if @api_client.config.client_side_validation && post_internal_trading_symbol_configuration_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'post_internal_trading_symbol_configuration_bank_model' when calling InternalBankApi.internal_create_trading_symbol_configuration"
      end
      # resource path
      local_var_path = '/api/internal/trading_symbol_configurations'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(post_internal_trading_symbol_configuration_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalTradingSymbolConfigurationBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_create_trading_symbol_configuration",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_create_trading_symbol_configuration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create TransactionMonitor
    # Creates a TransactionMonitor.Required scope: **internal:transaction_monitors:execute**
    # @param post_internal_transaction_monitor_bank_model [PostInternalTransactionMonitorBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [InternalTransactionMonitorBankModel]
    def internal_create_transaction_monitor(post_internal_transaction_monitor_bank_model, opts = {})
      data, _status_code, _headers = internal_create_transaction_monitor_with_http_info(post_internal_transaction_monitor_bank_model, opts)
      data
    end

    # Create TransactionMonitor
    # Creates a TransactionMonitor.Required scope: **internal:transaction_monitors:execute**
    # @param post_internal_transaction_monitor_bank_model [PostInternalTransactionMonitorBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalTransactionMonitorBankModel, Integer, Hash)>] InternalTransactionMonitorBankModel data, response status code and response headers
    def internal_create_transaction_monitor_with_http_info(post_internal_transaction_monitor_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_create_transaction_monitor ...'
      end
      # verify the required parameter 'post_internal_transaction_monitor_bank_model' is set
      if @api_client.config.client_side_validation && post_internal_transaction_monitor_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'post_internal_transaction_monitor_bank_model' when calling InternalBankApi.internal_create_transaction_monitor"
      end
      # resource path
      local_var_path = '/api/internal/transaction_monitors'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(post_internal_transaction_monitor_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalTransactionMonitorBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_create_transaction_monitor",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_create_transaction_monitor\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create Transfer
    # Create an Transfer.  Required scope: **internal:transfers:execute**
    # @param post_internal_transfer_bank_model [PostInternalTransferBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [InternalTransferBankModel]
    def internal_create_transfer(post_internal_transfer_bank_model, opts = {})
      data, _status_code, _headers = internal_create_transfer_with_http_info(post_internal_transfer_bank_model, opts)
      data
    end

    # Create Transfer
    # Create an Transfer.  Required scope: **internal:transfers:execute**
    # @param post_internal_transfer_bank_model [PostInternalTransferBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalTransferBankModel, Integer, Hash)>] InternalTransferBankModel data, response status code and response headers
    def internal_create_transfer_with_http_info(post_internal_transfer_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_create_transfer ...'
      end
      # verify the required parameter 'post_internal_transfer_bank_model' is set
      if @api_client.config.client_side_validation && post_internal_transfer_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'post_internal_transfer_bank_model' when calling InternalBankApi.internal_create_transfer"
      end
      # resource path
      local_var_path = '/api/internal/transfers'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(post_internal_transfer_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalTransferBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_create_transfer",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_create_transfer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create TransferRailConfiguration
    # Creates a transfer rail configuration.  Required scope: **internal:banks:write**
    # @param post_internal_transfer_rail_configuration_bank_model [PostInternalTransferRailConfigurationBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [InternalTransferRailConfigurationBankModel]
    def internal_create_transfer_rail_configuration(post_internal_transfer_rail_configuration_bank_model, opts = {})
      data, _status_code, _headers = internal_create_transfer_rail_configuration_with_http_info(post_internal_transfer_rail_configuration_bank_model, opts)
      data
    end

    # Create TransferRailConfiguration
    # Creates a transfer rail configuration.  Required scope: **internal:banks:write**
    # @param post_internal_transfer_rail_configuration_bank_model [PostInternalTransferRailConfigurationBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalTransferRailConfigurationBankModel, Integer, Hash)>] InternalTransferRailConfigurationBankModel data, response status code and response headers
    def internal_create_transfer_rail_configuration_with_http_info(post_internal_transfer_rail_configuration_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_create_transfer_rail_configuration ...'
      end
      # verify the required parameter 'post_internal_transfer_rail_configuration_bank_model' is set
      if @api_client.config.client_side_validation && post_internal_transfer_rail_configuration_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'post_internal_transfer_rail_configuration_bank_model' when calling InternalBankApi.internal_create_transfer_rail_configuration"
      end
      # resource path
      local_var_path = '/api/internal/transfer_rail_configurations'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(post_internal_transfer_rail_configuration_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalTransferRailConfigurationBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_create_transfer_rail_configuration",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_create_transfer_rail_configuration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create TransferScreening
    # Create an TransferScreening.  Required scope: **internal:accounts:execute**
    # @param post_internal_transfer_screening_bank_model [PostInternalTransferScreeningBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [InternalTransferScreeningBankModel]
    def internal_create_transfer_screening(post_internal_transfer_screening_bank_model, opts = {})
      data, _status_code, _headers = internal_create_transfer_screening_with_http_info(post_internal_transfer_screening_bank_model, opts)
      data
    end

    # Create TransferScreening
    # Create an TransferScreening.  Required scope: **internal:accounts:execute**
    # @param post_internal_transfer_screening_bank_model [PostInternalTransferScreeningBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalTransferScreeningBankModel, Integer, Hash)>] InternalTransferScreeningBankModel data, response status code and response headers
    def internal_create_transfer_screening_with_http_info(post_internal_transfer_screening_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_create_transfer_screening ...'
      end
      # verify the required parameter 'post_internal_transfer_screening_bank_model' is set
      if @api_client.config.client_side_validation && post_internal_transfer_screening_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'post_internal_transfer_screening_bank_model' when calling InternalBankApi.internal_create_transfer_screening"
      end
      # resource path
      local_var_path = '/api/internal/transfer_screenings'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(post_internal_transfer_screening_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalTransferScreeningBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_create_transfer_screening",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_create_transfer_screening\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create WalletService
    # Create an WalletService.  Required scope: **internal:wallet_services:execute**
    # @param post_internal_wallet_service_bank_model [PostInternalWalletServiceBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [InternalWalletServiceBankModel]
    def internal_create_wallet_service(post_internal_wallet_service_bank_model, opts = {})
      data, _status_code, _headers = internal_create_wallet_service_with_http_info(post_internal_wallet_service_bank_model, opts)
      data
    end

    # Create WalletService
    # Create an WalletService.  Required scope: **internal:wallet_services:execute**
    # @param post_internal_wallet_service_bank_model [PostInternalWalletServiceBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalWalletServiceBankModel, Integer, Hash)>] InternalWalletServiceBankModel data, response status code and response headers
    def internal_create_wallet_service_with_http_info(post_internal_wallet_service_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_create_wallet_service ...'
      end
      # verify the required parameter 'post_internal_wallet_service_bank_model' is set
      if @api_client.config.client_side_validation && post_internal_wallet_service_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'post_internal_wallet_service_bank_model' when calling InternalBankApi.internal_create_wallet_service"
      end
      # resource path
      local_var_path = '/api/internal/wallet_services'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(post_internal_wallet_service_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalWalletServiceBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_create_wallet_service",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_create_wallet_service\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create Crypto Funding Deposit Transfer
    # Create a Crypto Funding Deposit Transfer.  Required scope: **internal:transfers:execute**
    # @param post_internal_crypto_funding_deposit_transfer_bank_model [PostInternalCryptoFundingDepositTransferBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [InternalCryptoFundingDepositTransferBankModel]
    def internal_crypto_funding_deposit_transfer(post_internal_crypto_funding_deposit_transfer_bank_model, opts = {})
      data, _status_code, _headers = internal_crypto_funding_deposit_transfer_with_http_info(post_internal_crypto_funding_deposit_transfer_bank_model, opts)
      data
    end

    # Create Crypto Funding Deposit Transfer
    # Create a Crypto Funding Deposit Transfer.  Required scope: **internal:transfers:execute**
    # @param post_internal_crypto_funding_deposit_transfer_bank_model [PostInternalCryptoFundingDepositTransferBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalCryptoFundingDepositTransferBankModel, Integer, Hash)>] InternalCryptoFundingDepositTransferBankModel data, response status code and response headers
    def internal_crypto_funding_deposit_transfer_with_http_info(post_internal_crypto_funding_deposit_transfer_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_crypto_funding_deposit_transfer ...'
      end
      # verify the required parameter 'post_internal_crypto_funding_deposit_transfer_bank_model' is set
      if @api_client.config.client_side_validation && post_internal_crypto_funding_deposit_transfer_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'post_internal_crypto_funding_deposit_transfer_bank_model' when calling InternalBankApi.internal_crypto_funding_deposit_transfer"
      end
      # resource path
      local_var_path = '/api/internal/crypto_funding_deposit_transfers'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(post_internal_crypto_funding_deposit_transfer_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalCryptoFundingDepositTransferBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_crypto_funding_deposit_transfer",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_crypto_funding_deposit_transfer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete ActivityLimitConfiguration
    # Deletes an activity limit configuration.  Required scope: **internal:banks:write**
    # @param guid [String] Identifier for the activity limit configuration.
    # @param [Hash] opts the optional parameters
    # @return [InternalActivityLimitConfigurationBankModel]
    def internal_delete_activity_limit_configuration(guid, opts = {})
      data, _status_code, _headers = internal_delete_activity_limit_configuration_with_http_info(guid, opts)
      data
    end

    # Delete ActivityLimitConfiguration
    # Deletes an activity limit configuration.  Required scope: **internal:banks:write**
    # @param guid [String] Identifier for the activity limit configuration.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalActivityLimitConfigurationBankModel, Integer, Hash)>] InternalActivityLimitConfigurationBankModel data, response status code and response headers
    def internal_delete_activity_limit_configuration_with_http_info(guid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_delete_activity_limit_configuration ...'
      end
      # verify the required parameter 'guid' is set
      if @api_client.config.client_side_validation && guid.nil?
        fail ArgumentError, "Missing the required parameter 'guid' when calling InternalBankApi.internal_delete_activity_limit_configuration"
      end
      # resource path
      local_var_path = '/api/internal/activity_limit_configurations/{guid}'.sub('{' + 'guid' + '}', CGI.escape(guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InternalActivityLimitConfigurationBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_delete_activity_limit_configuration",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_delete_activity_limit_configuration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete External Bank Account
    # Deletes an external bank account.  Required scope: **internal:accounts:execute**
    # @param external_bank_account_guid [String] Identifier for the external bank account.
    # @param [Hash] opts the optional parameters
    # @return [InternalExternalBankAccountBankModel]
    def internal_delete_external_bank_account(external_bank_account_guid, opts = {})
      data, _status_code, _headers = internal_delete_external_bank_account_with_http_info(external_bank_account_guid, opts)
      data
    end

    # Delete External Bank Account
    # Deletes an external bank account.  Required scope: **internal:accounts:execute**
    # @param external_bank_account_guid [String] Identifier for the external bank account.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalExternalBankAccountBankModel, Integer, Hash)>] InternalExternalBankAccountBankModel data, response status code and response headers
    def internal_delete_external_bank_account_with_http_info(external_bank_account_guid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_delete_external_bank_account ...'
      end
      # verify the required parameter 'external_bank_account_guid' is set
      if @api_client.config.client_side_validation && external_bank_account_guid.nil?
        fail ArgumentError, "Missing the required parameter 'external_bank_account_guid' when calling InternalBankApi.internal_delete_external_bank_account"
      end
      # resource path
      local_var_path = '/api/internal/external_bank_accounts/{external_bank_account_guid}'.sub('{' + 'external_bank_account_guid' + '}', CGI.escape(external_bank_account_guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InternalExternalBankAccountBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_delete_external_bank_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_delete_external_bank_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create Funding Deposit Transfer
    # Create a Funding Deposit Transfer.  Required scope: **internal:transfers:execute**
    # @param post_internal_funding_deposit_transfer_bank_model [PostInternalFundingDepositTransferBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [InternalFundingDepositTransferBankModel]
    def internal_funding_deposit_transfer(post_internal_funding_deposit_transfer_bank_model, opts = {})
      data, _status_code, _headers = internal_funding_deposit_transfer_with_http_info(post_internal_funding_deposit_transfer_bank_model, opts)
      data
    end

    # Create Funding Deposit Transfer
    # Create a Funding Deposit Transfer.  Required scope: **internal:transfers:execute**
    # @param post_internal_funding_deposit_transfer_bank_model [PostInternalFundingDepositTransferBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalFundingDepositTransferBankModel, Integer, Hash)>] InternalFundingDepositTransferBankModel data, response status code and response headers
    def internal_funding_deposit_transfer_with_http_info(post_internal_funding_deposit_transfer_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_funding_deposit_transfer ...'
      end
      # verify the required parameter 'post_internal_funding_deposit_transfer_bank_model' is set
      if @api_client.config.client_side_validation && post_internal_funding_deposit_transfer_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'post_internal_funding_deposit_transfer_bank_model' when calling InternalBankApi.internal_funding_deposit_transfer"
      end
      # resource path
      local_var_path = '/api/internal/funding_deposit_transfers'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(post_internal_funding_deposit_transfer_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalFundingDepositTransferBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_funding_deposit_transfer",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_funding_deposit_transfer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Bank
    # Retrieves a bank.  Required scope: **internal:banks:read**
    # @param bank_guid [String] Identifier for the bank.
    # @param [Hash] opts the optional parameters
    # @return [InternalBankBankModel]
    def internal_get_bank(bank_guid, opts = {})
      data, _status_code, _headers = internal_get_bank_with_http_info(bank_guid, opts)
      data
    end

    # Get Bank
    # Retrieves a bank.  Required scope: **internal:banks:read**
    # @param bank_guid [String] Identifier for the bank.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalBankBankModel, Integer, Hash)>] InternalBankBankModel data, response status code and response headers
    def internal_get_bank_with_http_info(bank_guid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_get_bank ...'
      end
      # verify the required parameter 'bank_guid' is set
      if @api_client.config.client_side_validation && bank_guid.nil?
        fail ArgumentError, "Missing the required parameter 'bank_guid' when calling InternalBankApi.internal_get_bank"
      end
      # resource path
      local_var_path = '/api/internal/banks/{bank_guid}'.sub('{' + 'bank_guid' + '}', CGI.escape(bank_guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InternalBankBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_get_bank",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_get_bank\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get BankAccountService
    # Retrieves a bank_account service.  Required scope: **internal:bank_account_services:read**
    # @param bank_account_service_guid [String] Identifier for the bank_account service.
    # @param [Hash] opts the optional parameters
    # @return [InternalBankAccountServiceBankModel]
    def internal_get_bank_account_service(bank_account_service_guid, opts = {})
      data, _status_code, _headers = internal_get_bank_account_service_with_http_info(bank_account_service_guid, opts)
      data
    end

    # Get BankAccountService
    # Retrieves a bank_account service.  Required scope: **internal:bank_account_services:read**
    # @param bank_account_service_guid [String] Identifier for the bank_account service.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalBankAccountServiceBankModel, Integer, Hash)>] InternalBankAccountServiceBankModel data, response status code and response headers
    def internal_get_bank_account_service_with_http_info(bank_account_service_guid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_get_bank_account_service ...'
      end
      # verify the required parameter 'bank_account_service_guid' is set
      if @api_client.config.client_side_validation && bank_account_service_guid.nil?
        fail ArgumentError, "Missing the required parameter 'bank_account_service_guid' when calling InternalBankApi.internal_get_bank_account_service"
      end
      # resource path
      local_var_path = '/api/internal/bank_account_services/{bank_account_service_guid}'.sub('{' + 'bank_account_service_guid' + '}', CGI.escape(bank_account_service_guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InternalBankAccountServiceBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_get_bank_account_service",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_get_bank_account_service\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Customer
    # Retrieves a customer.  Required scope: **internal:customers:read**
    # @param customer_guid [String] Identifier for the customer.
    # @param [Hash] opts the optional parameters
    # @return [CustomerBankModel]
    def internal_get_customer(customer_guid, opts = {})
      data, _status_code, _headers = internal_get_customer_with_http_info(customer_guid, opts)
      data
    end

    # Get Customer
    # Retrieves a customer.  Required scope: **internal:customers:read**
    # @param customer_guid [String] Identifier for the customer.
    # @param [Hash] opts the optional parameters
    # @return [Array<(CustomerBankModel, Integer, Hash)>] CustomerBankModel data, response status code and response headers
    def internal_get_customer_with_http_info(customer_guid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_get_customer ...'
      end
      # verify the required parameter 'customer_guid' is set
      if @api_client.config.client_side_validation && customer_guid.nil?
        fail ArgumentError, "Missing the required parameter 'customer_guid' when calling InternalBankApi.internal_get_customer"
      end
      # resource path
      local_var_path = '/api/internal/customers/{customer_guid}'.sub('{' + 'customer_guid' + '}', CGI.escape(customer_guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'CustomerBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_get_customer",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_get_customer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get CybridAccount
    # Get an CybridAccount.  Required scope: **internal:cybrid_accounts:read**
    # @param account_guid [String] Identifier for the Cybrid account.
    # @param [Hash] opts the optional parameters
    # @return [InternalCybridAccountBankModel]
    def internal_get_cybrid_account(account_guid, opts = {})
      data, _status_code, _headers = internal_get_cybrid_account_with_http_info(account_guid, opts)
      data
    end

    # Get CybridAccount
    # Get an CybridAccount.  Required scope: **internal:cybrid_accounts:read**
    # @param account_guid [String] Identifier for the Cybrid account.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalCybridAccountBankModel, Integer, Hash)>] InternalCybridAccountBankModel data, response status code and response headers
    def internal_get_cybrid_account_with_http_info(account_guid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_get_cybrid_account ...'
      end
      # verify the required parameter 'account_guid' is set
      if @api_client.config.client_side_validation && account_guid.nil?
        fail ArgumentError, "Missing the required parameter 'account_guid' when calling InternalBankApi.internal_get_cybrid_account"
      end
      # resource path
      local_var_path = '/api/internal/cybrid_accounts/{account_guid}'.sub('{' + 'account_guid' + '}', CGI.escape(account_guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InternalCybridAccountBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_get_cybrid_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_get_cybrid_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Exchange
    # Get an Exchange.  Required scope: **internal:exchanges:read**
    # @param exchange_guid [String] Identifier for the exchange.
    # @param [Hash] opts the optional parameters
    # @return [InternalExchangeBankModel]
    def internal_get_exchange(exchange_guid, opts = {})
      data, _status_code, _headers = internal_get_exchange_with_http_info(exchange_guid, opts)
      data
    end

    # Get Exchange
    # Get an Exchange.  Required scope: **internal:exchanges:read**
    # @param exchange_guid [String] Identifier for the exchange.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalExchangeBankModel, Integer, Hash)>] InternalExchangeBankModel data, response status code and response headers
    def internal_get_exchange_with_http_info(exchange_guid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_get_exchange ...'
      end
      # verify the required parameter 'exchange_guid' is set
      if @api_client.config.client_side_validation && exchange_guid.nil?
        fail ArgumentError, "Missing the required parameter 'exchange_guid' when calling InternalBankApi.internal_get_exchange"
      end
      # resource path
      local_var_path = '/api/internal/exchanges/{exchange_guid}'.sub('{' + 'exchange_guid' + '}', CGI.escape(exchange_guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InternalExchangeBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_get_exchange",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_get_exchange\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get ExchangeAccount
    # Get an ExchangeAccount.  Required scope: **internal:exchange_accounts:read**
    # @param account_guid [String] Identifier for the bank.
    # @param [Hash] opts the optional parameters
    # @return [InternalExchangeAccountBankModel]
    def internal_get_exchange_account(account_guid, opts = {})
      data, _status_code, _headers = internal_get_exchange_account_with_http_info(account_guid, opts)
      data
    end

    # Get ExchangeAccount
    # Get an ExchangeAccount.  Required scope: **internal:exchange_accounts:read**
    # @param account_guid [String] Identifier for the bank.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalExchangeAccountBankModel, Integer, Hash)>] InternalExchangeAccountBankModel data, response status code and response headers
    def internal_get_exchange_account_with_http_info(account_guid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_get_exchange_account ...'
      end
      # verify the required parameter 'account_guid' is set
      if @api_client.config.client_side_validation && account_guid.nil?
        fail ArgumentError, "Missing the required parameter 'account_guid' when calling InternalBankApi.internal_get_exchange_account"
      end
      # resource path
      local_var_path = '/api/internal/exchange_accounts/{account_guid}'.sub('{' + 'account_guid' + '}', CGI.escape(account_guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InternalExchangeAccountBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_get_exchange_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_get_exchange_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Exchange Settlement
    # Get an Exchange Settlement.  Required scope: **internal:exchange_settlements:read**
    # @param guid [String] Identifier for the exchange settlement.
    # @param [Hash] opts the optional parameters
    # @return [InternalExchangeSettlementBankModel]
    def internal_get_exchange_settlement(guid, opts = {})
      data, _status_code, _headers = internal_get_exchange_settlement_with_http_info(guid, opts)
      data
    end

    # Get Exchange Settlement
    # Get an Exchange Settlement.  Required scope: **internal:exchange_settlements:read**
    # @param guid [String] Identifier for the exchange settlement.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalExchangeSettlementBankModel, Integer, Hash)>] InternalExchangeSettlementBankModel data, response status code and response headers
    def internal_get_exchange_settlement_with_http_info(guid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_get_exchange_settlement ...'
      end
      # verify the required parameter 'guid' is set
      if @api_client.config.client_side_validation && guid.nil?
        fail ArgumentError, "Missing the required parameter 'guid' when calling InternalBankApi.internal_get_exchange_settlement"
      end
      # resource path
      local_var_path = '/api/internal/exchange_settlements/{guid}'.sub('{' + 'guid' + '}', CGI.escape(guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InternalExchangeSettlementBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_get_exchange_settlement",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_get_exchange_settlement\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Exchange Settlement Obligation
    # Get an Exchange Settlement Obligation.  Required scope: **internal:exchange_settlements:read**
    # @param guid [String] Identifier for the exchange settlement obligation.
    # @param [Hash] opts the optional parameters
    # @return [InternalExchangeSettlementObligationBankModel]
    def internal_get_exchange_settlement_obligation(guid, opts = {})
      data, _status_code, _headers = internal_get_exchange_settlement_obligation_with_http_info(guid, opts)
      data
    end

    # Get Exchange Settlement Obligation
    # Get an Exchange Settlement Obligation.  Required scope: **internal:exchange_settlements:read**
    # @param guid [String] Identifier for the exchange settlement obligation.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalExchangeSettlementObligationBankModel, Integer, Hash)>] InternalExchangeSettlementObligationBankModel data, response status code and response headers
    def internal_get_exchange_settlement_obligation_with_http_info(guid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_get_exchange_settlement_obligation ...'
      end
      # verify the required parameter 'guid' is set
      if @api_client.config.client_side_validation && guid.nil?
        fail ArgumentError, "Missing the required parameter 'guid' when calling InternalBankApi.internal_get_exchange_settlement_obligation"
      end
      # resource path
      local_var_path = '/api/internal/exchange_settlement_obligations/{guid}'.sub('{' + 'guid' + '}', CGI.escape(guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InternalExchangeSettlementObligationBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_get_exchange_settlement_obligation",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_get_exchange_settlement_obligation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Exchange Settlement Payment Order
    # Get an Exchange Settlement Payment Order.  Required scope: **internal:exchange_settlements:read**
    # @param guid [String] Identifier for the exchange settlement payment order.
    # @param [Hash] opts the optional parameters
    # @return [InternalExchangeSettlementPaymentOrderBankModel]
    def internal_get_exchange_settlement_payment_order(guid, opts = {})
      data, _status_code, _headers = internal_get_exchange_settlement_payment_order_with_http_info(guid, opts)
      data
    end

    # Get Exchange Settlement Payment Order
    # Get an Exchange Settlement Payment Order.  Required scope: **internal:exchange_settlements:read**
    # @param guid [String] Identifier for the exchange settlement payment order.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalExchangeSettlementPaymentOrderBankModel, Integer, Hash)>] InternalExchangeSettlementPaymentOrderBankModel data, response status code and response headers
    def internal_get_exchange_settlement_payment_order_with_http_info(guid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_get_exchange_settlement_payment_order ...'
      end
      # verify the required parameter 'guid' is set
      if @api_client.config.client_side_validation && guid.nil?
        fail ArgumentError, "Missing the required parameter 'guid' when calling InternalBankApi.internal_get_exchange_settlement_payment_order"
      end
      # resource path
      local_var_path = '/api/internal/exchange_settlement_payment_orders/{guid}'.sub('{' + 'guid' + '}', CGI.escape(guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InternalExchangeSettlementPaymentOrderBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_get_exchange_settlement_payment_order",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_get_exchange_settlement_payment_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Execution
    # Retrieves a execution.  Required scope: **internal:executions:read**
    # @param execution_guid [String] Identifier for the execution.
    # @param [Hash] opts the optional parameters
    # @return [InternalExecutionBankModel]
    def internal_get_execution(execution_guid, opts = {})
      data, _status_code, _headers = internal_get_execution_with_http_info(execution_guid, opts)
      data
    end

    # Get Execution
    # Retrieves a execution.  Required scope: **internal:executions:read**
    # @param execution_guid [String] Identifier for the execution.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalExecutionBankModel, Integer, Hash)>] InternalExecutionBankModel data, response status code and response headers
    def internal_get_execution_with_http_info(execution_guid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_get_execution ...'
      end
      # verify the required parameter 'execution_guid' is set
      if @api_client.config.client_side_validation && execution_guid.nil?
        fail ArgumentError, "Missing the required parameter 'execution_guid' when calling InternalBankApi.internal_get_execution"
      end
      # resource path
      local_var_path = '/api/internal/executions/{execution_guid}'.sub('{' + 'execution_guid' + '}', CGI.escape(execution_guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InternalExecutionBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_get_execution",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_get_execution\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Expected Payment
    # Get an Expected Payment.  Required scope: **internal:exchange_settlements:read**
    # @param guid [String] Identifier for the expected payment.
    # @param [Hash] opts the optional parameters
    # @return [InternalExpectedPaymentBankModel]
    def internal_get_expected_payment(guid, opts = {})
      data, _status_code, _headers = internal_get_expected_payment_with_http_info(guid, opts)
      data
    end

    # Get Expected Payment
    # Get an Expected Payment.  Required scope: **internal:exchange_settlements:read**
    # @param guid [String] Identifier for the expected payment.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalExpectedPaymentBankModel, Integer, Hash)>] InternalExpectedPaymentBankModel data, response status code and response headers
    def internal_get_expected_payment_with_http_info(guid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_get_expected_payment ...'
      end
      # verify the required parameter 'guid' is set
      if @api_client.config.client_side_validation && guid.nil?
        fail ArgumentError, "Missing the required parameter 'guid' when calling InternalBankApi.internal_get_expected_payment"
      end
      # resource path
      local_var_path = '/api/internal/expected_payments/{guid}'.sub('{' + 'guid' + '}', CGI.escape(guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InternalExpectedPaymentBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_get_expected_payment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_get_expected_payment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get ExternalBankAccount
    # Retrieves an external bank account.  Required scope: **internal:accounts:read**
    # @param external_bank_account_guid [String] Identifier for the external bank account.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :force_balance_refresh Force the balance on the account to be updated.
    # @option opts [Boolean] :include_balances Include account balances in the response.
    # @option opts [Boolean] :include_pii Include account holder&#39;s PII in the response.
    # @return [InternalExternalBankAccountBankModel]
    def internal_get_external_bank_account(external_bank_account_guid, opts = {})
      data, _status_code, _headers = internal_get_external_bank_account_with_http_info(external_bank_account_guid, opts)
      data
    end

    # Get ExternalBankAccount
    # Retrieves an external bank account.  Required scope: **internal:accounts:read**
    # @param external_bank_account_guid [String] Identifier for the external bank account.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :force_balance_refresh Force the balance on the account to be updated.
    # @option opts [Boolean] :include_balances Include account balances in the response.
    # @option opts [Boolean] :include_pii Include account holder&#39;s PII in the response.
    # @return [Array<(InternalExternalBankAccountBankModel, Integer, Hash)>] InternalExternalBankAccountBankModel data, response status code and response headers
    def internal_get_external_bank_account_with_http_info(external_bank_account_guid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_get_external_bank_account ...'
      end
      # verify the required parameter 'external_bank_account_guid' is set
      if @api_client.config.client_side_validation && external_bank_account_guid.nil?
        fail ArgumentError, "Missing the required parameter 'external_bank_account_guid' when calling InternalBankApi.internal_get_external_bank_account"
      end
      # resource path
      local_var_path = '/api/internal/external_bank_accounts/{external_bank_account_guid}'.sub('{' + 'external_bank_account_guid' + '}', CGI.escape(external_bank_account_guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'force_balance_refresh'] = opts[:'force_balance_refresh'] if !opts[:'force_balance_refresh'].nil?
      query_params[:'include_balances'] = opts[:'include_balances'] if !opts[:'include_balances'].nil?
      query_params[:'include_pii'] = opts[:'include_pii'] if !opts[:'include_pii'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InternalExternalBankAccountBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_get_external_bank_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_get_external_bank_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get ExternalWallet
    # Retrieves an internal wallet.  Required scope: **internal:accounts:read**
    # @param external_wallet_guid [String] Identifier for the internal wallet.
    # @param [Hash] opts the optional parameters
    # @return [InternalExternalWalletBankModel]
    def internal_get_external_wallet(external_wallet_guid, opts = {})
      data, _status_code, _headers = internal_get_external_wallet_with_http_info(external_wallet_guid, opts)
      data
    end

    # Get ExternalWallet
    # Retrieves an internal wallet.  Required scope: **internal:accounts:read**
    # @param external_wallet_guid [String] Identifier for the internal wallet.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalExternalWalletBankModel, Integer, Hash)>] InternalExternalWalletBankModel data, response status code and response headers
    def internal_get_external_wallet_with_http_info(external_wallet_guid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_get_external_wallet ...'
      end
      # verify the required parameter 'external_wallet_guid' is set
      if @api_client.config.client_side_validation && external_wallet_guid.nil?
        fail ArgumentError, "Missing the required parameter 'external_wallet_guid' when calling InternalBankApi.internal_get_external_wallet"
      end
      # resource path
      local_var_path = '/api/internal/external_wallets/{external_wallet_guid}'.sub('{' + 'external_wallet_guid' + '}', CGI.escape(external_wallet_guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InternalExternalWalletBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_get_external_wallet",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_get_external_wallet\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get ExternalWalletScreening
    # Retrieves an external wallet screening.  Required scope: **internal:external_wallet_screenings:read**
    # @param external_wallet_screening_guid [String] Identifier for the external wallet screening.
    # @param [Hash] opts the optional parameters
    # @return [InternalExternalWalletScreeningBankModel]
    def internal_get_external_wallet_screening(external_wallet_screening_guid, opts = {})
      data, _status_code, _headers = internal_get_external_wallet_screening_with_http_info(external_wallet_screening_guid, opts)
      data
    end

    # Get ExternalWalletScreening
    # Retrieves an external wallet screening.  Required scope: **internal:external_wallet_screenings:read**
    # @param external_wallet_screening_guid [String] Identifier for the external wallet screening.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalExternalWalletScreeningBankModel, Integer, Hash)>] InternalExternalWalletScreeningBankModel data, response status code and response headers
    def internal_get_external_wallet_screening_with_http_info(external_wallet_screening_guid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_get_external_wallet_screening ...'
      end
      # verify the required parameter 'external_wallet_screening_guid' is set
      if @api_client.config.client_side_validation && external_wallet_screening_guid.nil?
        fail ArgumentError, "Missing the required parameter 'external_wallet_screening_guid' when calling InternalBankApi.internal_get_external_wallet_screening"
      end
      # resource path
      local_var_path = '/api/internal/external_wallet_screenings/{external_wallet_screening_guid}'.sub('{' + 'external_wallet_screening_guid' + '}', CGI.escape(external_wallet_screening_guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InternalExternalWalletScreeningBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_get_external_wallet_screening",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_get_external_wallet_screening\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get File
    # Retrieves an file.  Required scope: **internal:files:read**
    # @param file_guid [String] Identifier for the file.
    # @param [Hash] opts the optional parameters
    # @return [PlatformFileBankModel]
    def internal_get_file(file_guid, opts = {})
      data, _status_code, _headers = internal_get_file_with_http_info(file_guid, opts)
      data
    end

    # Get File
    # Retrieves an file.  Required scope: **internal:files:read**
    # @param file_guid [String] Identifier for the file.
    # @param [Hash] opts the optional parameters
    # @return [Array<(PlatformFileBankModel, Integer, Hash)>] PlatformFileBankModel data, response status code and response headers
    def internal_get_file_with_http_info(file_guid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_get_file ...'
      end
      # verify the required parameter 'file_guid' is set
      if @api_client.config.client_side_validation && file_guid.nil?
        fail ArgumentError, "Missing the required parameter 'file_guid' when calling InternalBankApi.internal_get_file"
      end
      # resource path
      local_var_path = '/api/internal/files/{file_guid}'.sub('{' + 'file_guid' + '}', CGI.escape(file_guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'PlatformFileBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_get_file",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_get_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get InternalBankAccount
    # Retrieves an internal bank account.  Required scope: **internal:accounts:read**
    # @param internal_bank_account_guid [String] Identifier for the internal bank account.
    # @param [Hash] opts the optional parameters
    # @return [InternalInternalBankAccountBankModel]
    def internal_get_internal_bank_account(internal_bank_account_guid, opts = {})
      data, _status_code, _headers = internal_get_internal_bank_account_with_http_info(internal_bank_account_guid, opts)
      data
    end

    # Get InternalBankAccount
    # Retrieves an internal bank account.  Required scope: **internal:accounts:read**
    # @param internal_bank_account_guid [String] Identifier for the internal bank account.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalInternalBankAccountBankModel, Integer, Hash)>] InternalInternalBankAccountBankModel data, response status code and response headers
    def internal_get_internal_bank_account_with_http_info(internal_bank_account_guid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_get_internal_bank_account ...'
      end
      # verify the required parameter 'internal_bank_account_guid' is set
      if @api_client.config.client_side_validation && internal_bank_account_guid.nil?
        fail ArgumentError, "Missing the required parameter 'internal_bank_account_guid' when calling InternalBankApi.internal_get_internal_bank_account"
      end
      # resource path
      local_var_path = '/api/internal/internal_bank_accounts/{internal_bank_account_guid}'.sub('{' + 'internal_bank_account_guid' + '}', CGI.escape(internal_bank_account_guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InternalInternalBankAccountBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_get_internal_bank_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_get_internal_bank_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get InternalWallet
    # Retrieves an internal wallet.  Required scope: **internal:accounts:read**
    # @param internal_wallet_guid [String] Identifier for the internal wallet.
    # @param [Hash] opts the optional parameters
    # @return [InternalInternalWalletBankModel]
    def internal_get_internal_wallet(internal_wallet_guid, opts = {})
      data, _status_code, _headers = internal_get_internal_wallet_with_http_info(internal_wallet_guid, opts)
      data
    end

    # Get InternalWallet
    # Retrieves an internal wallet.  Required scope: **internal:accounts:read**
    # @param internal_wallet_guid [String] Identifier for the internal wallet.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalInternalWalletBankModel, Integer, Hash)>] InternalInternalWalletBankModel data, response status code and response headers
    def internal_get_internal_wallet_with_http_info(internal_wallet_guid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_get_internal_wallet ...'
      end
      # verify the required parameter 'internal_wallet_guid' is set
      if @api_client.config.client_side_validation && internal_wallet_guid.nil?
        fail ArgumentError, "Missing the required parameter 'internal_wallet_guid' when calling InternalBankApi.internal_get_internal_wallet"
      end
      # resource path
      local_var_path = '/api/internal/internal_wallets/{internal_wallet_guid}'.sub('{' + 'internal_wallet_guid' + '}', CGI.escape(internal_wallet_guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InternalInternalWalletBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_get_internal_wallet",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_get_internal_wallet\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Invoice
    # Retrieves an invoice.  Required scope: **internal:invoices:read**
    # @param invoice_guid [String] Identifier for the invoice.
    # @param [Hash] opts the optional parameters
    # @return [InternalInvoiceBankModel]
    def internal_get_invoice(invoice_guid, opts = {})
      data, _status_code, _headers = internal_get_invoice_with_http_info(invoice_guid, opts)
      data
    end

    # Get Invoice
    # Retrieves an invoice.  Required scope: **internal:invoices:read**
    # @param invoice_guid [String] Identifier for the invoice.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalInvoiceBankModel, Integer, Hash)>] InternalInvoiceBankModel data, response status code and response headers
    def internal_get_invoice_with_http_info(invoice_guid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_get_invoice ...'
      end
      # verify the required parameter 'invoice_guid' is set
      if @api_client.config.client_side_validation && invoice_guid.nil?
        fail ArgumentError, "Missing the required parameter 'invoice_guid' when calling InternalBankApi.internal_get_invoice"
      end
      # resource path
      local_var_path = '/api/internal/invoices/{invoice_guid}'.sub('{' + 'invoice_guid' + '}', CGI.escape(invoice_guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InternalInvoiceBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_get_invoice",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_get_invoice\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Plan
    # Retrieves a plan.  Required scope: **internal:plans:read**
    # @param plan_guid [String] Identifier for the plan.
    # @param [Hash] opts the optional parameters
    # @return [InternalPlanBankModel]
    def internal_get_plan(plan_guid, opts = {})
      data, _status_code, _headers = internal_get_plan_with_http_info(plan_guid, opts)
      data
    end

    # Get Plan
    # Retrieves a plan.  Required scope: **internal:plans:read**
    # @param plan_guid [String] Identifier for the plan.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalPlanBankModel, Integer, Hash)>] InternalPlanBankModel data, response status code and response headers
    def internal_get_plan_with_http_info(plan_guid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_get_plan ...'
      end
      # verify the required parameter 'plan_guid' is set
      if @api_client.config.client_side_validation && plan_guid.nil?
        fail ArgumentError, "Missing the required parameter 'plan_guid' when calling InternalBankApi.internal_get_plan"
      end
      # resource path
      local_var_path = '/api/internal/plans/{plan_guid}'.sub('{' + 'plan_guid' + '}', CGI.escape(plan_guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InternalPlanBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_get_plan",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_get_plan\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Internal Quote
    # Retrieves a quote.  Required scope: **internal:quotes:read**
    # @param quote_guid [String] Identifier for the quote.
    # @param [Hash] opts the optional parameters
    # @return [InternalQuoteBankModel]
    def internal_get_quote(quote_guid, opts = {})
      data, _status_code, _headers = internal_get_quote_with_http_info(quote_guid, opts)
      data
    end

    # Get Internal Quote
    # Retrieves a quote.  Required scope: **internal:quotes:read**
    # @param quote_guid [String] Identifier for the quote.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalQuoteBankModel, Integer, Hash)>] InternalQuoteBankModel data, response status code and response headers
    def internal_get_quote_with_http_info(quote_guid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_get_quote ...'
      end
      # verify the required parameter 'quote_guid' is set
      if @api_client.config.client_side_validation && quote_guid.nil?
        fail ArgumentError, "Missing the required parameter 'quote_guid' when calling InternalBankApi.internal_get_quote"
      end
      # resource path
      local_var_path = '/api/internal/quotes/{quote_guid}'.sub('{' + 'quote_guid' + '}', CGI.escape(quote_guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InternalQuoteBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_get_quote",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_get_quote\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Reconciliation
    # Retrieves a reconciliation.  Required scope: **internal:transfers:read**
    # @param guid [String] Identifier for the resource.
    # @param [Hash] opts the optional parameters
    # @return [InternalReconciliationBankModel]
    def internal_get_reconciliation(guid, opts = {})
      data, _status_code, _headers = internal_get_reconciliation_with_http_info(guid, opts)
      data
    end

    # Get Reconciliation
    # Retrieves a reconciliation.  Required scope: **internal:transfers:read**
    # @param guid [String] Identifier for the resource.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalReconciliationBankModel, Integer, Hash)>] InternalReconciliationBankModel data, response status code and response headers
    def internal_get_reconciliation_with_http_info(guid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_get_reconciliation ...'
      end
      # verify the required parameter 'guid' is set
      if @api_client.config.client_side_validation && guid.nil?
        fail ArgumentError, "Missing the required parameter 'guid' when calling InternalBankApi.internal_get_reconciliation"
      end
      # resource path
      local_var_path = '/api/internal/reconciliations/{guid}'.sub('{' + 'guid' + '}', CGI.escape(guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InternalReconciliationBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_get_reconciliation",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_get_reconciliation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Internal Trade
    # Retrieves a trade.  Required scope: **internal:trades:read**
    # @param trade_guid [String] Identifier for the trade.
    # @param [Hash] opts the optional parameters
    # @return [InternalTradeBankModel]
    def internal_get_trade(trade_guid, opts = {})
      data, _status_code, _headers = internal_get_trade_with_http_info(trade_guid, opts)
      data
    end

    # Get Internal Trade
    # Retrieves a trade.  Required scope: **internal:trades:read**
    # @param trade_guid [String] Identifier for the trade.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalTradeBankModel, Integer, Hash)>] InternalTradeBankModel data, response status code and response headers
    def internal_get_trade_with_http_info(trade_guid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_get_trade ...'
      end
      # verify the required parameter 'trade_guid' is set
      if @api_client.config.client_side_validation && trade_guid.nil?
        fail ArgumentError, "Missing the required parameter 'trade_guid' when calling InternalBankApi.internal_get_trade"
      end
      # resource path
      local_var_path = '/api/internal/trades/{trade_guid}'.sub('{' + 'trade_guid' + '}', CGI.escape(trade_guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InternalTradeBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_get_trade",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_get_trade\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Transfer
    # Retrieves an internal transfer.  Required scope: **internal:transfers:read**
    # @param guid [String] Identifier for the internal transfer.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_provider_info Include provider info in the response.
    # @return [InternalTransferBankModel]
    def internal_get_transfer(guid, opts = {})
      data, _status_code, _headers = internal_get_transfer_with_http_info(guid, opts)
      data
    end

    # Get Transfer
    # Retrieves an internal transfer.  Required scope: **internal:transfers:read**
    # @param guid [String] Identifier for the internal transfer.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_provider_info Include provider info in the response.
    # @return [Array<(InternalTransferBankModel, Integer, Hash)>] InternalTransferBankModel data, response status code and response headers
    def internal_get_transfer_with_http_info(guid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_get_transfer ...'
      end
      # verify the required parameter 'guid' is set
      if @api_client.config.client_side_validation && guid.nil?
        fail ArgumentError, "Missing the required parameter 'guid' when calling InternalBankApi.internal_get_transfer"
      end
      # resource path
      local_var_path = '/api/internal/transfers/{guid}'.sub('{' + 'guid' + '}', CGI.escape(guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'include_provider_info'] = opts[:'include_provider_info'] if !opts[:'include_provider_info'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InternalTransferBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_get_transfer",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_get_transfer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get TransferScreening
    # Retrieves an transfer screening.  Required scope: **internal:transfer_screenings:read**
    # @param transfer_screening_guid [String] Identifier for the transfer screening.
    # @param [Hash] opts the optional parameters
    # @return [InternalTransferScreeningBankModel]
    def internal_get_transfer_screening(transfer_screening_guid, opts = {})
      data, _status_code, _headers = internal_get_transfer_screening_with_http_info(transfer_screening_guid, opts)
      data
    end

    # Get TransferScreening
    # Retrieves an transfer screening.  Required scope: **internal:transfer_screenings:read**
    # @param transfer_screening_guid [String] Identifier for the transfer screening.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalTransferScreeningBankModel, Integer, Hash)>] InternalTransferScreeningBankModel data, response status code and response headers
    def internal_get_transfer_screening_with_http_info(transfer_screening_guid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_get_transfer_screening ...'
      end
      # verify the required parameter 'transfer_screening_guid' is set
      if @api_client.config.client_side_validation && transfer_screening_guid.nil?
        fail ArgumentError, "Missing the required parameter 'transfer_screening_guid' when calling InternalBankApi.internal_get_transfer_screening"
      end
      # resource path
      local_var_path = '/api/internal/transfer_screenings/{transfer_screening_guid}'.sub('{' + 'transfer_screening_guid' + '}', CGI.escape(transfer_screening_guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InternalTransferScreeningBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_get_transfer_screening",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_get_transfer_screening\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get WalletService
    # Retrieves a wallet service.  Required scope: **internal:wallet_services:read**
    # @param wallet_service_guid [String] Identifier for the wallet service.
    # @param [Hash] opts the optional parameters
    # @return [InternalWalletServiceBankModel]
    def internal_get_wallet_service(wallet_service_guid, opts = {})
      data, _status_code, _headers = internal_get_wallet_service_with_http_info(wallet_service_guid, opts)
      data
    end

    # Get WalletService
    # Retrieves a wallet service.  Required scope: **internal:wallet_services:read**
    # @param wallet_service_guid [String] Identifier for the wallet service.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalWalletServiceBankModel, Integer, Hash)>] InternalWalletServiceBankModel data, response status code and response headers
    def internal_get_wallet_service_with_http_info(wallet_service_guid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_get_wallet_service ...'
      end
      # verify the required parameter 'wallet_service_guid' is set
      if @api_client.config.client_side_validation && wallet_service_guid.nil?
        fail ArgumentError, "Missing the required parameter 'wallet_service_guid' when calling InternalBankApi.internal_get_wallet_service"
      end
      # resource path
      local_var_path = '/api/internal/wallet_services/{wallet_service_guid}'.sub('{' + 'wallet_service_guid' + '}', CGI.escape(wallet_service_guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InternalWalletServiceBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_get_wallet_service",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_get_wallet_service\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

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
    def internal_list_accounts(opts = {})
      data, _status_code, _headers = internal_list_accounts_with_http_info(opts)
      data
    end

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
    # @return [Array<(AccountListBankModel, Integer, Hash)>] AccountListBankModel data, response status code and response headers
    def internal_list_accounts_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_list_accounts ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling InternalBankApi.internal_list_accounts, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] > 100
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling InternalBankApi.internal_list_accounts, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling InternalBankApi.internal_list_accounts, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/internal/accounts'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'owner'] = opts[:'owner'] if !opts[:'owner'].nil?
      query_params[:'guid'] = opts[:'guid'] if !opts[:'guid'].nil?
      query_params[:'customer_guid'] = opts[:'customer_guid'] if !opts[:'customer_guid'].nil?
      query_params[:'bank_guid'] = opts[:'bank_guid'] if !opts[:'bank_guid'].nil?
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?
      query_params[:'asset'] = opts[:'asset'] if !opts[:'asset'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'AccountListBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_list_accounts",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_list_accounts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

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
    def internal_list_activity_limit_configurations(opts = {})
      data, _status_code, _headers = internal_list_activity_limit_configurations_with_http_info(opts)
      data
    end

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
    # @return [Array<(InternalActivityLimitConfigurationListBankModel, Integer, Hash)>] InternalActivityLimitConfigurationListBankModel data, response status code and response headers
    def internal_list_activity_limit_configurations_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_list_activity_limit_configurations ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling InternalBankApi.internal_list_activity_limit_configurations, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] > 100
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling InternalBankApi.internal_list_activity_limit_configurations, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling InternalBankApi.internal_list_activity_limit_configurations, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/internal/activity_limit_configurations'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?
      query_params[:'environment'] = opts[:'environment'] if !opts[:'environment'].nil?
      query_params[:'guid'] = opts[:'guid'] if !opts[:'guid'].nil?
      query_params[:'customer_guid'] = opts[:'customer_guid'] if !opts[:'customer_guid'].nil?
      query_params[:'bank_guid'] = opts[:'bank_guid'] if !opts[:'bank_guid'].nil?
      query_params[:'audience'] = opts[:'audience'] if !opts[:'audience'].nil?
      query_params[:'country_code'] = opts[:'country_code'] if !opts[:'country_code'].nil?
      query_params[:'activity'] = opts[:'activity'] if !opts[:'activity'].nil?
      query_params[:'side'] = opts[:'side'] if !opts[:'side'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InternalActivityLimitConfigurationListBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_list_activity_limit_configurations",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_list_activity_limit_configurations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List BankAccountServices
    # Retrieves a listing of bank_account services.  Required scope: **internal:bank_account_services:read**
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page 
    # @option opts [Integer] :per_page 
    # @option opts [String] :environment Comma separated environments to list bank_account services for.
    # @option opts [String] :guid Comma separated guids to list bank_account services for.
    # @option opts [String] :type Comma separated types to list bank_account services for.
    # @return [InternalBankAccountServiceListBankModel]
    def internal_list_bank_account_services(opts = {})
      data, _status_code, _headers = internal_list_bank_account_services_with_http_info(opts)
      data
    end

    # List BankAccountServices
    # Retrieves a listing of bank_account services.  Required scope: **internal:bank_account_services:read**
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page 
    # @option opts [Integer] :per_page 
    # @option opts [String] :environment Comma separated environments to list bank_account services for.
    # @option opts [String] :guid Comma separated guids to list bank_account services for.
    # @option opts [String] :type Comma separated types to list bank_account services for.
    # @return [Array<(InternalBankAccountServiceListBankModel, Integer, Hash)>] InternalBankAccountServiceListBankModel data, response status code and response headers
    def internal_list_bank_account_services_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_list_bank_account_services ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling InternalBankApi.internal_list_bank_account_services, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] > 100
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling InternalBankApi.internal_list_bank_account_services, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling InternalBankApi.internal_list_bank_account_services, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/internal/bank_account_services'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'environment'] = opts[:'environment'] if !opts[:'environment'].nil?
      query_params[:'guid'] = opts[:'guid'] if !opts[:'guid'].nil?
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InternalBankAccountServiceListBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_list_bank_account_services",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_list_bank_account_services\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

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
    def internal_list_banks(opts = {})
      data, _status_code, _headers = internal_list_banks_with_http_info(opts)
      data
    end

    # List Banks
    # Retrieves a listing of banks.  Required scope: **internal:banks:read**
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page The page index to retrieve.
    # @option opts [Integer] :per_page The number of entities per page to return.
    # @option opts [String] :guid Comma separated bank_guids to list banks for.
    # @option opts [String] :type Comma separated types to list banks for.
    # @option opts [String] :organization_guid Organization guid to list banks for.
    # @option opts [String] :bank_guid Bank guid to list banks for.
    # @return [Array<(InternalBankListBankModel, Integer, Hash)>] InternalBankListBankModel data, response status code and response headers
    def internal_list_banks_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_list_banks ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling InternalBankApi.internal_list_banks, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] > 100
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling InternalBankApi.internal_list_banks, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling InternalBankApi.internal_list_banks, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/internal/banks'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'guid'] = opts[:'guid'] if !opts[:'guid'].nil?
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?
      query_params[:'organization_guid'] = opts[:'organization_guid'] if !opts[:'organization_guid'].nil?
      query_params[:'bank_guid'] = opts[:'bank_guid'] if !opts[:'bank_guid'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InternalBankListBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_list_banks",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_list_banks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

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
    def internal_list_crypto_asset_configurations(opts = {})
      data, _status_code, _headers = internal_list_crypto_asset_configurations_with_http_info(opts)
      data
    end

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
    # @return [Array<(InternalCryptoAssetConfigurationListBankModel, Integer, Hash)>] InternalCryptoAssetConfigurationListBankModel data, response status code and response headers
    def internal_list_crypto_asset_configurations_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_list_crypto_asset_configurations ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling InternalBankApi.internal_list_crypto_asset_configurations, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] > 100
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling InternalBankApi.internal_list_crypto_asset_configurations, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling InternalBankApi.internal_list_crypto_asset_configurations, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/internal/crypto_asset_configurations'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'guid'] = opts[:'guid'] if !opts[:'guid'].nil?
      query_params[:'asset_code'] = opts[:'asset_code'] if !opts[:'asset_code'].nil?
      query_params[:'bank_guid'] = opts[:'bank_guid'] if !opts[:'bank_guid'].nil?
      query_params[:'deposits_enabled'] = opts[:'deposits_enabled'] if !opts[:'deposits_enabled'].nil?
      query_params[:'environment'] = opts[:'environment'] if !opts[:'environment'].nil?
      query_params[:'invoices_enabled'] = opts[:'invoices_enabled'] if !opts[:'invoices_enabled'].nil?
      query_params[:'storage_enabled'] = opts[:'storage_enabled'] if !opts[:'storage_enabled'].nil?
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InternalCryptoAssetConfigurationListBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_list_crypto_asset_configurations",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_list_crypto_asset_configurations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Customers
    # Retrieves a listing of Customers.  Required scope: **internal:customers:read**
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page 
    # @option opts [Integer] :per_page 
    # @option opts [String] :guid Comma separated assets to list customers for.
    # @option opts [String] :bank_guid Comma separated bank_guids to list customers for.
    # @option opts [String] :organization_guid Comma separated organization_guids to list customers for.
    # @return [CustomerListBankModel]
    def internal_list_customers(opts = {})
      data, _status_code, _headers = internal_list_customers_with_http_info(opts)
      data
    end

    # List Customers
    # Retrieves a listing of Customers.  Required scope: **internal:customers:read**
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page 
    # @option opts [Integer] :per_page 
    # @option opts [String] :guid Comma separated assets to list customers for.
    # @option opts [String] :bank_guid Comma separated bank_guids to list customers for.
    # @option opts [String] :organization_guid Comma separated organization_guids to list customers for.
    # @return [Array<(CustomerListBankModel, Integer, Hash)>] CustomerListBankModel data, response status code and response headers
    def internal_list_customers_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_list_customers ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling InternalBankApi.internal_list_customers, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] > 100
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling InternalBankApi.internal_list_customers, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling InternalBankApi.internal_list_customers, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/internal/customers'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'guid'] = opts[:'guid'] if !opts[:'guid'].nil?
      query_params[:'bank_guid'] = opts[:'bank_guid'] if !opts[:'bank_guid'].nil?
      query_params[:'organization_guid'] = opts[:'organization_guid'] if !opts[:'organization_guid'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'CustomerListBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_list_customers",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_list_customers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List CybridAccounts
    # Retrieves a listing of Cybrid accounts.  Required scope: **internal:cybrid_accounts:read**
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page 
    # @option opts [Integer] :per_page 
    # @option opts [String] :environment Comma separated environments to list wallets for.
    # @option opts [String] :type Comma separated types to list wallets for.
    # @option opts [String] :asset Comma separated assets to list wallets for.
    # @return [InternalCybridAccountListBankModel]
    def internal_list_cybrid_accounts(opts = {})
      data, _status_code, _headers = internal_list_cybrid_accounts_with_http_info(opts)
      data
    end

    # List CybridAccounts
    # Retrieves a listing of Cybrid accounts.  Required scope: **internal:cybrid_accounts:read**
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page 
    # @option opts [Integer] :per_page 
    # @option opts [String] :environment Comma separated environments to list wallets for.
    # @option opts [String] :type Comma separated types to list wallets for.
    # @option opts [String] :asset Comma separated assets to list wallets for.
    # @return [Array<(InternalCybridAccountListBankModel, Integer, Hash)>] InternalCybridAccountListBankModel data, response status code and response headers
    def internal_list_cybrid_accounts_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_list_cybrid_accounts ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling InternalBankApi.internal_list_cybrid_accounts, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] > 100
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling InternalBankApi.internal_list_cybrid_accounts, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling InternalBankApi.internal_list_cybrid_accounts, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/internal/cybrid_accounts'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'environment'] = opts[:'environment'] if !opts[:'environment'].nil?
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?
      query_params[:'asset'] = opts[:'asset'] if !opts[:'asset'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InternalCybridAccountListBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_list_cybrid_accounts",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_list_cybrid_accounts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

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
    def internal_list_deposit_bank_accounts(opts = {})
      data, _status_code, _headers = internal_list_deposit_bank_accounts_with_http_info(opts)
      data
    end

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
    # @return [Array<(DepositBankAccountListBankModel, Integer, Hash)>] DepositBankAccountListBankModel data, response status code and response headers
    def internal_list_deposit_bank_accounts_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_list_deposit_bank_accounts ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling InternalBankApi.internal_list_deposit_bank_accounts, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] > 100
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling InternalBankApi.internal_list_deposit_bank_accounts, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling InternalBankApi.internal_list_deposit_bank_accounts, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/internal/deposit_bank_accounts'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'guid'] = opts[:'guid'] if !opts[:'guid'].nil?
      query_params[:'bank_guid'] = opts[:'bank_guid'] if !opts[:'bank_guid'].nil?
      query_params[:'customer_guid'] = opts[:'customer_guid'] if !opts[:'customer_guid'].nil?
      query_params[:'label'] = opts[:'label'] if !opts[:'label'].nil?
      query_params[:'unique_memo_id'] = opts[:'unique_memo_id'] if !opts[:'unique_memo_id'].nil?
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?
      query_params[:'parent_deposit_bank_account_guid'] = opts[:'parent_deposit_bank_account_guid'] if !opts[:'parent_deposit_bank_account_guid'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'DepositBankAccountListBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_list_deposit_bank_accounts",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_list_deposit_bank_accounts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List ExchangeOrder
    # Retrieves a listing of ExchangeOrders.Required scope: **internal:exchange_orders:read**
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page 
    # @option opts [Integer] :per_page 
    # @option opts [String] :guid Comma separated guids to list resources for.
    # @option opts [String] :state Comma separated states to list resources for.
    # @return [InternalExchangeOrderListBankModel]
    def internal_list_exchange_orders(opts = {})
      data, _status_code, _headers = internal_list_exchange_orders_with_http_info(opts)
      data
    end

    # List ExchangeOrder
    # Retrieves a listing of ExchangeOrders.Required scope: **internal:exchange_orders:read**
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page 
    # @option opts [Integer] :per_page 
    # @option opts [String] :guid Comma separated guids to list resources for.
    # @option opts [String] :state Comma separated states to list resources for.
    # @return [Array<(InternalExchangeOrderListBankModel, Integer, Hash)>] InternalExchangeOrderListBankModel data, response status code and response headers
    def internal_list_exchange_orders_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_list_exchange_orders ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling InternalBankApi.internal_list_exchange_orders, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] > 100
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling InternalBankApi.internal_list_exchange_orders, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling InternalBankApi.internal_list_exchange_orders, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/internal/exchange_orders'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'guid'] = opts[:'guid'] if !opts[:'guid'].nil?
      query_params[:'state'] = opts[:'state'] if !opts[:'state'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InternalExchangeOrderListBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_list_exchange_orders",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_list_exchange_orders\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List ExchangeSettlementConfigurations
    # Retrieves a listing of configurations.  Required scope: **internal:exchanges:read**
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page 
    # @option opts [Integer] :per_page 
    # @option opts [String] :asset Comma separated assets to list configurations for.
    # @option opts [String] :exchange_guid Comma separated exchange_guids to list configurations for.
    # @return [InternalExchangeSettlementConfigurationListBankModel]
    def internal_list_exchange_settlement_configurations(opts = {})
      data, _status_code, _headers = internal_list_exchange_settlement_configurations_with_http_info(opts)
      data
    end

    # List ExchangeSettlementConfigurations
    # Retrieves a listing of configurations.  Required scope: **internal:exchanges:read**
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page 
    # @option opts [Integer] :per_page 
    # @option opts [String] :asset Comma separated assets to list configurations for.
    # @option opts [String] :exchange_guid Comma separated exchange_guids to list configurations for.
    # @return [Array<(InternalExchangeSettlementConfigurationListBankModel, Integer, Hash)>] InternalExchangeSettlementConfigurationListBankModel data, response status code and response headers
    def internal_list_exchange_settlement_configurations_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_list_exchange_settlement_configurations ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling InternalBankApi.internal_list_exchange_settlement_configurations, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] > 100
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling InternalBankApi.internal_list_exchange_settlement_configurations, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling InternalBankApi.internal_list_exchange_settlement_configurations, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/internal/exchange_settlement_configurations'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'asset'] = opts[:'asset'] if !opts[:'asset'].nil?
      query_params[:'exchange_guid'] = opts[:'exchange_guid'] if !opts[:'exchange_guid'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InternalExchangeSettlementConfigurationListBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_list_exchange_settlement_configurations",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_list_exchange_settlement_configurations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Exchange Settlement Payment Orders
    # Retrieves a listing of exchange settlement payment orders.  Required scope: **internal:exchange_settlements:read**
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page 
    # @option opts [Integer] :per_page 
    # @option opts [String] :settlement_guid Comma separated exchange settlements to list payments for.
    # @return [InternalExchangeSettlementPaymentOrderListBankModel]
    def internal_list_exchange_settlement_payment_orders(opts = {})
      data, _status_code, _headers = internal_list_exchange_settlement_payment_orders_with_http_info(opts)
      data
    end

    # List Exchange Settlement Payment Orders
    # Retrieves a listing of exchange settlement payment orders.  Required scope: **internal:exchange_settlements:read**
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page 
    # @option opts [Integer] :per_page 
    # @option opts [String] :settlement_guid Comma separated exchange settlements to list payments for.
    # @return [Array<(InternalExchangeSettlementPaymentOrderListBankModel, Integer, Hash)>] InternalExchangeSettlementPaymentOrderListBankModel data, response status code and response headers
    def internal_list_exchange_settlement_payment_orders_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_list_exchange_settlement_payment_orders ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling InternalBankApi.internal_list_exchange_settlement_payment_orders, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] > 100
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling InternalBankApi.internal_list_exchange_settlement_payment_orders, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling InternalBankApi.internal_list_exchange_settlement_payment_orders, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/internal/exchange_settlement_payment_orders'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'settlement_guid'] = opts[:'settlement_guid'] if !opts[:'settlement_guid'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InternalExchangeSettlementPaymentOrderListBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_list_exchange_settlement_payment_orders",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_list_exchange_settlement_payment_orders\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Exchanges
    # Retrieves a listing of exchanges.  Required scope: **internal:exchanges:read**
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page 
    # @option opts [Integer] :per_page 
    # @option opts [String] :provider Comma separated providers to list exchanges for.
    # @option opts [String] :environment Comma separated environments to list exchanges for.
    # @return [InternalExchangeListBankModel]
    def internal_list_exchanges(opts = {})
      data, _status_code, _headers = internal_list_exchanges_with_http_info(opts)
      data
    end

    # List Exchanges
    # Retrieves a listing of exchanges.  Required scope: **internal:exchanges:read**
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page 
    # @option opts [Integer] :per_page 
    # @option opts [String] :provider Comma separated providers to list exchanges for.
    # @option opts [String] :environment Comma separated environments to list exchanges for.
    # @return [Array<(InternalExchangeListBankModel, Integer, Hash)>] InternalExchangeListBankModel data, response status code and response headers
    def internal_list_exchanges_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_list_exchanges ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling InternalBankApi.internal_list_exchanges, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] > 100
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling InternalBankApi.internal_list_exchanges, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling InternalBankApi.internal_list_exchanges, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/internal/exchanges'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'provider'] = opts[:'provider'] if !opts[:'provider'].nil?
      query_params[:'environment'] = opts[:'environment'] if !opts[:'environment'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InternalExchangeListBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_list_exchanges",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_list_exchanges\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Expected Payments
    # Retrieves a listing of expected payments.  Required scope: **internal:exchange_settlements:read**
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page 
    # @option opts [Integer] :per_page 
    # @option opts [String] :settlement_guid Comma separated exchange settlements to list payments for.
    # @return [InternalExpectedPaymentListBankModel]
    def internal_list_expected_payments(opts = {})
      data, _status_code, _headers = internal_list_expected_payments_with_http_info(opts)
      data
    end

    # List Expected Payments
    # Retrieves a listing of expected payments.  Required scope: **internal:exchange_settlements:read**
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page 
    # @option opts [Integer] :per_page 
    # @option opts [String] :settlement_guid Comma separated exchange settlements to list payments for.
    # @return [Array<(InternalExpectedPaymentListBankModel, Integer, Hash)>] InternalExpectedPaymentListBankModel data, response status code and response headers
    def internal_list_expected_payments_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_list_expected_payments ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling InternalBankApi.internal_list_expected_payments, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] > 100
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling InternalBankApi.internal_list_expected_payments, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling InternalBankApi.internal_list_expected_payments, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/internal/expected_payments'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'settlement_guid'] = opts[:'settlement_guid'] if !opts[:'settlement_guid'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InternalExpectedPaymentListBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_list_expected_payments",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_list_expected_payments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List ExternalBankAccounts
    # Retrieves a listing of external bank accounts.  Required scope: **internal:accounts:read**
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page 
    # @option opts [Integer] :per_page 
    # @option opts [String] :asset Comma separated assets to list bank accounts for.
    # @option opts [String] :bank_guid Comma separated bank_guids to list bank accounts for.
    # @option opts [String] :exchange_guid Comma separated exchange_guids to list bank accounts for.
    # @return [InternalExternalBankAccountListBankModel]
    def internal_list_external_bank_accounts(opts = {})
      data, _status_code, _headers = internal_list_external_bank_accounts_with_http_info(opts)
      data
    end

    # List ExternalBankAccounts
    # Retrieves a listing of external bank accounts.  Required scope: **internal:accounts:read**
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page 
    # @option opts [Integer] :per_page 
    # @option opts [String] :asset Comma separated assets to list bank accounts for.
    # @option opts [String] :bank_guid Comma separated bank_guids to list bank accounts for.
    # @option opts [String] :exchange_guid Comma separated exchange_guids to list bank accounts for.
    # @return [Array<(InternalExternalBankAccountListBankModel, Integer, Hash)>] InternalExternalBankAccountListBankModel data, response status code and response headers
    def internal_list_external_bank_accounts_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_list_external_bank_accounts ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling InternalBankApi.internal_list_external_bank_accounts, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] > 100
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling InternalBankApi.internal_list_external_bank_accounts, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling InternalBankApi.internal_list_external_bank_accounts, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/internal/external_bank_accounts'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'asset'] = opts[:'asset'] if !opts[:'asset'].nil?
      query_params[:'bank_guid'] = opts[:'bank_guid'] if !opts[:'bank_guid'].nil?
      query_params[:'exchange_guid'] = opts[:'exchange_guid'] if !opts[:'exchange_guid'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InternalExternalBankAccountListBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_list_external_bank_accounts",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_list_external_bank_accounts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List ExternalWallets
    # Retrieves a listing of external wallets.  Required scope: **internal:accounts:read**
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page 
    # @option opts [Integer] :per_page 
    # @option opts [String] :asset Comma separated assets to list wallets for.
    # @option opts [String] :exchange_guid Comma separated exchange_guids to list wallets for.
    # @return [InternalExternalWalletListBankModel]
    def internal_list_external_wallets(opts = {})
      data, _status_code, _headers = internal_list_external_wallets_with_http_info(opts)
      data
    end

    # List ExternalWallets
    # Retrieves a listing of external wallets.  Required scope: **internal:accounts:read**
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page 
    # @option opts [Integer] :per_page 
    # @option opts [String] :asset Comma separated assets to list wallets for.
    # @option opts [String] :exchange_guid Comma separated exchange_guids to list wallets for.
    # @return [Array<(InternalExternalWalletListBankModel, Integer, Hash)>] InternalExternalWalletListBankModel data, response status code and response headers
    def internal_list_external_wallets_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_list_external_wallets ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling InternalBankApi.internal_list_external_wallets, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] > 100
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling InternalBankApi.internal_list_external_wallets, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling InternalBankApi.internal_list_external_wallets, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/internal/external_wallets'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'asset'] = opts[:'asset'] if !opts[:'asset'].nil?
      query_params[:'exchange_guid'] = opts[:'exchange_guid'] if !opts[:'exchange_guid'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InternalExternalWalletListBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_list_external_wallets",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_list_external_wallets\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

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
    def internal_list_fee_configurations(opts = {})
      data, _status_code, _headers = internal_list_fee_configurations_with_http_info(opts)
      data
    end

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
    # @return [Array<(InternalFeeConfigurationListBankModel, Integer, Hash)>] InternalFeeConfigurationListBankModel data, response status code and response headers
    def internal_list_fee_configurations_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_list_fee_configurations ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling InternalBankApi.internal_list_fee_configurations, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] > 100
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling InternalBankApi.internal_list_fee_configurations, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling InternalBankApi.internal_list_fee_configurations, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/internal/fee_configurations'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'guid'] = opts[:'guid'] if !opts[:'guid'].nil?
      query_params[:'configuration_type'] = opts[:'configuration_type'] if !opts[:'configuration_type'].nil?
      query_params[:'product_type'] = opts[:'product_type'] if !opts[:'product_type'].nil?
      query_params[:'primary_asset_code'] = opts[:'primary_asset_code'] if !opts[:'primary_asset_code'].nil?
      query_params[:'counter_asset_code'] = opts[:'counter_asset_code'] if !opts[:'counter_asset_code'].nil?
      query_params[:'bank_guid'] = opts[:'bank_guid'] if !opts[:'bank_guid'].nil?
      query_params[:'organization_guid'] = opts[:'organization_guid'] if !opts[:'organization_guid'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InternalFeeConfigurationListBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_list_fee_configurations",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_list_fee_configurations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Fees
    # Retrieves a listing of Fees.Required scope: **internal:fees:read**
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page 
    # @option opts [Integer] :per_page 
    # @option opts [String] :guid Comma separated guids to list resources for.
    # @option opts [String] :state Comma separated states to list resources for.
    # @return [InternalFeeChargeListBankModel]
    def internal_list_fees(opts = {})
      data, _status_code, _headers = internal_list_fees_with_http_info(opts)
      data
    end

    # List Fees
    # Retrieves a listing of Fees.Required scope: **internal:fees:read**
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page 
    # @option opts [Integer] :per_page 
    # @option opts [String] :guid Comma separated guids to list resources for.
    # @option opts [String] :state Comma separated states to list resources for.
    # @return [Array<(InternalFeeChargeListBankModel, Integer, Hash)>] InternalFeeChargeListBankModel data, response status code and response headers
    def internal_list_fees_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_list_fees ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling InternalBankApi.internal_list_fees, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] > 100
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling InternalBankApi.internal_list_fees, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling InternalBankApi.internal_list_fees, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/internal/fees'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'guid'] = opts[:'guid'] if !opts[:'guid'].nil?
      query_params[:'state'] = opts[:'state'] if !opts[:'state'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InternalFeeChargeListBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_list_fees",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_list_fees\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List InternalBankAccounts
    # Retrieves a listing of internal bank accounts.  Required scope: **internal:accounts:read**
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page 
    # @option opts [Integer] :per_page 
    # @option opts [String] :environment Comma separated environments to list bank accounts for.
    # @option opts [String] :asset Comma separated assets to list bank accounts for.
    # @option opts [String] :account_kind Comma separated account kinds to list bank accounts for.
    # @return [InternalInternalBankAccountListBankModel]
    def internal_list_internal_bank_accounts(opts = {})
      data, _status_code, _headers = internal_list_internal_bank_accounts_with_http_info(opts)
      data
    end

    # List InternalBankAccounts
    # Retrieves a listing of internal bank accounts.  Required scope: **internal:accounts:read**
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page 
    # @option opts [Integer] :per_page 
    # @option opts [String] :environment Comma separated environments to list bank accounts for.
    # @option opts [String] :asset Comma separated assets to list bank accounts for.
    # @option opts [String] :account_kind Comma separated account kinds to list bank accounts for.
    # @return [Array<(InternalInternalBankAccountListBankModel, Integer, Hash)>] InternalInternalBankAccountListBankModel data, response status code and response headers
    def internal_list_internal_bank_accounts_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_list_internal_bank_accounts ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling InternalBankApi.internal_list_internal_bank_accounts, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] > 100
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling InternalBankApi.internal_list_internal_bank_accounts, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling InternalBankApi.internal_list_internal_bank_accounts, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/internal/internal_bank_accounts'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'environment'] = opts[:'environment'] if !opts[:'environment'].nil?
      query_params[:'asset'] = opts[:'asset'] if !opts[:'asset'].nil?
      query_params[:'account_kind'] = opts[:'account_kind'] if !opts[:'account_kind'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InternalInternalBankAccountListBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_list_internal_bank_accounts",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_list_internal_bank_accounts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

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
    def internal_list_internal_wallets(opts = {})
      data, _status_code, _headers = internal_list_internal_wallets_with_http_info(opts)
      data
    end

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
    # @return [Array<(InternalInternalWalletListBankModel, Integer, Hash)>] InternalInternalWalletListBankModel data, response status code and response headers
    def internal_list_internal_wallets_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_list_internal_wallets ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling InternalBankApi.internal_list_internal_wallets, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] > 100
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling InternalBankApi.internal_list_internal_wallets, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling InternalBankApi.internal_list_internal_wallets, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/internal/internal_wallets'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'owner'] = opts[:'owner'] if !opts[:'owner'].nil?
      query_params[:'environment'] = opts[:'environment'] if !opts[:'environment'].nil?
      query_params[:'guid'] = opts[:'guid'] if !opts[:'guid'].nil?
      query_params[:'bank_guid'] = opts[:'bank_guid'] if !opts[:'bank_guid'].nil?
      query_params[:'customer_guid'] = opts[:'customer_guid'] if !opts[:'customer_guid'].nil?
      query_params[:'internal_wallet_group_guid'] = opts[:'internal_wallet_group_guid'] if !opts[:'internal_wallet_group_guid'].nil?
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?
      query_params[:'asset'] = opts[:'asset'] if !opts[:'asset'].nil?
      query_params[:'account_kind'] = opts[:'account_kind'] if !opts[:'account_kind'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InternalInternalWalletListBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_list_internal_wallets",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_list_internal_wallets\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

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
    def internal_list_invoices(opts = {})
      data, _status_code, _headers = internal_list_invoices_with_http_info(opts)
      data
    end

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
    # @return [Array<(InternalInternalInvoiceListBankModel, Integer, Hash)>] InternalInternalInvoiceListBankModel data, response status code and response headers
    def internal_list_invoices_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_list_invoices ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling InternalBankApi.internal_list_invoices, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] > 100
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling InternalBankApi.internal_list_invoices, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling InternalBankApi.internal_list_invoices, must be greater than or equal to 1.'
      end

      allowable_values = ["sandbox", "production"]
      if @api_client.config.client_side_validation && opts[:'environment'] && !allowable_values.include?(opts[:'environment'])
        fail ArgumentError, "invalid value for \"environment\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/api/internal/invoices'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'guid'] = opts[:'guid'] if !opts[:'guid'].nil?
      query_params[:'bank_guid'] = opts[:'bank_guid'] if !opts[:'bank_guid'].nil?
      query_params[:'customer_guid'] = opts[:'customer_guid'] if !opts[:'customer_guid'].nil?
      query_params[:'account_guid'] = opts[:'account_guid'] if !opts[:'account_guid'].nil?
      query_params[:'state'] = opts[:'state'] if !opts[:'state'].nil?
      query_params[:'asset'] = opts[:'asset'] if !opts[:'asset'].nil?
      query_params[:'environment'] = opts[:'environment'] if !opts[:'environment'].nil?
      query_params[:'label'] = opts[:'label'] if !opts[:'label'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InternalInternalInvoiceListBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_list_invoices",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_list_invoices\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

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
    def internal_list_reconciliations(opts = {})
      data, _status_code, _headers = internal_list_reconciliations_with_http_info(opts)
      data
    end

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
    # @return [Array<(InternalReconciliationListBankModel, Integer, Hash)>] InternalReconciliationListBankModel data, response status code and response headers
    def internal_list_reconciliations_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_list_reconciliations ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling InternalBankApi.internal_list_reconciliations, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] > 100
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling InternalBankApi.internal_list_reconciliations, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling InternalBankApi.internal_list_reconciliations, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/internal/reconciliations'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'category'] = opts[:'category'] if !opts[:'category'].nil?
      query_params[:'confidence'] = opts[:'confidence'] if !opts[:'confidence'].nil?
      query_params[:'direction'] = opts[:'direction'] if !opts[:'direction'].nil?
      query_params[:'transfer_guid'] = opts[:'transfer_guid'] if !opts[:'transfer_guid'].nil?
      query_params[:'transaction_id'] = opts[:'transaction_id'] if !opts[:'transaction_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InternalReconciliationListBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_list_reconciliations",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_list_reconciliations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Trades
    # Retrieves a list of trades.  Required scope: **internal:trades:read**
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page The page index to retrieve.
    # @option opts [Integer] :per_page The number of entities per page to return.
    # @option opts [String] :guid Comma separated trade_guids to list trades for.
    # @option opts [String] :customer_guid Comma separated customer_guids to list trades for.
    # @option opts [String] :bank_guid Comma separated bank_guids to list trades for.
    # @return [TradeListBankModel]
    def internal_list_trades(opts = {})
      data, _status_code, _headers = internal_list_trades_with_http_info(opts)
      data
    end

    # List Trades
    # Retrieves a list of trades.  Required scope: **internal:trades:read**
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page The page index to retrieve.
    # @option opts [Integer] :per_page The number of entities per page to return.
    # @option opts [String] :guid Comma separated trade_guids to list trades for.
    # @option opts [String] :customer_guid Comma separated customer_guids to list trades for.
    # @option opts [String] :bank_guid Comma separated bank_guids to list trades for.
    # @return [Array<(TradeListBankModel, Integer, Hash)>] TradeListBankModel data, response status code and response headers
    def internal_list_trades_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_list_trades ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling InternalBankApi.internal_list_trades, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] > 100
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling InternalBankApi.internal_list_trades, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling InternalBankApi.internal_list_trades, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/internal/trades'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'guid'] = opts[:'guid'] if !opts[:'guid'].nil?
      query_params[:'customer_guid'] = opts[:'customer_guid'] if !opts[:'customer_guid'].nil?
      query_params[:'bank_guid'] = opts[:'bank_guid'] if !opts[:'bank_guid'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'TradeListBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_list_trades",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_list_trades\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List TradingSymbolConfigurations
    # Retrieves a listing of trading symbol configurations.  Required scope: **internal:banks:read**
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page 
    # @option opts [Integer] :per_page 
    # @option opts [String] :bank_guid Comma separated bank guids to list trading symbol configurations for.
    # @return [InternalTradingSymbolConfigurationListBankModel]
    def internal_list_trading_symbol_configurations(opts = {})
      data, _status_code, _headers = internal_list_trading_symbol_configurations_with_http_info(opts)
      data
    end

    # List TradingSymbolConfigurations
    # Retrieves a listing of trading symbol configurations.  Required scope: **internal:banks:read**
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page 
    # @option opts [Integer] :per_page 
    # @option opts [String] :bank_guid Comma separated bank guids to list trading symbol configurations for.
    # @return [Array<(InternalTradingSymbolConfigurationListBankModel, Integer, Hash)>] InternalTradingSymbolConfigurationListBankModel data, response status code and response headers
    def internal_list_trading_symbol_configurations_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_list_trading_symbol_configurations ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling InternalBankApi.internal_list_trading_symbol_configurations, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] > 100
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling InternalBankApi.internal_list_trading_symbol_configurations, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling InternalBankApi.internal_list_trading_symbol_configurations, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/internal/trading_symbol_configurations'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'bank_guid'] = opts[:'bank_guid'] if !opts[:'bank_guid'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InternalTradingSymbolConfigurationListBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_list_trading_symbol_configurations",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_list_trading_symbol_configurations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Transactions
    # Retrieves a listing of transactions.  Required scope: **internal:transfers:read**
    # @param environment [String] 
    # @param account_guid [String] 
    # @param account_type [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor 
    # @option opts [Integer] :per_page 
    # @option opts [Boolean] :include_pii Include PII in the response.
    # @option opts [String] :created_at_gte Created at start date inclusive lower bound, ISO8601.
    # @option opts [String] :created_at_lt Created at end date exclusive upper bound, ISO8601.
    # @return [InternalTransactionsListBankModel]
    def internal_list_transactions(environment, account_guid, account_type, opts = {})
      data, _status_code, _headers = internal_list_transactions_with_http_info(environment, account_guid, account_type, opts)
      data
    end

    # List Transactions
    # Retrieves a listing of transactions.  Required scope: **internal:transfers:read**
    # @param environment [String] 
    # @param account_guid [String] 
    # @param account_type [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor 
    # @option opts [Integer] :per_page 
    # @option opts [Boolean] :include_pii Include PII in the response.
    # @option opts [String] :created_at_gte Created at start date inclusive lower bound, ISO8601.
    # @option opts [String] :created_at_lt Created at end date exclusive upper bound, ISO8601.
    # @return [Array<(InternalTransactionsListBankModel, Integer, Hash)>] InternalTransactionsListBankModel data, response status code and response headers
    def internal_list_transactions_with_http_info(environment, account_guid, account_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_list_transactions ...'
      end
      # verify the required parameter 'environment' is set
      if @api_client.config.client_side_validation && environment.nil?
        fail ArgumentError, "Missing the required parameter 'environment' when calling InternalBankApi.internal_list_transactions"
      end
      # verify enum value
      allowable_values = ["sandbox", "production"]
      if @api_client.config.client_side_validation && !allowable_values.include?(environment)
        fail ArgumentError, "invalid value for \"environment\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'account_guid' is set
      if @api_client.config.client_side_validation && account_guid.nil?
        fail ArgumentError, "Missing the required parameter 'account_guid' when calling InternalBankApi.internal_list_transactions"
      end
      # verify the required parameter 'account_type' is set
      if @api_client.config.client_side_validation && account_type.nil?
        fail ArgumentError, "Missing the required parameter 'account_type' when calling InternalBankApi.internal_list_transactions"
      end
      # verify enum value
      allowable_values = ["internal_wallet", "internal_bank_account"]
      if @api_client.config.client_side_validation && !allowable_values.include?(account_type)
        fail ArgumentError, "invalid value for \"account_type\", must be one of #{allowable_values}"
      end
      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] > 100
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling InternalBankApi.internal_list_transactions, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling InternalBankApi.internal_list_transactions, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/internal/transactions'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'environment'] = environment
      query_params[:'account_guid'] = account_guid
      query_params[:'account_type'] = account_type
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'include_pii'] = opts[:'include_pii'] if !opts[:'include_pii'].nil?
      query_params[:'created_at_gte'] = opts[:'created_at_gte'] if !opts[:'created_at_gte'].nil?
      query_params[:'created_at_lt'] = opts[:'created_at_lt'] if !opts[:'created_at_lt'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InternalTransactionsListBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_list_transactions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_list_transactions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

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
    def internal_list_transfers(opts = {})
      data, _status_code, _headers = internal_list_transfers_with_http_info(opts)
      data
    end

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
    # @return [Array<(InternalTransferListBankModel, Integer, Hash)>] InternalTransferListBankModel data, response status code and response headers
    def internal_list_transfers_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_list_transfers ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling InternalBankApi.internal_list_transfers, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] > 100
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling InternalBankApi.internal_list_transfers, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling InternalBankApi.internal_list_transfers, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/internal/transfers'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'asset'] = opts[:'asset'] if !opts[:'asset'].nil?
      query_params[:'guid'] = opts[:'guid'] if !opts[:'guid'].nil?
      query_params[:'transfer_type'] = opts[:'transfer_type'] if !opts[:'transfer_type'].nil?
      query_params[:'customer_guid'] = opts[:'customer_guid'] if !opts[:'customer_guid'].nil?
      query_params[:'bank_guid'] = opts[:'bank_guid'] if !opts[:'bank_guid'].nil?
      query_params[:'account_guid'] = opts[:'account_guid'] if !opts[:'account_guid'].nil?
      query_params[:'state'] = opts[:'state'] if !opts[:'state'].nil?
      query_params[:'side'] = opts[:'side'] if !opts[:'side'].nil?
      query_params[:'txn_hash'] = opts[:'txn_hash'] if !opts[:'txn_hash'].nil?
      query_params[:'external_id'] = opts[:'external_id'] if !opts[:'external_id'].nil?
      query_params[:'amount'] = opts[:'amount'] if !opts[:'amount'].nil?
      query_params[:'estimated_amount'] = opts[:'estimated_amount'] if !opts[:'estimated_amount'].nil?
      query_params[:'principal_source_account_guid'] = opts[:'principal_source_account_guid'] if !opts[:'principal_source_account_guid'].nil?
      query_params[:'principal_destination_account_guid'] = opts[:'principal_destination_account_guid'] if !opts[:'principal_destination_account_guid'].nil?
      query_params[:'created_at_gte'] = opts[:'created_at_gte'] if !opts[:'created_at_gte'].nil?
      query_params[:'created_at_lt'] = opts[:'created_at_lt'] if !opts[:'created_at_lt'].nil?
      query_params[:'updated_at_gte'] = opts[:'updated_at_gte'] if !opts[:'updated_at_gte'].nil?
      query_params[:'updated_at_lt'] = opts[:'updated_at_lt'] if !opts[:'updated_at_lt'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InternalTransferListBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_list_transfers",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_list_transfers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List WalletServices
    # Retrieves a listing of wallet services.  Required scope: **internal:wallet_services:read**
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page 
    # @option opts [Integer] :per_page 
    # @option opts [String] :environment Comma separated environments to list wallet services for.
    # @option opts [String] :guid Comma separated guids to list wallet services for.
    # @option opts [String] :type Comma separated types to list wallet services for.
    # @return [InternalWalletServiceListBankModel]
    def internal_list_wallet_services(opts = {})
      data, _status_code, _headers = internal_list_wallet_services_with_http_info(opts)
      data
    end

    # List WalletServices
    # Retrieves a listing of wallet services.  Required scope: **internal:wallet_services:read**
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page 
    # @option opts [Integer] :per_page 
    # @option opts [String] :environment Comma separated environments to list wallet services for.
    # @option opts [String] :guid Comma separated guids to list wallet services for.
    # @option opts [String] :type Comma separated types to list wallet services for.
    # @return [Array<(InternalWalletServiceListBankModel, Integer, Hash)>] InternalWalletServiceListBankModel data, response status code and response headers
    def internal_list_wallet_services_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_list_wallet_services ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling InternalBankApi.internal_list_wallet_services, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] > 100
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling InternalBankApi.internal_list_wallet_services, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling InternalBankApi.internal_list_wallet_services, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/internal/wallet_services'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'environment'] = opts[:'environment'] if !opts[:'environment'].nil?
      query_params[:'guid'] = opts[:'guid'] if !opts[:'guid'].nil?
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InternalWalletServiceListBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_list_wallet_services",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_list_wallet_services\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Patch Account
    # Patch an account.  Required scope: **internal:accounts:write**
    # @param account_guid [String] Identifier for the account.
    # @param patch_internal_account_bank_model [PatchInternalAccountBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [AccountBankModel]
    def internal_patch_account(account_guid, patch_internal_account_bank_model, opts = {})
      data, _status_code, _headers = internal_patch_account_with_http_info(account_guid, patch_internal_account_bank_model, opts)
      data
    end

    # Patch Account
    # Patch an account.  Required scope: **internal:accounts:write**
    # @param account_guid [String] Identifier for the account.
    # @param patch_internal_account_bank_model [PatchInternalAccountBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AccountBankModel, Integer, Hash)>] AccountBankModel data, response status code and response headers
    def internal_patch_account_with_http_info(account_guid, patch_internal_account_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_patch_account ...'
      end
      # verify the required parameter 'account_guid' is set
      if @api_client.config.client_side_validation && account_guid.nil?
        fail ArgumentError, "Missing the required parameter 'account_guid' when calling InternalBankApi.internal_patch_account"
      end
      # verify the required parameter 'patch_internal_account_bank_model' is set
      if @api_client.config.client_side_validation && patch_internal_account_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'patch_internal_account_bank_model' when calling InternalBankApi.internal_patch_account"
      end
      # resource path
      local_var_path = '/api/internal/accounts/{account_guid}'.sub('{' + 'account_guid' + '}', CGI.escape(account_guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(patch_internal_account_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'AccountBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_patch_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_patch_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Patch ActivityLimitConfiguration
    # Updates an activity limit configuration.  Required scope: **internal:banks:write**
    # @param guid [String] Identifier for the activity limit configuration.
    # @param patch_internal_activity_limit_configuration_bank_model [PatchInternalActivityLimitConfigurationBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [InternalActivityLimitConfigurationBankModel]
    def internal_patch_activity_limit_configuration(guid, patch_internal_activity_limit_configuration_bank_model, opts = {})
      data, _status_code, _headers = internal_patch_activity_limit_configuration_with_http_info(guid, patch_internal_activity_limit_configuration_bank_model, opts)
      data
    end

    # Patch ActivityLimitConfiguration
    # Updates an activity limit configuration.  Required scope: **internal:banks:write**
    # @param guid [String] Identifier for the activity limit configuration.
    # @param patch_internal_activity_limit_configuration_bank_model [PatchInternalActivityLimitConfigurationBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalActivityLimitConfigurationBankModel, Integer, Hash)>] InternalActivityLimitConfigurationBankModel data, response status code and response headers
    def internal_patch_activity_limit_configuration_with_http_info(guid, patch_internal_activity_limit_configuration_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_patch_activity_limit_configuration ...'
      end
      # verify the required parameter 'guid' is set
      if @api_client.config.client_side_validation && guid.nil?
        fail ArgumentError, "Missing the required parameter 'guid' when calling InternalBankApi.internal_patch_activity_limit_configuration"
      end
      # verify the required parameter 'patch_internal_activity_limit_configuration_bank_model' is set
      if @api_client.config.client_side_validation && patch_internal_activity_limit_configuration_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'patch_internal_activity_limit_configuration_bank_model' when calling InternalBankApi.internal_patch_activity_limit_configuration"
      end
      # resource path
      local_var_path = '/api/internal/activity_limit_configurations/{guid}'.sub('{' + 'guid' + '}', CGI.escape(guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(patch_internal_activity_limit_configuration_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalActivityLimitConfigurationBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_patch_activity_limit_configuration",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_patch_activity_limit_configuration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Patch Bank
    # Update a bank.  Required scope: **internal:banks:write**
    # @param bank_guid [String] Identifier for the bank.
    # @param patch_internal_bank_bank_model [PatchInternalBankBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [InternalBankBankModel]
    def internal_patch_bank(bank_guid, patch_internal_bank_bank_model, opts = {})
      data, _status_code, _headers = internal_patch_bank_with_http_info(bank_guid, patch_internal_bank_bank_model, opts)
      data
    end

    # Patch Bank
    # Update a bank.  Required scope: **internal:banks:write**
    # @param bank_guid [String] Identifier for the bank.
    # @param patch_internal_bank_bank_model [PatchInternalBankBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalBankBankModel, Integer, Hash)>] InternalBankBankModel data, response status code and response headers
    def internal_patch_bank_with_http_info(bank_guid, patch_internal_bank_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_patch_bank ...'
      end
      # verify the required parameter 'bank_guid' is set
      if @api_client.config.client_side_validation && bank_guid.nil?
        fail ArgumentError, "Missing the required parameter 'bank_guid' when calling InternalBankApi.internal_patch_bank"
      end
      # verify the required parameter 'patch_internal_bank_bank_model' is set
      if @api_client.config.client_side_validation && patch_internal_bank_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'patch_internal_bank_bank_model' when calling InternalBankApi.internal_patch_bank"
      end
      # resource path
      local_var_path = '/api/internal/banks/{bank_guid}'.sub('{' + 'bank_guid' + '}', CGI.escape(bank_guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(patch_internal_bank_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalBankBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_patch_bank",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_patch_bank\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Patch Internal BankAccount
    # Patch an internal bank_account.  Required scope: **internal:bank_account_services:write**
    # @param guid [String] Identifier for the resource.
    # @param patch_internal_bank_account_service_bank_model [PatchInternalBankAccountServiceBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [InternalBankAccountServiceBankModel]
    def internal_patch_bank_account_service(guid, patch_internal_bank_account_service_bank_model, opts = {})
      data, _status_code, _headers = internal_patch_bank_account_service_with_http_info(guid, patch_internal_bank_account_service_bank_model, opts)
      data
    end

    # Patch Internal BankAccount
    # Patch an internal bank_account.  Required scope: **internal:bank_account_services:write**
    # @param guid [String] Identifier for the resource.
    # @param patch_internal_bank_account_service_bank_model [PatchInternalBankAccountServiceBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalBankAccountServiceBankModel, Integer, Hash)>] InternalBankAccountServiceBankModel data, response status code and response headers
    def internal_patch_bank_account_service_with_http_info(guid, patch_internal_bank_account_service_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_patch_bank_account_service ...'
      end
      # verify the required parameter 'guid' is set
      if @api_client.config.client_side_validation && guid.nil?
        fail ArgumentError, "Missing the required parameter 'guid' when calling InternalBankApi.internal_patch_bank_account_service"
      end
      # verify the required parameter 'patch_internal_bank_account_service_bank_model' is set
      if @api_client.config.client_side_validation && patch_internal_bank_account_service_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'patch_internal_bank_account_service_bank_model' when calling InternalBankApi.internal_patch_bank_account_service"
      end
      # resource path
      local_var_path = '/api/internal/bank_account_services/{guid}'.sub('{' + 'guid' + '}', CGI.escape(guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(patch_internal_bank_account_service_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalBankAccountServiceBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_patch_bank_account_service",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_patch_bank_account_service\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Patch Business Details
    # Patch a business details record.  Required scope: **internal:customers:write**
    # @param guid [String] Identifier for the resource.
    # @param patch_internal_business_detail_bank_model [PatchInternalBusinessDetailBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [InternalBusinessDetailBankModel]
    def internal_patch_business_detail(guid, patch_internal_business_detail_bank_model, opts = {})
      data, _status_code, _headers = internal_patch_business_detail_with_http_info(guid, patch_internal_business_detail_bank_model, opts)
      data
    end

    # Patch Business Details
    # Patch a business details record.  Required scope: **internal:customers:write**
    # @param guid [String] Identifier for the resource.
    # @param patch_internal_business_detail_bank_model [PatchInternalBusinessDetailBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalBusinessDetailBankModel, Integer, Hash)>] InternalBusinessDetailBankModel data, response status code and response headers
    def internal_patch_business_detail_with_http_info(guid, patch_internal_business_detail_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_patch_business_detail ...'
      end
      # verify the required parameter 'guid' is set
      if @api_client.config.client_side_validation && guid.nil?
        fail ArgumentError, "Missing the required parameter 'guid' when calling InternalBankApi.internal_patch_business_detail"
      end
      # verify the required parameter 'patch_internal_business_detail_bank_model' is set
      if @api_client.config.client_side_validation && patch_internal_business_detail_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'patch_internal_business_detail_bank_model' when calling InternalBankApi.internal_patch_business_detail"
      end
      # resource path
      local_var_path = '/api/internal/business_details/{guid}'.sub('{' + 'guid' + '}', CGI.escape(guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(patch_internal_business_detail_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalBusinessDetailBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_patch_business_detail",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_patch_business_detail\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Patch Counterparty
    # Patch a counterparty.  Required scope: **internal:counterparties:write**
    # @param counterparty_guid [String] Identifier for the counterparty.
    # @param patch_internal_counterparty_bank_model [PatchInternalCounterpartyBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [CounterpartyBankModel]
    def internal_patch_counterparty(counterparty_guid, patch_internal_counterparty_bank_model, opts = {})
      data, _status_code, _headers = internal_patch_counterparty_with_http_info(counterparty_guid, patch_internal_counterparty_bank_model, opts)
      data
    end

    # Patch Counterparty
    # Patch a counterparty.  Required scope: **internal:counterparties:write**
    # @param counterparty_guid [String] Identifier for the counterparty.
    # @param patch_internal_counterparty_bank_model [PatchInternalCounterpartyBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CounterpartyBankModel, Integer, Hash)>] CounterpartyBankModel data, response status code and response headers
    def internal_patch_counterparty_with_http_info(counterparty_guid, patch_internal_counterparty_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_patch_counterparty ...'
      end
      # verify the required parameter 'counterparty_guid' is set
      if @api_client.config.client_side_validation && counterparty_guid.nil?
        fail ArgumentError, "Missing the required parameter 'counterparty_guid' when calling InternalBankApi.internal_patch_counterparty"
      end
      # verify the required parameter 'patch_internal_counterparty_bank_model' is set
      if @api_client.config.client_side_validation && patch_internal_counterparty_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'patch_internal_counterparty_bank_model' when calling InternalBankApi.internal_patch_counterparty"
      end
      # resource path
      local_var_path = '/api/internal/counterparties/{counterparty_guid}'.sub('{' + 'counterparty_guid' + '}', CGI.escape(counterparty_guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(patch_internal_counterparty_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'CounterpartyBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_patch_counterparty",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_patch_counterparty\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Patch CryptoAssetConfiguration
    # Updates a crypto asset configuration.  Required scope: **internal:banks:write**
    # @param guid [String] Identifier for the crypto asset configuration.
    # @param patch_internal_crypto_asset_configuration_bank_model [PatchInternalCryptoAssetConfigurationBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [InternalCryptoAssetConfigurationBankModel]
    def internal_patch_crypto_asset_configuration(guid, patch_internal_crypto_asset_configuration_bank_model, opts = {})
      data, _status_code, _headers = internal_patch_crypto_asset_configuration_with_http_info(guid, patch_internal_crypto_asset_configuration_bank_model, opts)
      data
    end

    # Patch CryptoAssetConfiguration
    # Updates a crypto asset configuration.  Required scope: **internal:banks:write**
    # @param guid [String] Identifier for the crypto asset configuration.
    # @param patch_internal_crypto_asset_configuration_bank_model [PatchInternalCryptoAssetConfigurationBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalCryptoAssetConfigurationBankModel, Integer, Hash)>] InternalCryptoAssetConfigurationBankModel data, response status code and response headers
    def internal_patch_crypto_asset_configuration_with_http_info(guid, patch_internal_crypto_asset_configuration_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_patch_crypto_asset_configuration ...'
      end
      # verify the required parameter 'guid' is set
      if @api_client.config.client_side_validation && guid.nil?
        fail ArgumentError, "Missing the required parameter 'guid' when calling InternalBankApi.internal_patch_crypto_asset_configuration"
      end
      # verify the required parameter 'patch_internal_crypto_asset_configuration_bank_model' is set
      if @api_client.config.client_side_validation && patch_internal_crypto_asset_configuration_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'patch_internal_crypto_asset_configuration_bank_model' when calling InternalBankApi.internal_patch_crypto_asset_configuration"
      end
      # resource path
      local_var_path = '/api/internal/crypto_asset_configurations/{guid}'.sub('{' + 'guid' + '}', CGI.escape(guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(patch_internal_crypto_asset_configuration_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalCryptoAssetConfigurationBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_patch_crypto_asset_configuration",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_patch_crypto_asset_configuration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Patch Customer
    # Patch a customer.  Required scope: **internal:customers:write**
    # @param customer_guid [String] Identifier for the customer.
    # @param patch_internal_customer_bank_model [PatchInternalCustomerBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [CustomerBankModel]
    def internal_patch_customer(customer_guid, patch_internal_customer_bank_model, opts = {})
      data, _status_code, _headers = internal_patch_customer_with_http_info(customer_guid, patch_internal_customer_bank_model, opts)
      data
    end

    # Patch Customer
    # Patch a customer.  Required scope: **internal:customers:write**
    # @param customer_guid [String] Identifier for the customer.
    # @param patch_internal_customer_bank_model [PatchInternalCustomerBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CustomerBankModel, Integer, Hash)>] CustomerBankModel data, response status code and response headers
    def internal_patch_customer_with_http_info(customer_guid, patch_internal_customer_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_patch_customer ...'
      end
      # verify the required parameter 'customer_guid' is set
      if @api_client.config.client_side_validation && customer_guid.nil?
        fail ArgumentError, "Missing the required parameter 'customer_guid' when calling InternalBankApi.internal_patch_customer"
      end
      # verify the required parameter 'patch_internal_customer_bank_model' is set
      if @api_client.config.client_side_validation && patch_internal_customer_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'patch_internal_customer_bank_model' when calling InternalBankApi.internal_patch_customer"
      end
      # resource path
      local_var_path = '/api/internal/customers/{customer_guid}'.sub('{' + 'customer_guid' + '}', CGI.escape(customer_guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(patch_internal_customer_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'CustomerBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_patch_customer",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_patch_customer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Patch Cybrid Account
    # Patch an cybrid account.  Required scope: **internal:accounts:write**
    # @param guid [String] Identifier for the resource.
    # @param patch_internal_cybrid_account_bank_model [PatchInternalCybridAccountBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [InternalCybridAccountBankModel]
    def internal_patch_cybrid_account(guid, patch_internal_cybrid_account_bank_model, opts = {})
      data, _status_code, _headers = internal_patch_cybrid_account_with_http_info(guid, patch_internal_cybrid_account_bank_model, opts)
      data
    end

    # Patch Cybrid Account
    # Patch an cybrid account.  Required scope: **internal:accounts:write**
    # @param guid [String] Identifier for the resource.
    # @param patch_internal_cybrid_account_bank_model [PatchInternalCybridAccountBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalCybridAccountBankModel, Integer, Hash)>] InternalCybridAccountBankModel data, response status code and response headers
    def internal_patch_cybrid_account_with_http_info(guid, patch_internal_cybrid_account_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_patch_cybrid_account ...'
      end
      # verify the required parameter 'guid' is set
      if @api_client.config.client_side_validation && guid.nil?
        fail ArgumentError, "Missing the required parameter 'guid' when calling InternalBankApi.internal_patch_cybrid_account"
      end
      # verify the required parameter 'patch_internal_cybrid_account_bank_model' is set
      if @api_client.config.client_side_validation && patch_internal_cybrid_account_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'patch_internal_cybrid_account_bank_model' when calling InternalBankApi.internal_patch_cybrid_account"
      end
      # resource path
      local_var_path = '/api/internal/cybrid_accounts/{guid}'.sub('{' + 'guid' + '}', CGI.escape(guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(patch_internal_cybrid_account_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalCybridAccountBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_patch_cybrid_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_patch_cybrid_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Patch Deposit Address
    # Patch an deposit address.  Required scope: **internal:deposit_addresses:write**
    # @param guid [String] Identifier for the resource.
    # @param patch_internal_deposit_address_bank_model [PatchInternalDepositAddressBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [DepositAddressBankModel]
    def internal_patch_deposit_address(guid, patch_internal_deposit_address_bank_model, opts = {})
      data, _status_code, _headers = internal_patch_deposit_address_with_http_info(guid, patch_internal_deposit_address_bank_model, opts)
      data
    end

    # Patch Deposit Address
    # Patch an deposit address.  Required scope: **internal:deposit_addresses:write**
    # @param guid [String] Identifier for the resource.
    # @param patch_internal_deposit_address_bank_model [PatchInternalDepositAddressBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(DepositAddressBankModel, Integer, Hash)>] DepositAddressBankModel data, response status code and response headers
    def internal_patch_deposit_address_with_http_info(guid, patch_internal_deposit_address_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_patch_deposit_address ...'
      end
      # verify the required parameter 'guid' is set
      if @api_client.config.client_side_validation && guid.nil?
        fail ArgumentError, "Missing the required parameter 'guid' when calling InternalBankApi.internal_patch_deposit_address"
      end
      # verify the required parameter 'patch_internal_deposit_address_bank_model' is set
      if @api_client.config.client_side_validation && patch_internal_deposit_address_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'patch_internal_deposit_address_bank_model' when calling InternalBankApi.internal_patch_deposit_address"
      end
      # resource path
      local_var_path = '/api/internal/deposit_addresses/{guid}'.sub('{' + 'guid' + '}', CGI.escape(guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(patch_internal_deposit_address_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'DepositAddressBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_patch_deposit_address",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_patch_deposit_address\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Patch DepositBankAccount
    # Patch an deposit bank account.  Required scope: **internal:deposit_bank_accounts:write**
    # @param deposit_bank_account_guid [String] Identifier for the deposit bank account.
    # @param patch_internal_deposit_bank_account_bank_model [PatchInternalDepositBankAccountBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [DepositBankAccountBankModel]
    def internal_patch_deposit_bank_account(deposit_bank_account_guid, patch_internal_deposit_bank_account_bank_model, opts = {})
      data, _status_code, _headers = internal_patch_deposit_bank_account_with_http_info(deposit_bank_account_guid, patch_internal_deposit_bank_account_bank_model, opts)
      data
    end

    # Patch DepositBankAccount
    # Patch an deposit bank account.  Required scope: **internal:deposit_bank_accounts:write**
    # @param deposit_bank_account_guid [String] Identifier for the deposit bank account.
    # @param patch_internal_deposit_bank_account_bank_model [PatchInternalDepositBankAccountBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(DepositBankAccountBankModel, Integer, Hash)>] DepositBankAccountBankModel data, response status code and response headers
    def internal_patch_deposit_bank_account_with_http_info(deposit_bank_account_guid, patch_internal_deposit_bank_account_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_patch_deposit_bank_account ...'
      end
      # verify the required parameter 'deposit_bank_account_guid' is set
      if @api_client.config.client_side_validation && deposit_bank_account_guid.nil?
        fail ArgumentError, "Missing the required parameter 'deposit_bank_account_guid' when calling InternalBankApi.internal_patch_deposit_bank_account"
      end
      # verify the required parameter 'patch_internal_deposit_bank_account_bank_model' is set
      if @api_client.config.client_side_validation && patch_internal_deposit_bank_account_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'patch_internal_deposit_bank_account_bank_model' when calling InternalBankApi.internal_patch_deposit_bank_account"
      end
      # resource path
      local_var_path = '/api/internal/deposit_bank_accounts/{deposit_bank_account_guid}'.sub('{' + 'deposit_bank_account_guid' + '}', CGI.escape(deposit_bank_account_guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(patch_internal_deposit_bank_account_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'DepositBankAccountBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_patch_deposit_bank_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_patch_deposit_bank_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Patch Exchange Account
    # Patch an exchange account.  Required scope: **internal:accounts:write**
    # @param guid [String] Identifier for the resource.
    # @param patch_internal_exchange_account_bank_model [PatchInternalExchangeAccountBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [InternalExchangeAccountBankModel]
    def internal_patch_exchange_account(guid, patch_internal_exchange_account_bank_model, opts = {})
      data, _status_code, _headers = internal_patch_exchange_account_with_http_info(guid, patch_internal_exchange_account_bank_model, opts)
      data
    end

    # Patch Exchange Account
    # Patch an exchange account.  Required scope: **internal:accounts:write**
    # @param guid [String] Identifier for the resource.
    # @param patch_internal_exchange_account_bank_model [PatchInternalExchangeAccountBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalExchangeAccountBankModel, Integer, Hash)>] InternalExchangeAccountBankModel data, response status code and response headers
    def internal_patch_exchange_account_with_http_info(guid, patch_internal_exchange_account_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_patch_exchange_account ...'
      end
      # verify the required parameter 'guid' is set
      if @api_client.config.client_side_validation && guid.nil?
        fail ArgumentError, "Missing the required parameter 'guid' when calling InternalBankApi.internal_patch_exchange_account"
      end
      # verify the required parameter 'patch_internal_exchange_account_bank_model' is set
      if @api_client.config.client_side_validation && patch_internal_exchange_account_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'patch_internal_exchange_account_bank_model' when calling InternalBankApi.internal_patch_exchange_account"
      end
      # resource path
      local_var_path = '/api/internal/exchange_accounts/{guid}'.sub('{' + 'guid' + '}', CGI.escape(guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(patch_internal_exchange_account_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalExchangeAccountBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_patch_exchange_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_patch_exchange_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Patch ExchangeOrder
    # Patches a ExchangeOrder.Required scope: **internal:exchange_orders:write**
    # @param guid [String] Identifier for the resource.
    # @param patch_internal_exchange_order_bank_model [PatchInternalExchangeOrderBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [InternalExchangeOrderBankModel]
    def internal_patch_exchange_order(guid, patch_internal_exchange_order_bank_model, opts = {})
      data, _status_code, _headers = internal_patch_exchange_order_with_http_info(guid, patch_internal_exchange_order_bank_model, opts)
      data
    end

    # Patch ExchangeOrder
    # Patches a ExchangeOrder.Required scope: **internal:exchange_orders:write**
    # @param guid [String] Identifier for the resource.
    # @param patch_internal_exchange_order_bank_model [PatchInternalExchangeOrderBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalExchangeOrderBankModel, Integer, Hash)>] InternalExchangeOrderBankModel data, response status code and response headers
    def internal_patch_exchange_order_with_http_info(guid, patch_internal_exchange_order_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_patch_exchange_order ...'
      end
      # verify the required parameter 'guid' is set
      if @api_client.config.client_side_validation && guid.nil?
        fail ArgumentError, "Missing the required parameter 'guid' when calling InternalBankApi.internal_patch_exchange_order"
      end
      # verify the required parameter 'patch_internal_exchange_order_bank_model' is set
      if @api_client.config.client_side_validation && patch_internal_exchange_order_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'patch_internal_exchange_order_bank_model' when calling InternalBankApi.internal_patch_exchange_order"
      end
      # resource path
      local_var_path = '/api/internal/exchange_orders/{guid}'.sub('{' + 'guid' + '}', CGI.escape(guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(patch_internal_exchange_order_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalExchangeOrderBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_patch_exchange_order",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_patch_exchange_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Patch Exchange Settlement
    # Patch an exchange settlement verification.  Required scope: **internal:exchange_settlements:write**
    # @param exchange_settlement_guid [String] Identifier for the exchange settlement.
    # @param patch_internal_exchange_settlement_bank_model [PatchInternalExchangeSettlementBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [InternalCreateExchangeSettlementApproval202ResponseBankModel]
    def internal_patch_exchange_settlement(exchange_settlement_guid, patch_internal_exchange_settlement_bank_model, opts = {})
      data, _status_code, _headers = internal_patch_exchange_settlement_with_http_info(exchange_settlement_guid, patch_internal_exchange_settlement_bank_model, opts)
      data
    end

    # Patch Exchange Settlement
    # Patch an exchange settlement verification.  Required scope: **internal:exchange_settlements:write**
    # @param exchange_settlement_guid [String] Identifier for the exchange settlement.
    # @param patch_internal_exchange_settlement_bank_model [PatchInternalExchangeSettlementBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalCreateExchangeSettlementApproval202ResponseBankModel, Integer, Hash)>] InternalCreateExchangeSettlementApproval202ResponseBankModel data, response status code and response headers
    def internal_patch_exchange_settlement_with_http_info(exchange_settlement_guid, patch_internal_exchange_settlement_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_patch_exchange_settlement ...'
      end
      # verify the required parameter 'exchange_settlement_guid' is set
      if @api_client.config.client_side_validation && exchange_settlement_guid.nil?
        fail ArgumentError, "Missing the required parameter 'exchange_settlement_guid' when calling InternalBankApi.internal_patch_exchange_settlement"
      end
      # verify the required parameter 'patch_internal_exchange_settlement_bank_model' is set
      if @api_client.config.client_side_validation && patch_internal_exchange_settlement_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'patch_internal_exchange_settlement_bank_model' when calling InternalBankApi.internal_patch_exchange_settlement"
      end
      # resource path
      local_var_path = '/api/internal/exchange_settlements/{exchange_settlement_guid}'.sub('{' + 'exchange_settlement_guid' + '}', CGI.escape(exchange_settlement_guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(patch_internal_exchange_settlement_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalCreateExchangeSettlementApproval202ResponseBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_patch_exchange_settlement",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_patch_exchange_settlement\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Patch ExternalBankAccount
    # Patch an external bank account.  Required scope: **internal:accounts:write**
    # @param external_bank_account_guid [String] Identifier for the external bank account.
    # @param patch_internal_external_bank_account_bank_model [PatchInternalExternalBankAccountBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [InternalExternalBankAccountBankModel]
    def internal_patch_external_bank_account(external_bank_account_guid, patch_internal_external_bank_account_bank_model, opts = {})
      data, _status_code, _headers = internal_patch_external_bank_account_with_http_info(external_bank_account_guid, patch_internal_external_bank_account_bank_model, opts)
      data
    end

    # Patch ExternalBankAccount
    # Patch an external bank account.  Required scope: **internal:accounts:write**
    # @param external_bank_account_guid [String] Identifier for the external bank account.
    # @param patch_internal_external_bank_account_bank_model [PatchInternalExternalBankAccountBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalExternalBankAccountBankModel, Integer, Hash)>] InternalExternalBankAccountBankModel data, response status code and response headers
    def internal_patch_external_bank_account_with_http_info(external_bank_account_guid, patch_internal_external_bank_account_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_patch_external_bank_account ...'
      end
      # verify the required parameter 'external_bank_account_guid' is set
      if @api_client.config.client_side_validation && external_bank_account_guid.nil?
        fail ArgumentError, "Missing the required parameter 'external_bank_account_guid' when calling InternalBankApi.internal_patch_external_bank_account"
      end
      # verify the required parameter 'patch_internal_external_bank_account_bank_model' is set
      if @api_client.config.client_side_validation && patch_internal_external_bank_account_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'patch_internal_external_bank_account_bank_model' when calling InternalBankApi.internal_patch_external_bank_account"
      end
      # resource path
      local_var_path = '/api/internal/external_bank_accounts/{external_bank_account_guid}'.sub('{' + 'external_bank_account_guid' + '}', CGI.escape(external_bank_account_guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(patch_internal_external_bank_account_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalExternalBankAccountBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_patch_external_bank_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_patch_external_bank_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Patch ExternalWallet
    # Patch an transfer.  Required scope: **internal:accounts:write**
    # @param external_wallet_guid [String] Identifier for the external wallet.
    # @param patch_internal_external_wallet_bank_model [PatchInternalExternalWalletBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [InternalExternalWalletBankModel]
    def internal_patch_external_wallet(external_wallet_guid, patch_internal_external_wallet_bank_model, opts = {})
      data, _status_code, _headers = internal_patch_external_wallet_with_http_info(external_wallet_guid, patch_internal_external_wallet_bank_model, opts)
      data
    end

    # Patch ExternalWallet
    # Patch an transfer.  Required scope: **internal:accounts:write**
    # @param external_wallet_guid [String] Identifier for the external wallet.
    # @param patch_internal_external_wallet_bank_model [PatchInternalExternalWalletBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalExternalWalletBankModel, Integer, Hash)>] InternalExternalWalletBankModel data, response status code and response headers
    def internal_patch_external_wallet_with_http_info(external_wallet_guid, patch_internal_external_wallet_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_patch_external_wallet ...'
      end
      # verify the required parameter 'external_wallet_guid' is set
      if @api_client.config.client_side_validation && external_wallet_guid.nil?
        fail ArgumentError, "Missing the required parameter 'external_wallet_guid' when calling InternalBankApi.internal_patch_external_wallet"
      end
      # verify the required parameter 'patch_internal_external_wallet_bank_model' is set
      if @api_client.config.client_side_validation && patch_internal_external_wallet_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'patch_internal_external_wallet_bank_model' when calling InternalBankApi.internal_patch_external_wallet"
      end
      # resource path
      local_var_path = '/api/internal/external_wallets/{external_wallet_guid}'.sub('{' + 'external_wallet_guid' + '}', CGI.escape(external_wallet_guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(patch_internal_external_wallet_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalExternalWalletBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_patch_external_wallet",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_patch_external_wallet\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Patch External Wallet Screening
    # Patch an external wallet screening.  Required scope: **internal:external_wallet_screenings:write**
    # @param external_wallet_screening_guid [String] Identifier for the external wallet screening.
    # @param patch_internal_external_wallet_screening_bank_model [PatchInternalExternalWalletScreeningBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [InternalExternalWalletScreeningBankModel]
    def internal_patch_external_wallet_screening(external_wallet_screening_guid, patch_internal_external_wallet_screening_bank_model, opts = {})
      data, _status_code, _headers = internal_patch_external_wallet_screening_with_http_info(external_wallet_screening_guid, patch_internal_external_wallet_screening_bank_model, opts)
      data
    end

    # Patch External Wallet Screening
    # Patch an external wallet screening.  Required scope: **internal:external_wallet_screenings:write**
    # @param external_wallet_screening_guid [String] Identifier for the external wallet screening.
    # @param patch_internal_external_wallet_screening_bank_model [PatchInternalExternalWalletScreeningBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalExternalWalletScreeningBankModel, Integer, Hash)>] InternalExternalWalletScreeningBankModel data, response status code and response headers
    def internal_patch_external_wallet_screening_with_http_info(external_wallet_screening_guid, patch_internal_external_wallet_screening_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_patch_external_wallet_screening ...'
      end
      # verify the required parameter 'external_wallet_screening_guid' is set
      if @api_client.config.client_side_validation && external_wallet_screening_guid.nil?
        fail ArgumentError, "Missing the required parameter 'external_wallet_screening_guid' when calling InternalBankApi.internal_patch_external_wallet_screening"
      end
      # verify the required parameter 'patch_internal_external_wallet_screening_bank_model' is set
      if @api_client.config.client_side_validation && patch_internal_external_wallet_screening_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'patch_internal_external_wallet_screening_bank_model' when calling InternalBankApi.internal_patch_external_wallet_screening"
      end
      # resource path
      local_var_path = '/api/internal/external_wallet_screenings/{external_wallet_screening_guid}'.sub('{' + 'external_wallet_screening_guid' + '}', CGI.escape(external_wallet_screening_guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(patch_internal_external_wallet_screening_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalExternalWalletScreeningBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_patch_external_wallet_screening",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_patch_external_wallet_screening\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Patch Fee
    # Patches a Fee.Required scope: **internal:fees:write**
    # @param guid [String] Identifier for the resource.
    # @param patch_internal_fee_charge_bank_model [PatchInternalFeeChargeBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [InternalFeeChargeBankModel]
    def internal_patch_fee(guid, patch_internal_fee_charge_bank_model, opts = {})
      data, _status_code, _headers = internal_patch_fee_with_http_info(guid, patch_internal_fee_charge_bank_model, opts)
      data
    end

    # Patch Fee
    # Patches a Fee.Required scope: **internal:fees:write**
    # @param guid [String] Identifier for the resource.
    # @param patch_internal_fee_charge_bank_model [PatchInternalFeeChargeBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalFeeChargeBankModel, Integer, Hash)>] InternalFeeChargeBankModel data, response status code and response headers
    def internal_patch_fee_with_http_info(guid, patch_internal_fee_charge_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_patch_fee ...'
      end
      # verify the required parameter 'guid' is set
      if @api_client.config.client_side_validation && guid.nil?
        fail ArgumentError, "Missing the required parameter 'guid' when calling InternalBankApi.internal_patch_fee"
      end
      # verify the required parameter 'patch_internal_fee_charge_bank_model' is set
      if @api_client.config.client_side_validation && patch_internal_fee_charge_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'patch_internal_fee_charge_bank_model' when calling InternalBankApi.internal_patch_fee"
      end
      # resource path
      local_var_path = '/api/internal/fees/{guid}'.sub('{' + 'guid' + '}', CGI.escape(guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(patch_internal_fee_charge_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalFeeChargeBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_patch_fee",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_patch_fee\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Patch Files
    # Patch an file.  Required scope: **internal:files:write**
    # @param file_guid [String] Identifier for the file.
    # @param patch_internal_file_bank_model [PatchInternalFileBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [PlatformFileBankModel]
    def internal_patch_files(file_guid, patch_internal_file_bank_model, opts = {})
      data, _status_code, _headers = internal_patch_files_with_http_info(file_guid, patch_internal_file_bank_model, opts)
      data
    end

    # Patch Files
    # Patch an file.  Required scope: **internal:files:write**
    # @param file_guid [String] Identifier for the file.
    # @param patch_internal_file_bank_model [PatchInternalFileBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PlatformFileBankModel, Integer, Hash)>] PlatformFileBankModel data, response status code and response headers
    def internal_patch_files_with_http_info(file_guid, patch_internal_file_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_patch_files ...'
      end
      # verify the required parameter 'file_guid' is set
      if @api_client.config.client_side_validation && file_guid.nil?
        fail ArgumentError, "Missing the required parameter 'file_guid' when calling InternalBankApi.internal_patch_files"
      end
      # verify the required parameter 'patch_internal_file_bank_model' is set
      if @api_client.config.client_side_validation && patch_internal_file_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'patch_internal_file_bank_model' when calling InternalBankApi.internal_patch_files"
      end
      # resource path
      local_var_path = '/api/internal/files/{file_guid}'.sub('{' + 'file_guid' + '}', CGI.escape(file_guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(patch_internal_file_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'PlatformFileBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_patch_files",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_patch_files\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Patch Identity Verification
    # Patch an identity verification.  Required scope: **internal:identity_verifications:write**
    # @param identity_verification_guid [String] Identifier for the identity verification.
    # @param patch_internal_identity_verification_bank_model [PatchInternalIdentityVerificationBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [IdentityVerificationBankModel]
    def internal_patch_identity_verification(identity_verification_guid, patch_internal_identity_verification_bank_model, opts = {})
      data, _status_code, _headers = internal_patch_identity_verification_with_http_info(identity_verification_guid, patch_internal_identity_verification_bank_model, opts)
      data
    end

    # Patch Identity Verification
    # Patch an identity verification.  Required scope: **internal:identity_verifications:write**
    # @param identity_verification_guid [String] Identifier for the identity verification.
    # @param patch_internal_identity_verification_bank_model [PatchInternalIdentityVerificationBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(IdentityVerificationBankModel, Integer, Hash)>] IdentityVerificationBankModel data, response status code and response headers
    def internal_patch_identity_verification_with_http_info(identity_verification_guid, patch_internal_identity_verification_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_patch_identity_verification ...'
      end
      # verify the required parameter 'identity_verification_guid' is set
      if @api_client.config.client_side_validation && identity_verification_guid.nil?
        fail ArgumentError, "Missing the required parameter 'identity_verification_guid' when calling InternalBankApi.internal_patch_identity_verification"
      end
      # verify the required parameter 'patch_internal_identity_verification_bank_model' is set
      if @api_client.config.client_side_validation && patch_internal_identity_verification_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'patch_internal_identity_verification_bank_model' when calling InternalBankApi.internal_patch_identity_verification"
      end
      # resource path
      local_var_path = '/api/internal/identity_verifications/{identity_verification_guid}'.sub('{' + 'identity_verification_guid' + '}', CGI.escape(identity_verification_guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(patch_internal_identity_verification_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'IdentityVerificationBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_patch_identity_verification",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_patch_identity_verification\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Patch Internal Bank Account
    # Patch an internal bank account.  Required scope: **internal:accounts:write**
    # @param guid [String] Identifier for the resource.
    # @param patch_internal_internal_bank_account_bank_model [PatchInternalInternalBankAccountBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [InternalInternalBankAccountBankModel]
    def internal_patch_internal_bank_account(guid, patch_internal_internal_bank_account_bank_model, opts = {})
      data, _status_code, _headers = internal_patch_internal_bank_account_with_http_info(guid, patch_internal_internal_bank_account_bank_model, opts)
      data
    end

    # Patch Internal Bank Account
    # Patch an internal bank account.  Required scope: **internal:accounts:write**
    # @param guid [String] Identifier for the resource.
    # @param patch_internal_internal_bank_account_bank_model [PatchInternalInternalBankAccountBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalInternalBankAccountBankModel, Integer, Hash)>] InternalInternalBankAccountBankModel data, response status code and response headers
    def internal_patch_internal_bank_account_with_http_info(guid, patch_internal_internal_bank_account_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_patch_internal_bank_account ...'
      end
      # verify the required parameter 'guid' is set
      if @api_client.config.client_side_validation && guid.nil?
        fail ArgumentError, "Missing the required parameter 'guid' when calling InternalBankApi.internal_patch_internal_bank_account"
      end
      # verify the required parameter 'patch_internal_internal_bank_account_bank_model' is set
      if @api_client.config.client_side_validation && patch_internal_internal_bank_account_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'patch_internal_internal_bank_account_bank_model' when calling InternalBankApi.internal_patch_internal_bank_account"
      end
      # resource path
      local_var_path = '/api/internal/internal_bank_accounts/{guid}'.sub('{' + 'guid' + '}', CGI.escape(guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(patch_internal_internal_bank_account_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalInternalBankAccountBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_patch_internal_bank_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_patch_internal_bank_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Patch Internal Wallet
    # Patch an internal wallet.  Required scope: **internal:accounts:write**
    # @param guid [String] Identifier for the resource.
    # @param patch_internal_internal_wallet_bank_model [PatchInternalInternalWalletBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [InternalInternalWalletBankModel]
    def internal_patch_internal_wallet(guid, patch_internal_internal_wallet_bank_model, opts = {})
      data, _status_code, _headers = internal_patch_internal_wallet_with_http_info(guid, patch_internal_internal_wallet_bank_model, opts)
      data
    end

    # Patch Internal Wallet
    # Patch an internal wallet.  Required scope: **internal:accounts:write**
    # @param guid [String] Identifier for the resource.
    # @param patch_internal_internal_wallet_bank_model [PatchInternalInternalWalletBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalInternalWalletBankModel, Integer, Hash)>] InternalInternalWalletBankModel data, response status code and response headers
    def internal_patch_internal_wallet_with_http_info(guid, patch_internal_internal_wallet_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_patch_internal_wallet ...'
      end
      # verify the required parameter 'guid' is set
      if @api_client.config.client_side_validation && guid.nil?
        fail ArgumentError, "Missing the required parameter 'guid' when calling InternalBankApi.internal_patch_internal_wallet"
      end
      # verify the required parameter 'patch_internal_internal_wallet_bank_model' is set
      if @api_client.config.client_side_validation && patch_internal_internal_wallet_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'patch_internal_internal_wallet_bank_model' when calling InternalBankApi.internal_patch_internal_wallet"
      end
      # resource path
      local_var_path = '/api/internal/internal_wallets/{guid}'.sub('{' + 'guid' + '}', CGI.escape(guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(patch_internal_internal_wallet_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalInternalWalletBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_patch_internal_wallet",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_patch_internal_wallet\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Patch Internal Wallet
    # Patch an internal wallet.  Required scope: **internal:accounts:write**
    # @param guid [String] Identifier for the resource.
    # @param patch_internal_internal_wallet_group_bank_model [PatchInternalInternalWalletGroupBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [InternalInternalWalletGroupBankModel]
    def internal_patch_internal_wallet_group(guid, patch_internal_internal_wallet_group_bank_model, opts = {})
      data, _status_code, _headers = internal_patch_internal_wallet_group_with_http_info(guid, patch_internal_internal_wallet_group_bank_model, opts)
      data
    end

    # Patch Internal Wallet
    # Patch an internal wallet.  Required scope: **internal:accounts:write**
    # @param guid [String] Identifier for the resource.
    # @param patch_internal_internal_wallet_group_bank_model [PatchInternalInternalWalletGroupBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalInternalWalletGroupBankModel, Integer, Hash)>] InternalInternalWalletGroupBankModel data, response status code and response headers
    def internal_patch_internal_wallet_group_with_http_info(guid, patch_internal_internal_wallet_group_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_patch_internal_wallet_group ...'
      end
      # verify the required parameter 'guid' is set
      if @api_client.config.client_side_validation && guid.nil?
        fail ArgumentError, "Missing the required parameter 'guid' when calling InternalBankApi.internal_patch_internal_wallet_group"
      end
      # verify the required parameter 'patch_internal_internal_wallet_group_bank_model' is set
      if @api_client.config.client_side_validation && patch_internal_internal_wallet_group_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'patch_internal_internal_wallet_group_bank_model' when calling InternalBankApi.internal_patch_internal_wallet_group"
      end
      # resource path
      local_var_path = '/api/internal/internal_wallet_groups/{guid}'.sub('{' + 'guid' + '}', CGI.escape(guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(patch_internal_internal_wallet_group_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalInternalWalletGroupBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_patch_internal_wallet_group",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_patch_internal_wallet_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Patch Invoice
    # Patch an invoice.  Required scope: **internal:invoices:write**
    # @param invoice_guid [String] Identifier for the invoice.
    # @param patch_internal_invoice_bank_model [PatchInternalInvoiceBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [InternalInvoiceBankModel]
    def internal_patch_invoice(invoice_guid, patch_internal_invoice_bank_model, opts = {})
      data, _status_code, _headers = internal_patch_invoice_with_http_info(invoice_guid, patch_internal_invoice_bank_model, opts)
      data
    end

    # Patch Invoice
    # Patch an invoice.  Required scope: **internal:invoices:write**
    # @param invoice_guid [String] Identifier for the invoice.
    # @param patch_internal_invoice_bank_model [PatchInternalInvoiceBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalInvoiceBankModel, Integer, Hash)>] InternalInvoiceBankModel data, response status code and response headers
    def internal_patch_invoice_with_http_info(invoice_guid, patch_internal_invoice_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_patch_invoice ...'
      end
      # verify the required parameter 'invoice_guid' is set
      if @api_client.config.client_side_validation && invoice_guid.nil?
        fail ArgumentError, "Missing the required parameter 'invoice_guid' when calling InternalBankApi.internal_patch_invoice"
      end
      # verify the required parameter 'patch_internal_invoice_bank_model' is set
      if @api_client.config.client_side_validation && patch_internal_invoice_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'patch_internal_invoice_bank_model' when calling InternalBankApi.internal_patch_invoice"
      end
      # resource path
      local_var_path = '/api/internal/invoices/{invoice_guid}'.sub('{' + 'invoice_guid' + '}', CGI.escape(invoice_guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(patch_internal_invoice_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalInvoiceBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_patch_invoice",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_patch_invoice\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Patch Payment Instruction
    # Patch an payment instruction.  Required scope: **internal:invoices:write**
    # @param guid [String] Identifier for the resource.
    # @param patch_internal_payment_instruction_bank_model [PatchInternalPaymentInstructionBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [PaymentInstructionBankModel]
    def internal_patch_payment_instruction(guid, patch_internal_payment_instruction_bank_model, opts = {})
      data, _status_code, _headers = internal_patch_payment_instruction_with_http_info(guid, patch_internal_payment_instruction_bank_model, opts)
      data
    end

    # Patch Payment Instruction
    # Patch an payment instruction.  Required scope: **internal:invoices:write**
    # @param guid [String] Identifier for the resource.
    # @param patch_internal_payment_instruction_bank_model [PatchInternalPaymentInstructionBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PaymentInstructionBankModel, Integer, Hash)>] PaymentInstructionBankModel data, response status code and response headers
    def internal_patch_payment_instruction_with_http_info(guid, patch_internal_payment_instruction_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_patch_payment_instruction ...'
      end
      # verify the required parameter 'guid' is set
      if @api_client.config.client_side_validation && guid.nil?
        fail ArgumentError, "Missing the required parameter 'guid' when calling InternalBankApi.internal_patch_payment_instruction"
      end
      # verify the required parameter 'patch_internal_payment_instruction_bank_model' is set
      if @api_client.config.client_side_validation && patch_internal_payment_instruction_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'patch_internal_payment_instruction_bank_model' when calling InternalBankApi.internal_patch_payment_instruction"
      end
      # resource path
      local_var_path = '/api/internal/payment_instructions/{guid}'.sub('{' + 'guid' + '}', CGI.escape(guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(patch_internal_payment_instruction_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'PaymentInstructionBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_patch_payment_instruction",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_patch_payment_instruction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Patch Person Details
    # Patch a person details record.  Required scope: **internal:customers:write**
    # @param guid [String] Identifier for the resource.
    # @param patch_internal_person_detail_bank_model [PatchInternalPersonDetailBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [InternalPersonDetailBankModel]
    def internal_patch_person_detail(guid, patch_internal_person_detail_bank_model, opts = {})
      data, _status_code, _headers = internal_patch_person_detail_with_http_info(guid, patch_internal_person_detail_bank_model, opts)
      data
    end

    # Patch Person Details
    # Patch a person details record.  Required scope: **internal:customers:write**
    # @param guid [String] Identifier for the resource.
    # @param patch_internal_person_detail_bank_model [PatchInternalPersonDetailBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalPersonDetailBankModel, Integer, Hash)>] InternalPersonDetailBankModel data, response status code and response headers
    def internal_patch_person_detail_with_http_info(guid, patch_internal_person_detail_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_patch_person_detail ...'
      end
      # verify the required parameter 'guid' is set
      if @api_client.config.client_side_validation && guid.nil?
        fail ArgumentError, "Missing the required parameter 'guid' when calling InternalBankApi.internal_patch_person_detail"
      end
      # verify the required parameter 'patch_internal_person_detail_bank_model' is set
      if @api_client.config.client_side_validation && patch_internal_person_detail_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'patch_internal_person_detail_bank_model' when calling InternalBankApi.internal_patch_person_detail"
      end
      # resource path
      local_var_path = '/api/internal/person_details/{guid}'.sub('{' + 'guid' + '}', CGI.escape(guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(patch_internal_person_detail_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalPersonDetailBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_patch_person_detail",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_patch_person_detail\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Patch Trade
    # Patch a trade.  Required scope: **internal:trades:write**
    # @param trade_guid [String] Identifier for the trade.
    # @param patch_internal_trade_bank_model [PatchInternalTradeBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [InternalTradeBankModel]
    def internal_patch_trade(trade_guid, patch_internal_trade_bank_model, opts = {})
      data, _status_code, _headers = internal_patch_trade_with_http_info(trade_guid, patch_internal_trade_bank_model, opts)
      data
    end

    # Patch Trade
    # Patch a trade.  Required scope: **internal:trades:write**
    # @param trade_guid [String] Identifier for the trade.
    # @param patch_internal_trade_bank_model [PatchInternalTradeBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalTradeBankModel, Integer, Hash)>] InternalTradeBankModel data, response status code and response headers
    def internal_patch_trade_with_http_info(trade_guid, patch_internal_trade_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_patch_trade ...'
      end
      # verify the required parameter 'trade_guid' is set
      if @api_client.config.client_side_validation && trade_guid.nil?
        fail ArgumentError, "Missing the required parameter 'trade_guid' when calling InternalBankApi.internal_patch_trade"
      end
      # verify the required parameter 'patch_internal_trade_bank_model' is set
      if @api_client.config.client_side_validation && patch_internal_trade_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'patch_internal_trade_bank_model' when calling InternalBankApi.internal_patch_trade"
      end
      # resource path
      local_var_path = '/api/internal/trades/{trade_guid}'.sub('{' + 'trade_guid' + '}', CGI.escape(trade_guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(patch_internal_trade_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalTradeBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_patch_trade",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_patch_trade\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Patch TradingSymbolConfiguration
    # Updates an trading symbol configuration.  Required scope: **internal:banks:write**
    # @param guid [String] Identifier for the trading symbol configuration.
    # @param patch_internal_trading_symbol_configuration_bank_model [PatchInternalTradingSymbolConfigurationBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [InternalTradingSymbolConfigurationBankModel]
    def internal_patch_trading_symbol_configuration(guid, patch_internal_trading_symbol_configuration_bank_model, opts = {})
      data, _status_code, _headers = internal_patch_trading_symbol_configuration_with_http_info(guid, patch_internal_trading_symbol_configuration_bank_model, opts)
      data
    end

    # Patch TradingSymbolConfiguration
    # Updates an trading symbol configuration.  Required scope: **internal:banks:write**
    # @param guid [String] Identifier for the trading symbol configuration.
    # @param patch_internal_trading_symbol_configuration_bank_model [PatchInternalTradingSymbolConfigurationBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalTradingSymbolConfigurationBankModel, Integer, Hash)>] InternalTradingSymbolConfigurationBankModel data, response status code and response headers
    def internal_patch_trading_symbol_configuration_with_http_info(guid, patch_internal_trading_symbol_configuration_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_patch_trading_symbol_configuration ...'
      end
      # verify the required parameter 'guid' is set
      if @api_client.config.client_side_validation && guid.nil?
        fail ArgumentError, "Missing the required parameter 'guid' when calling InternalBankApi.internal_patch_trading_symbol_configuration"
      end
      # verify the required parameter 'patch_internal_trading_symbol_configuration_bank_model' is set
      if @api_client.config.client_side_validation && patch_internal_trading_symbol_configuration_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'patch_internal_trading_symbol_configuration_bank_model' when calling InternalBankApi.internal_patch_trading_symbol_configuration"
      end
      # resource path
      local_var_path = '/api/internal/trading_symbol_configurations/{guid}'.sub('{' + 'guid' + '}', CGI.escape(guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(patch_internal_trading_symbol_configuration_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalTradingSymbolConfigurationBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_patch_trading_symbol_configuration",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_patch_trading_symbol_configuration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Patch Transfer
    # Patch an transfer.  Required scope: **internal:transfers:write**
    # @param transfer_guid [String] Identifier for the transfer.
    # @param patch_internal_transfer_bank_model [PatchInternalTransferBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [InternalTransferBankModel]
    def internal_patch_transfer(transfer_guid, patch_internal_transfer_bank_model, opts = {})
      data, _status_code, _headers = internal_patch_transfer_with_http_info(transfer_guid, patch_internal_transfer_bank_model, opts)
      data
    end

    # Patch Transfer
    # Patch an transfer.  Required scope: **internal:transfers:write**
    # @param transfer_guid [String] Identifier for the transfer.
    # @param patch_internal_transfer_bank_model [PatchInternalTransferBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalTransferBankModel, Integer, Hash)>] InternalTransferBankModel data, response status code and response headers
    def internal_patch_transfer_with_http_info(transfer_guid, patch_internal_transfer_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_patch_transfer ...'
      end
      # verify the required parameter 'transfer_guid' is set
      if @api_client.config.client_side_validation && transfer_guid.nil?
        fail ArgumentError, "Missing the required parameter 'transfer_guid' when calling InternalBankApi.internal_patch_transfer"
      end
      # verify the required parameter 'patch_internal_transfer_bank_model' is set
      if @api_client.config.client_side_validation && patch_internal_transfer_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'patch_internal_transfer_bank_model' when calling InternalBankApi.internal_patch_transfer"
      end
      # resource path
      local_var_path = '/api/internal/transfers/{transfer_guid}'.sub('{' + 'transfer_guid' + '}', CGI.escape(transfer_guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(patch_internal_transfer_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalTransferBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_patch_transfer",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_patch_transfer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Patch External Wallet Screening
    # Patch an transfer screening.  Required scope: **internal:transfer_screenings:write**
    # @param transfer_screening_guid [String] Identifier for the transfer screening.
    # @param patch_internal_transfer_screening_bank_model [PatchInternalTransferScreeningBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [InternalTransferScreeningBankModel]
    def internal_patch_transfer_screening(transfer_screening_guid, patch_internal_transfer_screening_bank_model, opts = {})
      data, _status_code, _headers = internal_patch_transfer_screening_with_http_info(transfer_screening_guid, patch_internal_transfer_screening_bank_model, opts)
      data
    end

    # Patch External Wallet Screening
    # Patch an transfer screening.  Required scope: **internal:transfer_screenings:write**
    # @param transfer_screening_guid [String] Identifier for the transfer screening.
    # @param patch_internal_transfer_screening_bank_model [PatchInternalTransferScreeningBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalTransferScreeningBankModel, Integer, Hash)>] InternalTransferScreeningBankModel data, response status code and response headers
    def internal_patch_transfer_screening_with_http_info(transfer_screening_guid, patch_internal_transfer_screening_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_patch_transfer_screening ...'
      end
      # verify the required parameter 'transfer_screening_guid' is set
      if @api_client.config.client_side_validation && transfer_screening_guid.nil?
        fail ArgumentError, "Missing the required parameter 'transfer_screening_guid' when calling InternalBankApi.internal_patch_transfer_screening"
      end
      # verify the required parameter 'patch_internal_transfer_screening_bank_model' is set
      if @api_client.config.client_side_validation && patch_internal_transfer_screening_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'patch_internal_transfer_screening_bank_model' when calling InternalBankApi.internal_patch_transfer_screening"
      end
      # resource path
      local_var_path = '/api/internal/transfer_screenings/{transfer_screening_guid}'.sub('{' + 'transfer_screening_guid' + '}', CGI.escape(transfer_screening_guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(patch_internal_transfer_screening_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalTransferScreeningBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_patch_transfer_screening",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_patch_transfer_screening\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Patch Internal Wallet
    # Patch an internal wallet.  Required scope: **internal:wallet_services:write**
    # @param guid [String] Identifier for the resource.
    # @param patch_internal_wallet_service_bank_model [PatchInternalWalletServiceBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [InternalWalletServiceBankModel]
    def internal_patch_wallet_service(guid, patch_internal_wallet_service_bank_model, opts = {})
      data, _status_code, _headers = internal_patch_wallet_service_with_http_info(guid, patch_internal_wallet_service_bank_model, opts)
      data
    end

    # Patch Internal Wallet
    # Patch an internal wallet.  Required scope: **internal:wallet_services:write**
    # @param guid [String] Identifier for the resource.
    # @param patch_internal_wallet_service_bank_model [PatchInternalWalletServiceBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalWalletServiceBankModel, Integer, Hash)>] InternalWalletServiceBankModel data, response status code and response headers
    def internal_patch_wallet_service_with_http_info(guid, patch_internal_wallet_service_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_patch_wallet_service ...'
      end
      # verify the required parameter 'guid' is set
      if @api_client.config.client_side_validation && guid.nil?
        fail ArgumentError, "Missing the required parameter 'guid' when calling InternalBankApi.internal_patch_wallet_service"
      end
      # verify the required parameter 'patch_internal_wallet_service_bank_model' is set
      if @api_client.config.client_side_validation && patch_internal_wallet_service_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'patch_internal_wallet_service_bank_model' when calling InternalBankApi.internal_patch_wallet_service"
      end
      # resource path
      local_var_path = '/api/internal/wallet_services/{guid}'.sub('{' + 'guid' + '}', CGI.escape(guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(patch_internal_wallet_service_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalWalletServiceBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_patch_wallet_service",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_patch_wallet_service\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Patch Workflow
    # Patch an workflow.  Required scope: **internal:workflows:write**
    # @param workflow_guid [String] Identifier for the workflow.
    # @param patch_internal_workflow_bank_model [PatchInternalWorkflowBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [WorkflowBankModel]
    def internal_patch_workflow(workflow_guid, patch_internal_workflow_bank_model, opts = {})
      data, _status_code, _headers = internal_patch_workflow_with_http_info(workflow_guid, patch_internal_workflow_bank_model, opts)
      data
    end

    # Patch Workflow
    # Patch an workflow.  Required scope: **internal:workflows:write**
    # @param workflow_guid [String] Identifier for the workflow.
    # @param patch_internal_workflow_bank_model [PatchInternalWorkflowBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(WorkflowBankModel, Integer, Hash)>] WorkflowBankModel data, response status code and response headers
    def internal_patch_workflow_with_http_info(workflow_guid, patch_internal_workflow_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_patch_workflow ...'
      end
      # verify the required parameter 'workflow_guid' is set
      if @api_client.config.client_side_validation && workflow_guid.nil?
        fail ArgumentError, "Missing the required parameter 'workflow_guid' when calling InternalBankApi.internal_patch_workflow"
      end
      # verify the required parameter 'patch_internal_workflow_bank_model' is set
      if @api_client.config.client_side_validation && patch_internal_workflow_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'patch_internal_workflow_bank_model' when calling InternalBankApi.internal_patch_workflow"
      end
      # resource path
      local_var_path = '/api/internal/workflows/{workflow_guid}'.sub('{' + 'workflow_guid' + '}', CGI.escape(workflow_guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(patch_internal_workflow_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'WorkflowBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_patch_workflow",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_patch_workflow\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Signal External Wallet Screening
    # Signal an external wallet screening with a outcome.  Required scope: **internal:external_wallet_screenings:write**
    # @param external_wallet_screening_guid [String] Identifier for the external wallet screening.
    # @param post_signal_internal_external_wallet_screening_bank_model [PostSignalInternalExternalWalletScreeningBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [InternalExternalWalletScreeningBankModel]
    def internal_signal_external_wallet_screening(external_wallet_screening_guid, post_signal_internal_external_wallet_screening_bank_model, opts = {})
      data, _status_code, _headers = internal_signal_external_wallet_screening_with_http_info(external_wallet_screening_guid, post_signal_internal_external_wallet_screening_bank_model, opts)
      data
    end

    # Signal External Wallet Screening
    # Signal an external wallet screening with a outcome.  Required scope: **internal:external_wallet_screenings:write**
    # @param external_wallet_screening_guid [String] Identifier for the external wallet screening.
    # @param post_signal_internal_external_wallet_screening_bank_model [PostSignalInternalExternalWalletScreeningBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalExternalWalletScreeningBankModel, Integer, Hash)>] InternalExternalWalletScreeningBankModel data, response status code and response headers
    def internal_signal_external_wallet_screening_with_http_info(external_wallet_screening_guid, post_signal_internal_external_wallet_screening_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_signal_external_wallet_screening ...'
      end
      # verify the required parameter 'external_wallet_screening_guid' is set
      if @api_client.config.client_side_validation && external_wallet_screening_guid.nil?
        fail ArgumentError, "Missing the required parameter 'external_wallet_screening_guid' when calling InternalBankApi.internal_signal_external_wallet_screening"
      end
      # verify the required parameter 'post_signal_internal_external_wallet_screening_bank_model' is set
      if @api_client.config.client_side_validation && post_signal_internal_external_wallet_screening_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'post_signal_internal_external_wallet_screening_bank_model' when calling InternalBankApi.internal_signal_external_wallet_screening"
      end
      # resource path
      local_var_path = '/api/internal/external_wallet_screenings/{external_wallet_screening_guid}/signal'.sub('{' + 'external_wallet_screening_guid' + '}', CGI.escape(external_wallet_screening_guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(post_signal_internal_external_wallet_screening_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalExternalWalletScreeningBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_signal_external_wallet_screening",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_signal_external_wallet_screening\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Signal Identity Verification
    # Signal an identity verification with a decision.  Required scope: **internal:identity_verifications:write**
    # @param identity_verification_guid [String] Identifier for the identity verification.
    # @param post_signal_internal_identity_verification_bank_model [PostSignalInternalIdentityVerificationBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [IdentityVerificationBankModel]
    def internal_signal_identity_verification(identity_verification_guid, post_signal_internal_identity_verification_bank_model, opts = {})
      data, _status_code, _headers = internal_signal_identity_verification_with_http_info(identity_verification_guid, post_signal_internal_identity_verification_bank_model, opts)
      data
    end

    # Signal Identity Verification
    # Signal an identity verification with a decision.  Required scope: **internal:identity_verifications:write**
    # @param identity_verification_guid [String] Identifier for the identity verification.
    # @param post_signal_internal_identity_verification_bank_model [PostSignalInternalIdentityVerificationBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(IdentityVerificationBankModel, Integer, Hash)>] IdentityVerificationBankModel data, response status code and response headers
    def internal_signal_identity_verification_with_http_info(identity_verification_guid, post_signal_internal_identity_verification_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_signal_identity_verification ...'
      end
      # verify the required parameter 'identity_verification_guid' is set
      if @api_client.config.client_side_validation && identity_verification_guid.nil?
        fail ArgumentError, "Missing the required parameter 'identity_verification_guid' when calling InternalBankApi.internal_signal_identity_verification"
      end
      # verify the required parameter 'post_signal_internal_identity_verification_bank_model' is set
      if @api_client.config.client_side_validation && post_signal_internal_identity_verification_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'post_signal_internal_identity_verification_bank_model' when calling InternalBankApi.internal_signal_identity_verification"
      end
      # resource path
      local_var_path = '/api/internal/identity_verifications/{identity_verification_guid}/signal'.sub('{' + 'identity_verification_guid' + '}', CGI.escape(identity_verification_guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(post_signal_internal_identity_verification_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'IdentityVerificationBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_signal_identity_verification",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_signal_identity_verification\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Signal Invoice
    # Signal an invoice to complete settlment.  Required scope: **internal:invoices:write**
    # @param invoice_guid [String] Identifier for the invoice.
    # @param [Hash] opts the optional parameters
    # @return [InternalInvoiceBankModel]
    def internal_signal_invoice(invoice_guid, opts = {})
      data, _status_code, _headers = internal_signal_invoice_with_http_info(invoice_guid, opts)
      data
    end

    # Signal Invoice
    # Signal an invoice to complete settlment.  Required scope: **internal:invoices:write**
    # @param invoice_guid [String] Identifier for the invoice.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalInvoiceBankModel, Integer, Hash)>] InternalInvoiceBankModel data, response status code and response headers
    def internal_signal_invoice_with_http_info(invoice_guid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_signal_invoice ...'
      end
      # verify the required parameter 'invoice_guid' is set
      if @api_client.config.client_side_validation && invoice_guid.nil?
        fail ArgumentError, "Missing the required parameter 'invoice_guid' when calling InternalBankApi.internal_signal_invoice"
      end
      # resource path
      local_var_path = '/api/internal/invoices/{invoice_guid}/signal'.sub('{' + 'invoice_guid' + '}', CGI.escape(invoice_guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InternalInvoiceBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_signal_invoice",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_signal_invoice\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Signal Transfer
    # Signal an transfer to proceed.  Required scope: **internal:transfers:write**
    # @param transfer_guid [String] Identifier for the transfer.
    # @param [Hash] opts the optional parameters
    # @return [TransferBankModel]
    def internal_signal_transfer(transfer_guid, opts = {})
      data, _status_code, _headers = internal_signal_transfer_with_http_info(transfer_guid, opts)
      data
    end

    # Signal Transfer
    # Signal an transfer to proceed.  Required scope: **internal:transfers:write**
    # @param transfer_guid [String] Identifier for the transfer.
    # @param [Hash] opts the optional parameters
    # @return [Array<(TransferBankModel, Integer, Hash)>] TransferBankModel data, response status code and response headers
    def internal_signal_transfer_with_http_info(transfer_guid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.internal_signal_transfer ...'
      end
      # verify the required parameter 'transfer_guid' is set
      if @api_client.config.client_side_validation && transfer_guid.nil?
        fail ArgumentError, "Missing the required parameter 'transfer_guid' when calling InternalBankApi.internal_signal_transfer"
      end
      # resource path
      local_var_path = '/api/internal/transfers/{transfer_guid}/signal'.sub('{' + 'transfer_guid' + '}', CGI.escape(transfer_guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'TransferBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.internal_signal_transfer",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#internal_signal_transfer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Patch Execution
    # Patch an execution verification.  Required scope: **internal:executions:write**
    # @param execution_guid [String] Identifier for the execution.
    # @param patch_internal_execution_bank_model [PatchInternalExecutionBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [InternalExecutionBankModel]
    def patch_internal_execution(execution_guid, patch_internal_execution_bank_model, opts = {})
      data, _status_code, _headers = patch_internal_execution_with_http_info(execution_guid, patch_internal_execution_bank_model, opts)
      data
    end

    # Patch Execution
    # Patch an execution verification.  Required scope: **internal:executions:write**
    # @param execution_guid [String] Identifier for the execution.
    # @param patch_internal_execution_bank_model [PatchInternalExecutionBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalExecutionBankModel, Integer, Hash)>] InternalExecutionBankModel data, response status code and response headers
    def patch_internal_execution_with_http_info(execution_guid, patch_internal_execution_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.patch_internal_execution ...'
      end
      # verify the required parameter 'execution_guid' is set
      if @api_client.config.client_side_validation && execution_guid.nil?
        fail ArgumentError, "Missing the required parameter 'execution_guid' when calling InternalBankApi.patch_internal_execution"
      end
      # verify the required parameter 'patch_internal_execution_bank_model' is set
      if @api_client.config.client_side_validation && patch_internal_execution_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'patch_internal_execution_bank_model' when calling InternalBankApi.patch_internal_execution"
      end
      # resource path
      local_var_path = '/api/internal/executions/{execution_guid}'.sub('{' + 'execution_guid' + '}', CGI.escape(execution_guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(patch_internal_execution_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalExecutionBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.patch_internal_execution",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#patch_internal_execution\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Patch Plan
    # Patch an plan verification.  Required scope: **internal:plans:write**
    # @param plan_guid [String] Identifier for the plan.
    # @param patch_internal_plan_bank_model [PatchInternalPlanBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [InternalPlanBankModel]
    def patch_internal_plan(plan_guid, patch_internal_plan_bank_model, opts = {})
      data, _status_code, _headers = patch_internal_plan_with_http_info(plan_guid, patch_internal_plan_bank_model, opts)
      data
    end

    # Patch Plan
    # Patch an plan verification.  Required scope: **internal:plans:write**
    # @param plan_guid [String] Identifier for the plan.
    # @param patch_internal_plan_bank_model [PatchInternalPlanBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalPlanBankModel, Integer, Hash)>] InternalPlanBankModel data, response status code and response headers
    def patch_internal_plan_with_http_info(plan_guid, patch_internal_plan_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.patch_internal_plan ...'
      end
      # verify the required parameter 'plan_guid' is set
      if @api_client.config.client_side_validation && plan_guid.nil?
        fail ArgumentError, "Missing the required parameter 'plan_guid' when calling InternalBankApi.patch_internal_plan"
      end
      # verify the required parameter 'patch_internal_plan_bank_model' is set
      if @api_client.config.client_side_validation && patch_internal_plan_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'patch_internal_plan_bank_model' when calling InternalBankApi.patch_internal_plan"
      end
      # resource path
      local_var_path = '/api/internal/plans/{plan_guid}'.sub('{' + 'plan_guid' + '}', CGI.escape(plan_guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(patch_internal_plan_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalPlanBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.patch_internal_plan",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#patch_internal_plan\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Patch Stage
    # Patch a stage.  Required scope: **internal:plans:write**
    # @param stage_guid [String] Identifier for the stage.
    # @param patch_internal_stage_bank_model [PatchInternalStageBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [InternalStageBankModel]
    def patch_internal_stage(stage_guid, patch_internal_stage_bank_model, opts = {})
      data, _status_code, _headers = patch_internal_stage_with_http_info(stage_guid, patch_internal_stage_bank_model, opts)
      data
    end

    # Patch Stage
    # Patch a stage.  Required scope: **internal:plans:write**
    # @param stage_guid [String] Identifier for the stage.
    # @param patch_internal_stage_bank_model [PatchInternalStageBankModel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalStageBankModel, Integer, Hash)>] InternalStageBankModel data, response status code and response headers
    def patch_internal_stage_with_http_info(stage_guid, patch_internal_stage_bank_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalBankApi.patch_internal_stage ...'
      end
      # verify the required parameter 'stage_guid' is set
      if @api_client.config.client_side_validation && stage_guid.nil?
        fail ArgumentError, "Missing the required parameter 'stage_guid' when calling InternalBankApi.patch_internal_stage"
      end
      # verify the required parameter 'patch_internal_stage_bank_model' is set
      if @api_client.config.client_side_validation && patch_internal_stage_bank_model.nil?
        fail ArgumentError, "Missing the required parameter 'patch_internal_stage_bank_model' when calling InternalBankApi.patch_internal_stage"
      end
      # resource path
      local_var_path = '/api/internal/stages/{stage_guid}'.sub('{' + 'stage_guid' + '}', CGI.escape(stage_guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(patch_internal_stage_bank_model)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalStageBankModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth', 'oauth2']

      new_options = opts.merge(
        :operation => :"InternalBankApi.patch_internal_stage",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalBankApi#patch_internal_stage\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
