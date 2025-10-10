# CybridApiBank::InternalBankApi

All URIs are relative to *http://api-platform-bank.local.cybrid.com:3002*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**internal_claim_exchange_settlement_payment_order**](InternalBankApi.md#internal_claim_exchange_settlement_payment_order) | **POST** /api/internal/exchange_settlement_payment_orders/{guid}/claim | Claim Exchange Settlement Payment Order |
| [**internal_claim_expected_payment**](InternalBankApi.md#internal_claim_expected_payment) | **POST** /api/internal/expected_payments/{guid}/claim | Claim Expected Payment |
| [**internal_create_account**](InternalBankApi.md#internal_create_account) | **POST** /api/internal/accounts | Create Account |
| [**internal_create_activity_limit_configuration**](InternalBankApi.md#internal_create_activity_limit_configuration) | **POST** /api/internal/activity_limit_configurations | Create ActivityLimitConfiguration |
| [**internal_create_activity_report**](InternalBankApi.md#internal_create_activity_report) | **POST** /api/internal/activity_reports | Create Activity Report |
| [**internal_create_bank**](InternalBankApi.md#internal_create_bank) | **POST** /api/internal/banks | Create Bank |
| [**internal_create_bank_account_service**](InternalBankApi.md#internal_create_bank_account_service) | **POST** /api/internal/bank_account_services | Create BankAccountService |
| [**internal_create_compliance_decision**](InternalBankApi.md#internal_create_compliance_decision) | **POST** /api/internal/compliance_decisions | Create Compliance Decision |
| [**internal_create_country_code_configuration**](InternalBankApi.md#internal_create_country_code_configuration) | **POST** /api/internal/country_code_configurations | Create CountryCodeConfiguration |
| [**internal_create_crypto_asset_configuration**](InternalBankApi.md#internal_create_crypto_asset_configuration) | **POST** /api/internal/crypto_asset_configurations | Create CryptoAssetConfiguration |
| [**internal_create_cybrid_account**](InternalBankApi.md#internal_create_cybrid_account) | **POST** /api/internal/cybrid_accounts | Create CybridAccount |
| [**internal_create_cybrid_gas_account_configuration**](InternalBankApi.md#internal_create_cybrid_gas_account_configuration) | **POST** /api/internal/cybrid_gas_account_configurations | Create CybridGasAccountConfiguration |
| [**internal_create_deposit_bank_account**](InternalBankApi.md#internal_create_deposit_bank_account) | **POST** /api/internal/deposit_bank_accounts | Create Deposit Bank Account |
| [**internal_create_exchange**](InternalBankApi.md#internal_create_exchange) | **POST** /api/internal/exchanges | Create Exchange |
| [**internal_create_exchange_account**](InternalBankApi.md#internal_create_exchange_account) | **POST** /api/internal/exchange_accounts | Create ExchangeAccount |
| [**internal_create_exchange_monitor**](InternalBankApi.md#internal_create_exchange_monitor) | **POST** /api/internal/exchange_monitors | Create ExchangeMonitor |
| [**internal_create_exchange_order**](InternalBankApi.md#internal_create_exchange_order) | **POST** /api/internal/exchange_orders | Create ExchangeOrder |
| [**internal_create_exchange_settlement**](InternalBankApi.md#internal_create_exchange_settlement) | **POST** /api/internal/exchange_settlements | Create Exchange Settlement |
| [**internal_create_exchange_settlement_approval**](InternalBankApi.md#internal_create_exchange_settlement_approval) | **POST** /api/internal/exchange_settlements/{guid}/approval | Create Exchange Settlement Approval |
| [**internal_create_exchange_settlement_completion**](InternalBankApi.md#internal_create_exchange_settlement_completion) | **POST** /api/internal/exchange_settlements/{guid}/completion | Create Exchange Settlement Completion |
| [**internal_create_exchange_settlement_configuration**](InternalBankApi.md#internal_create_exchange_settlement_configuration) | **POST** /api/internal/exchange_settlement_configurations | Create ExchangeSettlementConfiguration |
| [**internal_create_exchange_settlement_payment_order**](InternalBankApi.md#internal_create_exchange_settlement_payment_order) | **POST** /api/internal/exchange_settlement_payment_orders | Create Exchange Settlement Payment Order |
| [**internal_create_expected_payment**](InternalBankApi.md#internal_create_expected_payment) | **POST** /api/internal/expected_payments | Create Expected Payment |
| [**internal_create_external_bank_account**](InternalBankApi.md#internal_create_external_bank_account) | **POST** /api/internal/external_bank_accounts | Create ExternalBankAccount |
| [**internal_create_external_wallet**](InternalBankApi.md#internal_create_external_wallet) | **POST** /api/internal/external_wallets | Create ExternalWallet |
| [**internal_create_fee**](InternalBankApi.md#internal_create_fee) | **POST** /api/internal/fees | Create Fee |
| [**internal_create_fee_configuration**](InternalBankApi.md#internal_create_fee_configuration) | **POST** /api/internal/fee_configurations | Create FeeConfiguration |
| [**internal_create_fiat_asset_configuration**](InternalBankApi.md#internal_create_fiat_asset_configuration) | **POST** /api/internal/fiat_asset_configurations | Create FiatAssetConfiguration |
| [**internal_create_file**](InternalBankApi.md#internal_create_file) | **POST** /api/internal/files | Create File |
| [**internal_create_internal_bank_account**](InternalBankApi.md#internal_create_internal_bank_account) | **POST** /api/internal/internal_bank_accounts | Create InternalBankAccount |
| [**internal_create_internal_bank_account_configuration**](InternalBankApi.md#internal_create_internal_bank_account_configuration) | **POST** /api/internal/internal_bank_account_configurations | Create InternalBankAccountConfiguration |
| [**internal_create_internal_wallet**](InternalBankApi.md#internal_create_internal_wallet) | **POST** /api/internal/internal_wallets | Create InternalWallet |
| [**internal_create_internal_wallet_configuration**](InternalBankApi.md#internal_create_internal_wallet_configuration) | **POST** /api/internal/internal_wallet_configurations | Create InternalWalletConfiguration |
| [**internal_create_payout_symbol_configuration**](InternalBankApi.md#internal_create_payout_symbol_configuration) | **POST** /api/internal/payout_symbol_configurations | Create PayoutSymbolConfiguration |
| [**internal_create_quote**](InternalBankApi.md#internal_create_quote) | **POST** /api/internal/quotes | Create InternalQuote |
| [**internal_create_reconciliation**](InternalBankApi.md#internal_create_reconciliation) | **POST** /api/internal/reconciliations | Create Reconciliation |
| [**internal_create_stage**](InternalBankApi.md#internal_create_stage) | **POST** /api/internal/stages | Create Stage |
| [**internal_create_trade**](InternalBankApi.md#internal_create_trade) | **POST** /api/internal/trades | Create Internal Trade |
| [**internal_create_trading_symbol_configuration**](InternalBankApi.md#internal_create_trading_symbol_configuration) | **POST** /api/internal/trading_symbol_configurations | Create TradingSymbolConfiguration |
| [**internal_create_transaction_monitor**](InternalBankApi.md#internal_create_transaction_monitor) | **POST** /api/internal/transaction_monitors | Create TransactionMonitor |
| [**internal_create_transfer**](InternalBankApi.md#internal_create_transfer) | **POST** /api/internal/transfers | Create Transfer |
| [**internal_create_transfer_rail_configuration**](InternalBankApi.md#internal_create_transfer_rail_configuration) | **POST** /api/internal/transfer_rail_configurations | Create TransferRailConfiguration |
| [**internal_create_transfer_screening**](InternalBankApi.md#internal_create_transfer_screening) | **POST** /api/internal/transfer_screenings | Create TransferScreening |
| [**internal_create_wallet_service**](InternalBankApi.md#internal_create_wallet_service) | **POST** /api/internal/wallet_services | Create WalletService |
| [**internal_crypto_funding_deposit_transfer**](InternalBankApi.md#internal_crypto_funding_deposit_transfer) | **POST** /api/internal/crypto_funding_deposit_transfers | Create Crypto Funding Deposit Transfer |
| [**internal_delete_activity_limit_configuration**](InternalBankApi.md#internal_delete_activity_limit_configuration) | **DELETE** /api/internal/activity_limit_configurations/{guid} | Delete ActivityLimitConfiguration |
| [**internal_delete_external_bank_account**](InternalBankApi.md#internal_delete_external_bank_account) | **DELETE** /api/internal/external_bank_accounts/{external_bank_account_guid} | Delete External Bank Account |
| [**internal_funding_deposit_transfer**](InternalBankApi.md#internal_funding_deposit_transfer) | **POST** /api/internal/funding_deposit_transfers | Create Funding Deposit Transfer |
| [**internal_get_bank**](InternalBankApi.md#internal_get_bank) | **GET** /api/internal/banks/{bank_guid} | Get Bank |
| [**internal_get_bank_account_service**](InternalBankApi.md#internal_get_bank_account_service) | **GET** /api/internal/bank_account_services/{bank_account_service_guid} | Get BankAccountService |
| [**internal_get_customer**](InternalBankApi.md#internal_get_customer) | **GET** /api/internal/customers/{customer_guid} | Get Customer |
| [**internal_get_cybrid_account**](InternalBankApi.md#internal_get_cybrid_account) | **GET** /api/internal/cybrid_accounts/{account_guid} | Get CybridAccount |
| [**internal_get_exchange**](InternalBankApi.md#internal_get_exchange) | **GET** /api/internal/exchanges/{exchange_guid} | Get Exchange |
| [**internal_get_exchange_account**](InternalBankApi.md#internal_get_exchange_account) | **GET** /api/internal/exchange_accounts/{account_guid} | Get ExchangeAccount |
| [**internal_get_exchange_settlement**](InternalBankApi.md#internal_get_exchange_settlement) | **GET** /api/internal/exchange_settlements/{guid} | Get Exchange Settlement |
| [**internal_get_exchange_settlement_obligation**](InternalBankApi.md#internal_get_exchange_settlement_obligation) | **GET** /api/internal/exchange_settlement_obligations/{guid} | Get Exchange Settlement Obligation |
| [**internal_get_exchange_settlement_payment_order**](InternalBankApi.md#internal_get_exchange_settlement_payment_order) | **GET** /api/internal/exchange_settlement_payment_orders/{guid} | Get Exchange Settlement Payment Order |
| [**internal_get_execution**](InternalBankApi.md#internal_get_execution) | **GET** /api/internal/executions/{execution_guid} | Get Execution |
| [**internal_get_expected_payment**](InternalBankApi.md#internal_get_expected_payment) | **GET** /api/internal/expected_payments/{guid} | Get Expected Payment |
| [**internal_get_external_bank_account**](InternalBankApi.md#internal_get_external_bank_account) | **GET** /api/internal/external_bank_accounts/{external_bank_account_guid} | Get ExternalBankAccount |
| [**internal_get_external_wallet**](InternalBankApi.md#internal_get_external_wallet) | **GET** /api/internal/external_wallets/{external_wallet_guid} | Get ExternalWallet |
| [**internal_get_external_wallet_screening**](InternalBankApi.md#internal_get_external_wallet_screening) | **GET** /api/internal/external_wallet_screenings/{external_wallet_screening_guid} | Get ExternalWalletScreening |
| [**internal_get_file**](InternalBankApi.md#internal_get_file) | **GET** /api/internal/files/{file_guid} | Get File |
| [**internal_get_internal_bank_account**](InternalBankApi.md#internal_get_internal_bank_account) | **GET** /api/internal/internal_bank_accounts/{internal_bank_account_guid} | Get InternalBankAccount |
| [**internal_get_internal_wallet**](InternalBankApi.md#internal_get_internal_wallet) | **GET** /api/internal/internal_wallets/{internal_wallet_guid} | Get InternalWallet |
| [**internal_get_invoice**](InternalBankApi.md#internal_get_invoice) | **GET** /api/internal/invoices/{invoice_guid} | Get Invoice |
| [**internal_get_plan**](InternalBankApi.md#internal_get_plan) | **GET** /api/internal/plans/{plan_guid} | Get Plan |
| [**internal_get_quote**](InternalBankApi.md#internal_get_quote) | **GET** /api/internal/quotes/{quote_guid} | Get Internal Quote |
| [**internal_get_reconciliation**](InternalBankApi.md#internal_get_reconciliation) | **GET** /api/internal/reconciliations/{guid} | Get Reconciliation |
| [**internal_get_trade**](InternalBankApi.md#internal_get_trade) | **GET** /api/internal/trades/{trade_guid} | Get Internal Trade |
| [**internal_get_transfer**](InternalBankApi.md#internal_get_transfer) | **GET** /api/internal/transfers/{guid} | Get Transfer |
| [**internal_get_transfer_screening**](InternalBankApi.md#internal_get_transfer_screening) | **GET** /api/internal/transfer_screenings/{transfer_screening_guid} | Get TransferScreening |
| [**internal_get_wallet_service**](InternalBankApi.md#internal_get_wallet_service) | **GET** /api/internal/wallet_services/{wallet_service_guid} | Get WalletService |
| [**internal_list_accounts**](InternalBankApi.md#internal_list_accounts) | **GET** /api/internal/accounts | List Accounts |
| [**internal_list_activity_limit_configurations**](InternalBankApi.md#internal_list_activity_limit_configurations) | **GET** /api/internal/activity_limit_configurations | List ActivityLimitConfigurations |
| [**internal_list_bank_account_services**](InternalBankApi.md#internal_list_bank_account_services) | **GET** /api/internal/bank_account_services | List BankAccountServices |
| [**internal_list_banks**](InternalBankApi.md#internal_list_banks) | **GET** /api/internal/banks | List Banks |
| [**internal_list_crypto_asset_configurations**](InternalBankApi.md#internal_list_crypto_asset_configurations) | **GET** /api/internal/crypto_asset_configurations | List CryptoAssetConfiguration |
| [**internal_list_customers**](InternalBankApi.md#internal_list_customers) | **GET** /api/internal/customers | List Customers |
| [**internal_list_cybrid_accounts**](InternalBankApi.md#internal_list_cybrid_accounts) | **GET** /api/internal/cybrid_accounts | List CybridAccounts |
| [**internal_list_deposit_bank_accounts**](InternalBankApi.md#internal_list_deposit_bank_accounts) | **GET** /api/internal/deposit_bank_accounts | List Deposit Bank Accounts |
| [**internal_list_exchange_orders**](InternalBankApi.md#internal_list_exchange_orders) | **GET** /api/internal/exchange_orders | List ExchangeOrder |
| [**internal_list_exchange_settlement_configurations**](InternalBankApi.md#internal_list_exchange_settlement_configurations) | **GET** /api/internal/exchange_settlement_configurations | List ExchangeSettlementConfigurations |
| [**internal_list_exchange_settlement_payment_orders**](InternalBankApi.md#internal_list_exchange_settlement_payment_orders) | **GET** /api/internal/exchange_settlement_payment_orders | List Exchange Settlement Payment Orders |
| [**internal_list_exchanges**](InternalBankApi.md#internal_list_exchanges) | **GET** /api/internal/exchanges | List Exchanges |
| [**internal_list_expected_payments**](InternalBankApi.md#internal_list_expected_payments) | **GET** /api/internal/expected_payments | List Expected Payments |
| [**internal_list_external_bank_accounts**](InternalBankApi.md#internal_list_external_bank_accounts) | **GET** /api/internal/external_bank_accounts | List ExternalBankAccounts |
| [**internal_list_external_wallets**](InternalBankApi.md#internal_list_external_wallets) | **GET** /api/internal/external_wallets | List ExternalWallets |
| [**internal_list_fee_configurations**](InternalBankApi.md#internal_list_fee_configurations) | **GET** /api/internal/fee_configurations | List FeeConfiguration |
| [**internal_list_fees**](InternalBankApi.md#internal_list_fees) | **GET** /api/internal/fees | List Fees |
| [**internal_list_internal_bank_accounts**](InternalBankApi.md#internal_list_internal_bank_accounts) | **GET** /api/internal/internal_bank_accounts | List InternalBankAccounts |
| [**internal_list_internal_wallets**](InternalBankApi.md#internal_list_internal_wallets) | **GET** /api/internal/internal_wallets | List InternalWallets |
| [**internal_list_invoices**](InternalBankApi.md#internal_list_invoices) | **GET** /api/internal/invoices | List Invoices |
| [**internal_list_reconciliations**](InternalBankApi.md#internal_list_reconciliations) | **GET** /api/internal/reconciliations | List Reconciliations |
| [**internal_list_trades**](InternalBankApi.md#internal_list_trades) | **GET** /api/internal/trades | List Trades |
| [**internal_list_trading_symbol_configurations**](InternalBankApi.md#internal_list_trading_symbol_configurations) | **GET** /api/internal/trading_symbol_configurations | List TradingSymbolConfigurations |
| [**internal_list_transactions**](InternalBankApi.md#internal_list_transactions) | **GET** /api/internal/transactions | List Transactions |
| [**internal_list_transfers**](InternalBankApi.md#internal_list_transfers) | **GET** /api/internal/transfers | List Transfers |
| [**internal_list_wallet_services**](InternalBankApi.md#internal_list_wallet_services) | **GET** /api/internal/wallet_services | List WalletServices |
| [**internal_patch_account**](InternalBankApi.md#internal_patch_account) | **PATCH** /api/internal/accounts/{account_guid} | Patch Account |
| [**internal_patch_activity_limit_configuration**](InternalBankApi.md#internal_patch_activity_limit_configuration) | **PATCH** /api/internal/activity_limit_configurations/{guid} | Patch ActivityLimitConfiguration |
| [**internal_patch_bank**](InternalBankApi.md#internal_patch_bank) | **PATCH** /api/internal/banks/{bank_guid} | Patch Bank |
| [**internal_patch_bank_account_service**](InternalBankApi.md#internal_patch_bank_account_service) | **PATCH** /api/internal/bank_account_services/{guid} | Patch Internal BankAccount |
| [**internal_patch_business_detail**](InternalBankApi.md#internal_patch_business_detail) | **PATCH** /api/internal/business_details/{guid} | Patch Business Details |
| [**internal_patch_counterparty**](InternalBankApi.md#internal_patch_counterparty) | **PATCH** /api/internal/counterparties/{counterparty_guid} | Patch Counterparty |
| [**internal_patch_crypto_asset_configuration**](InternalBankApi.md#internal_patch_crypto_asset_configuration) | **PATCH** /api/internal/crypto_asset_configurations/{guid} | Patch CryptoAssetConfiguration |
| [**internal_patch_customer**](InternalBankApi.md#internal_patch_customer) | **PATCH** /api/internal/customers/{customer_guid} | Patch Customer |
| [**internal_patch_cybrid_account**](InternalBankApi.md#internal_patch_cybrid_account) | **PATCH** /api/internal/cybrid_accounts/{guid} | Patch Cybrid Account |
| [**internal_patch_deposit_address**](InternalBankApi.md#internal_patch_deposit_address) | **PATCH** /api/internal/deposit_addresses/{guid} | Patch Deposit Address |
| [**internal_patch_deposit_bank_account**](InternalBankApi.md#internal_patch_deposit_bank_account) | **PATCH** /api/internal/deposit_bank_accounts/{deposit_bank_account_guid} | Patch DepositBankAccount |
| [**internal_patch_exchange_account**](InternalBankApi.md#internal_patch_exchange_account) | **PATCH** /api/internal/exchange_accounts/{guid} | Patch Exchange Account |
| [**internal_patch_exchange_order**](InternalBankApi.md#internal_patch_exchange_order) | **PATCH** /api/internal/exchange_orders/{guid} | Patch ExchangeOrder |
| [**internal_patch_exchange_settlement**](InternalBankApi.md#internal_patch_exchange_settlement) | **PATCH** /api/internal/exchange_settlements/{exchange_settlement_guid} | Patch Exchange Settlement |
| [**internal_patch_external_bank_account**](InternalBankApi.md#internal_patch_external_bank_account) | **PATCH** /api/internal/external_bank_accounts/{external_bank_account_guid} | Patch ExternalBankAccount |
| [**internal_patch_external_wallet**](InternalBankApi.md#internal_patch_external_wallet) | **PATCH** /api/internal/external_wallets/{external_wallet_guid} | Patch ExternalWallet |
| [**internal_patch_external_wallet_screening**](InternalBankApi.md#internal_patch_external_wallet_screening) | **PATCH** /api/internal/external_wallet_screenings/{external_wallet_screening_guid} | Patch External Wallet Screening |
| [**internal_patch_fee**](InternalBankApi.md#internal_patch_fee) | **PATCH** /api/internal/fees/{guid} | Patch Fee |
| [**internal_patch_files**](InternalBankApi.md#internal_patch_files) | **PATCH** /api/internal/files/{file_guid} | Patch Files |
| [**internal_patch_identity_verification**](InternalBankApi.md#internal_patch_identity_verification) | **PATCH** /api/internal/identity_verifications/{identity_verification_guid} | Patch Identity Verification |
| [**internal_patch_internal_bank_account**](InternalBankApi.md#internal_patch_internal_bank_account) | **PATCH** /api/internal/internal_bank_accounts/{guid} | Patch Internal Bank Account |
| [**internal_patch_internal_wallet**](InternalBankApi.md#internal_patch_internal_wallet) | **PATCH** /api/internal/internal_wallets/{guid} | Patch Internal Wallet |
| [**internal_patch_internal_wallet_group**](InternalBankApi.md#internal_patch_internal_wallet_group) | **PATCH** /api/internal/internal_wallet_groups/{guid} | Patch Internal Wallet |
| [**internal_patch_invoice**](InternalBankApi.md#internal_patch_invoice) | **PATCH** /api/internal/invoices/{invoice_guid} | Patch Invoice |
| [**internal_patch_payment_instruction**](InternalBankApi.md#internal_patch_payment_instruction) | **PATCH** /api/internal/payment_instructions/{guid} | Patch Payment Instruction |
| [**internal_patch_person_detail**](InternalBankApi.md#internal_patch_person_detail) | **PATCH** /api/internal/person_details/{guid} | Patch Person Details |
| [**internal_patch_trade**](InternalBankApi.md#internal_patch_trade) | **PATCH** /api/internal/trades/{trade_guid} | Patch Trade |
| [**internal_patch_trading_symbol_configuration**](InternalBankApi.md#internal_patch_trading_symbol_configuration) | **PATCH** /api/internal/trading_symbol_configurations/{guid} | Patch TradingSymbolConfiguration |
| [**internal_patch_transfer**](InternalBankApi.md#internal_patch_transfer) | **PATCH** /api/internal/transfers/{transfer_guid} | Patch Transfer |
| [**internal_patch_transfer_screening**](InternalBankApi.md#internal_patch_transfer_screening) | **PATCH** /api/internal/transfer_screenings/{transfer_screening_guid} | Patch External Wallet Screening |
| [**internal_patch_wallet_service**](InternalBankApi.md#internal_patch_wallet_service) | **PATCH** /api/internal/wallet_services/{guid} | Patch Internal Wallet |
| [**internal_patch_workflow**](InternalBankApi.md#internal_patch_workflow) | **PATCH** /api/internal/workflows/{workflow_guid} | Patch Workflow |
| [**internal_signal_external_wallet_screening**](InternalBankApi.md#internal_signal_external_wallet_screening) | **POST** /api/internal/external_wallet_screenings/{external_wallet_screening_guid}/signal | Signal External Wallet Screening |
| [**internal_signal_identity_verification**](InternalBankApi.md#internal_signal_identity_verification) | **POST** /api/internal/identity_verifications/{identity_verification_guid}/signal | Signal Identity Verification |
| [**internal_signal_invoice**](InternalBankApi.md#internal_signal_invoice) | **POST** /api/internal/invoices/{invoice_guid}/signal | Signal Invoice |
| [**internal_signal_transfer**](InternalBankApi.md#internal_signal_transfer) | **POST** /api/internal/transfers/{transfer_guid}/signal | Signal Transfer |
| [**patch_internal_execution**](InternalBankApi.md#patch_internal_execution) | **PATCH** /api/internal/executions/{execution_guid} | Patch Execution |
| [**patch_internal_plan**](InternalBankApi.md#patch_internal_plan) | **PATCH** /api/internal/plans/{plan_guid} | Patch Plan |
| [**patch_internal_stage**](InternalBankApi.md#patch_internal_stage) | **PATCH** /api/internal/stages/{stage_guid} | Patch Stage |


## internal_claim_exchange_settlement_payment_order

> <InternalExchangeSettlementPaymentOrderBankModel> internal_claim_exchange_settlement_payment_order(guid, post_internal_claim_exchange_settlement_payment_order_bank_model)

Claim Exchange Settlement Payment Order

Claim an Exchange Settlement Payment Order.  Required scope: **internal:exchange_settlements:write**

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

api_instance = CybridApiBank::InternalBankApi.new
guid = 'guid_example' # String | Identifier for the exchange settlement expected payment.
post_internal_claim_exchange_settlement_payment_order_bank_model = CybridApiBank::PostInternalClaimExchangeSettlementPaymentOrderBankModel.new({system_transaction: CybridApiBank::PostInternalSystemTransactionBankModel.new({guid: 'guid_example', provider_id: 'provider_id_example', system_account_guid: 'system_account_guid_example', amount: 37, asset_code: 'asset_code_example', direction: 'credit'})}) # PostInternalClaimExchangeSettlementPaymentOrderBankModel | 

begin
  # Claim Exchange Settlement Payment Order
  result = api_instance.internal_claim_exchange_settlement_payment_order(guid, post_internal_claim_exchange_settlement_payment_order_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_claim_exchange_settlement_payment_order: #{e}"
end
```

#### Using the internal_claim_exchange_settlement_payment_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalExchangeSettlementPaymentOrderBankModel>, Integer, Hash)> internal_claim_exchange_settlement_payment_order_with_http_info(guid, post_internal_claim_exchange_settlement_payment_order_bank_model)

```ruby
begin
  # Claim Exchange Settlement Payment Order
  data, status_code, headers = api_instance.internal_claim_exchange_settlement_payment_order_with_http_info(guid, post_internal_claim_exchange_settlement_payment_order_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalExchangeSettlementPaymentOrderBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_claim_exchange_settlement_payment_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Identifier for the exchange settlement expected payment. |  |
| **post_internal_claim_exchange_settlement_payment_order_bank_model** | [**PostInternalClaimExchangeSettlementPaymentOrderBankModel**](PostInternalClaimExchangeSettlementPaymentOrderBankModel.md) |  |  |

### Return type

[**InternalExchangeSettlementPaymentOrderBankModel**](InternalExchangeSettlementPaymentOrderBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_claim_expected_payment

> <InternalExpectedPaymentBankModel> internal_claim_expected_payment(guid, post_internal_claim_expected_payment_bank_model)

Claim Expected Payment

Claim an Expected Payments.  Required scope: **internal:exchange_settlements:write**

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

api_instance = CybridApiBank::InternalBankApi.new
guid = 'guid_example' # String | Identifier for the expected payment.
post_internal_claim_expected_payment_bank_model = CybridApiBank::PostInternalClaimExpectedPaymentBankModel.new({system_transaction: CybridApiBank::PostInternalSystemTransactionBankModel.new({guid: 'guid_example', provider_id: 'provider_id_example', system_account_guid: 'system_account_guid_example', amount: 37, asset_code: 'asset_code_example', direction: 'credit'})}) # PostInternalClaimExpectedPaymentBankModel | 

begin
  # Claim Expected Payment
  result = api_instance.internal_claim_expected_payment(guid, post_internal_claim_expected_payment_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_claim_expected_payment: #{e}"
end
```

#### Using the internal_claim_expected_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalExpectedPaymentBankModel>, Integer, Hash)> internal_claim_expected_payment_with_http_info(guid, post_internal_claim_expected_payment_bank_model)

```ruby
begin
  # Claim Expected Payment
  data, status_code, headers = api_instance.internal_claim_expected_payment_with_http_info(guid, post_internal_claim_expected_payment_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalExpectedPaymentBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_claim_expected_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Identifier for the expected payment. |  |
| **post_internal_claim_expected_payment_bank_model** | [**PostInternalClaimExpectedPaymentBankModel**](PostInternalClaimExpectedPaymentBankModel.md) |  |  |

### Return type

[**InternalExpectedPaymentBankModel**](InternalExpectedPaymentBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_create_account

> <AccountBankModel> internal_create_account(internal_post_account_bank_model)

Create Account

Creates an account.  Required scope: **internal:accounts:execute**

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

api_instance = CybridApiBank::InternalBankApi.new
internal_post_account_bank_model = CybridApiBank::InternalPostAccountBankModel.new({type: 'fee', asset: 'asset_example', name: 'name_example'}) # InternalPostAccountBankModel | 

begin
  # Create Account
  result = api_instance.internal_create_account(internal_post_account_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_account: #{e}"
end
```

#### Using the internal_create_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountBankModel>, Integer, Hash)> internal_create_account_with_http_info(internal_post_account_bank_model)

```ruby
begin
  # Create Account
  data, status_code, headers = api_instance.internal_create_account_with_http_info(internal_post_account_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **internal_post_account_bank_model** | [**InternalPostAccountBankModel**](InternalPostAccountBankModel.md) |  |  |

### Return type

[**AccountBankModel**](AccountBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_create_activity_limit_configuration

> <InternalActivityLimitConfigurationBankModel> internal_create_activity_limit_configuration(post_internal_activity_limit_configuration_bank_model)

Create ActivityLimitConfiguration

Creates a transfer rail configuration.  Required scope: **internal:banks:write**

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

api_instance = CybridApiBank::InternalBankApi.new
post_internal_activity_limit_configuration_bank_model = CybridApiBank::PostInternalActivityLimitConfigurationBankModel.new({type: 'platform', limits: [CybridApiBank::ParamInternalActivityLimitBankModel.new({name: 'name_example', limit_type: 'rolling', limit_asset: 'limit_asset_example', limit_amount: 37})]}) # PostInternalActivityLimitConfigurationBankModel | 

begin
  # Create ActivityLimitConfiguration
  result = api_instance.internal_create_activity_limit_configuration(post_internal_activity_limit_configuration_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_activity_limit_configuration: #{e}"
end
```

#### Using the internal_create_activity_limit_configuration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalActivityLimitConfigurationBankModel>, Integer, Hash)> internal_create_activity_limit_configuration_with_http_info(post_internal_activity_limit_configuration_bank_model)

```ruby
begin
  # Create ActivityLimitConfiguration
  data, status_code, headers = api_instance.internal_create_activity_limit_configuration_with_http_info(post_internal_activity_limit_configuration_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalActivityLimitConfigurationBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_activity_limit_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_internal_activity_limit_configuration_bank_model** | [**PostInternalActivityLimitConfigurationBankModel**](PostInternalActivityLimitConfigurationBankModel.md) |  |  |

### Return type

[**InternalActivityLimitConfigurationBankModel**](InternalActivityLimitConfigurationBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_create_activity_report

> <InternalActivityReportBankModel> internal_create_activity_report(post_internal_activity_report_bank_model)

Create Activity Report

Create an Activity Report.  Required scope: **internal:reports:execute**

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

api_instance = CybridApiBank::InternalBankApi.new
post_internal_activity_report_bank_model = CybridApiBank::PostInternalActivityReportBankModel.new({type: 'book', environment: 'sandbox', customer_guid: 'customer_guid_example', asset: 'asset_example', start_time: Time.now, end_time: Time.now}) # PostInternalActivityReportBankModel | 

begin
  # Create Activity Report
  result = api_instance.internal_create_activity_report(post_internal_activity_report_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_activity_report: #{e}"
end
```

#### Using the internal_create_activity_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalActivityReportBankModel>, Integer, Hash)> internal_create_activity_report_with_http_info(post_internal_activity_report_bank_model)

```ruby
begin
  # Create Activity Report
  data, status_code, headers = api_instance.internal_create_activity_report_with_http_info(post_internal_activity_report_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalActivityReportBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_activity_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_internal_activity_report_bank_model** | [**PostInternalActivityReportBankModel**](PostInternalActivityReportBankModel.md) |  |  |

### Return type

[**InternalActivityReportBankModel**](InternalActivityReportBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_create_bank

> <InternalBankBankModel> internal_create_bank(post_internal_bank_bank_model)

Create Bank

Create a bank.  Required scope: **internal:banks:execute**

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

api_instance = CybridApiBank::InternalBankApi.new
post_internal_bank_bank_model = CybridApiBank::PostInternalBankBankModel.new({organization_guid: 'organization_guid_example', type: 'sandbox', name: 'name_example', supported_trading_symbols: ['supported_trading_symbols_example'], supported_fiat_account_assets: ['supported_fiat_account_assets_example'], supported_country_codes: ['supported_country_codes_example'], features: ['attestation_identity_records']}) # PostInternalBankBankModel | 

begin
  # Create Bank
  result = api_instance.internal_create_bank(post_internal_bank_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_bank: #{e}"
end
```

#### Using the internal_create_bank_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalBankBankModel>, Integer, Hash)> internal_create_bank_with_http_info(post_internal_bank_bank_model)

```ruby
begin
  # Create Bank
  data, status_code, headers = api_instance.internal_create_bank_with_http_info(post_internal_bank_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalBankBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_bank_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_internal_bank_bank_model** | [**PostInternalBankBankModel**](PostInternalBankBankModel.md) |  |  |

### Return type

[**InternalBankBankModel**](InternalBankBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_create_bank_account_service

> <InternalBankAccountServiceBankModel> internal_create_bank_account_service(post_internal_bank_account_service_bank_model)

Create BankAccountService

Create an BankAccountService.  Required scope: **internal:bank_account_services:execute**

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

api_instance = CybridApiBank::InternalBankApi.new
post_internal_bank_account_service_bank_model = CybridApiBank::PostInternalBankAccountServiceBankModel.new({environment: 'sandbox', type: 'modern_treasury', name: 'name_example'}) # PostInternalBankAccountServiceBankModel | 

begin
  # Create BankAccountService
  result = api_instance.internal_create_bank_account_service(post_internal_bank_account_service_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_bank_account_service: #{e}"
end
```

#### Using the internal_create_bank_account_service_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalBankAccountServiceBankModel>, Integer, Hash)> internal_create_bank_account_service_with_http_info(post_internal_bank_account_service_bank_model)

```ruby
begin
  # Create BankAccountService
  data, status_code, headers = api_instance.internal_create_bank_account_service_with_http_info(post_internal_bank_account_service_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalBankAccountServiceBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_bank_account_service_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_internal_bank_account_service_bank_model** | [**PostInternalBankAccountServiceBankModel**](PostInternalBankAccountServiceBankModel.md) |  |  |

### Return type

[**InternalBankAccountServiceBankModel**](InternalBankAccountServiceBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_create_compliance_decision

> <InternalComplianceDecisionBankModel> internal_create_compliance_decision(post_internal_compliance_decision_bank_model)

Create Compliance Decision

Create an Compliance Decision.  Required scope: **internal:customers:write**

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

api_instance = CybridApiBank::InternalBankApi.new
post_internal_compliance_decision_bank_model = CybridApiBank::PostInternalComplianceDecisionBankModel.new({type: 'business_watchlists', decided_at: Time.now, outcome: 'passed'}) # PostInternalComplianceDecisionBankModel | 

begin
  # Create Compliance Decision
  result = api_instance.internal_create_compliance_decision(post_internal_compliance_decision_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_compliance_decision: #{e}"
end
```

#### Using the internal_create_compliance_decision_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalComplianceDecisionBankModel>, Integer, Hash)> internal_create_compliance_decision_with_http_info(post_internal_compliance_decision_bank_model)

```ruby
begin
  # Create Compliance Decision
  data, status_code, headers = api_instance.internal_create_compliance_decision_with_http_info(post_internal_compliance_decision_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalComplianceDecisionBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_compliance_decision_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_internal_compliance_decision_bank_model** | [**PostInternalComplianceDecisionBankModel**](PostInternalComplianceDecisionBankModel.md) |  |  |

### Return type

[**InternalComplianceDecisionBankModel**](InternalComplianceDecisionBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_create_country_code_configuration

> <InternalCountryCodeConfigurationBankModel> internal_create_country_code_configuration(post_internal_country_code_configuration_bank_model)

Create CountryCodeConfiguration

Creates a country code configuration.  Required scope: **internal:banks:write**

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

api_instance = CybridApiBank::InternalBankApi.new
post_internal_country_code_configuration_bank_model = CybridApiBank::PostInternalCountryCodeConfigurationBankModel.new({type: 'platform', jurisdiction_enabled: false, business_customers_enabled: false, individual_customers_enabled: false, business_counterparties_enabled: false, individual_counterparties_enabled: false, code: 'code_example'}) # PostInternalCountryCodeConfigurationBankModel | 

begin
  # Create CountryCodeConfiguration
  result = api_instance.internal_create_country_code_configuration(post_internal_country_code_configuration_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_country_code_configuration: #{e}"
end
```

#### Using the internal_create_country_code_configuration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalCountryCodeConfigurationBankModel>, Integer, Hash)> internal_create_country_code_configuration_with_http_info(post_internal_country_code_configuration_bank_model)

```ruby
begin
  # Create CountryCodeConfiguration
  data, status_code, headers = api_instance.internal_create_country_code_configuration_with_http_info(post_internal_country_code_configuration_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalCountryCodeConfigurationBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_country_code_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_internal_country_code_configuration_bank_model** | [**PostInternalCountryCodeConfigurationBankModel**](PostInternalCountryCodeConfigurationBankModel.md) |  |  |

### Return type

[**InternalCountryCodeConfigurationBankModel**](InternalCountryCodeConfigurationBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_create_crypto_asset_configuration

> <InternalCryptoAssetConfigurationBankModel> internal_create_crypto_asset_configuration(post_internal_crypto_asset_configuration_bank_model)

Create CryptoAssetConfiguration

Creates a crypto asset configuration.  Required scope: **internal:banks:write**

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

api_instance = CybridApiBank::InternalBankApi.new
post_internal_crypto_asset_configuration_bank_model = CybridApiBank::PostInternalCryptoAssetConfigurationBankModel.new({type: 'platform', deposits_enabled: false, asset: 'asset_example'}) # PostInternalCryptoAssetConfigurationBankModel | 

begin
  # Create CryptoAssetConfiguration
  result = api_instance.internal_create_crypto_asset_configuration(post_internal_crypto_asset_configuration_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_crypto_asset_configuration: #{e}"
end
```

#### Using the internal_create_crypto_asset_configuration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalCryptoAssetConfigurationBankModel>, Integer, Hash)> internal_create_crypto_asset_configuration_with_http_info(post_internal_crypto_asset_configuration_bank_model)

```ruby
begin
  # Create CryptoAssetConfiguration
  data, status_code, headers = api_instance.internal_create_crypto_asset_configuration_with_http_info(post_internal_crypto_asset_configuration_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalCryptoAssetConfigurationBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_crypto_asset_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_internal_crypto_asset_configuration_bank_model** | [**PostInternalCryptoAssetConfigurationBankModel**](PostInternalCryptoAssetConfigurationBankModel.md) |  |  |

### Return type

[**InternalCryptoAssetConfigurationBankModel**](InternalCryptoAssetConfigurationBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_create_cybrid_account

> <InternalCybridAccountBankModel> internal_create_cybrid_account(post_internal_cybrid_account_bank_model)

Create CybridAccount

Create a CybridAccount.  Required scope: **internal:cybrid_accounts:execute**

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

api_instance = CybridApiBank::InternalBankApi.new
post_internal_cybrid_account_bank_model = CybridApiBank::PostInternalCybridAccountBankModel.new({type: 'fee', asset: 'asset_example', name: 'name_example', environment: 'sandbox'}) # PostInternalCybridAccountBankModel | 

begin
  # Create CybridAccount
  result = api_instance.internal_create_cybrid_account(post_internal_cybrid_account_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_cybrid_account: #{e}"
end
```

#### Using the internal_create_cybrid_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalCybridAccountBankModel>, Integer, Hash)> internal_create_cybrid_account_with_http_info(post_internal_cybrid_account_bank_model)

```ruby
begin
  # Create CybridAccount
  data, status_code, headers = api_instance.internal_create_cybrid_account_with_http_info(post_internal_cybrid_account_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalCybridAccountBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_cybrid_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_internal_cybrid_account_bank_model** | [**PostInternalCybridAccountBankModel**](PostInternalCybridAccountBankModel.md) |  |  |

### Return type

[**InternalCybridAccountBankModel**](InternalCybridAccountBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_create_cybrid_gas_account_configuration

> <InternalCybridGasAccountConfigurationBankModel> internal_create_cybrid_gas_account_configuration(post_internal_cybrid_gas_account_configuration_bank_model)

Create CybridGasAccountConfiguration

Creates a cybrid gas account configuration.  Required scope: **internal:accounts:write**

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

api_instance = CybridApiBank::InternalBankApi.new
post_internal_cybrid_gas_account_configuration_bank_model = CybridApiBank::PostInternalCybridGasAccountConfigurationBankModel.new({environment: 'sandbox', internal_wallet_guid: 'internal_wallet_guid_example', cybrid_account_guid: 'cybrid_account_guid_example'}) # PostInternalCybridGasAccountConfigurationBankModel | 

begin
  # Create CybridGasAccountConfiguration
  result = api_instance.internal_create_cybrid_gas_account_configuration(post_internal_cybrid_gas_account_configuration_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_cybrid_gas_account_configuration: #{e}"
end
```

#### Using the internal_create_cybrid_gas_account_configuration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalCybridGasAccountConfigurationBankModel>, Integer, Hash)> internal_create_cybrid_gas_account_configuration_with_http_info(post_internal_cybrid_gas_account_configuration_bank_model)

```ruby
begin
  # Create CybridGasAccountConfiguration
  data, status_code, headers = api_instance.internal_create_cybrid_gas_account_configuration_with_http_info(post_internal_cybrid_gas_account_configuration_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalCybridGasAccountConfigurationBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_cybrid_gas_account_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_internal_cybrid_gas_account_configuration_bank_model** | [**PostInternalCybridGasAccountConfigurationBankModel**](PostInternalCybridGasAccountConfigurationBankModel.md) |  |  |

### Return type

[**InternalCybridGasAccountConfigurationBankModel**](InternalCybridGasAccountConfigurationBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_create_deposit_bank_account

> <DepositBankAccountBankModel> internal_create_deposit_bank_account(internal_post_deposit_bank_account_bank_model)

Create Deposit Bank Account

Creates a deposit bank account.  Required scope: **internal:deposit_bank_accounts:execute**

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

api_instance = CybridApiBank::InternalBankApi.new
internal_post_deposit_bank_account_bank_model = CybridApiBank::InternalPostDepositBankAccountBankModel.new({account_guid: 'account_guid_example'}) # InternalPostDepositBankAccountBankModel | 

begin
  # Create Deposit Bank Account
  result = api_instance.internal_create_deposit_bank_account(internal_post_deposit_bank_account_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_deposit_bank_account: #{e}"
end
```

#### Using the internal_create_deposit_bank_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DepositBankAccountBankModel>, Integer, Hash)> internal_create_deposit_bank_account_with_http_info(internal_post_deposit_bank_account_bank_model)

```ruby
begin
  # Create Deposit Bank Account
  data, status_code, headers = api_instance.internal_create_deposit_bank_account_with_http_info(internal_post_deposit_bank_account_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DepositBankAccountBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_deposit_bank_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **internal_post_deposit_bank_account_bank_model** | [**InternalPostDepositBankAccountBankModel**](InternalPostDepositBankAccountBankModel.md) |  |  |

### Return type

[**DepositBankAccountBankModel**](DepositBankAccountBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_create_exchange

> <InternalExchangeBankModel> internal_create_exchange(post_internal_exchange_bank_model)

Create Exchange

Create an Exchanges.  Required scope: **internal:exchanges:execute**

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

api_instance = CybridApiBank::InternalBankApi.new
post_internal_exchange_bank_model = CybridApiBank::PostInternalExchangeBankModel.new({name: 'name_example', provider: 'aquanow', environment: 'sandbox'}) # PostInternalExchangeBankModel | 

begin
  # Create Exchange
  result = api_instance.internal_create_exchange(post_internal_exchange_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_exchange: #{e}"
end
```

#### Using the internal_create_exchange_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalExchangeBankModel>, Integer, Hash)> internal_create_exchange_with_http_info(post_internal_exchange_bank_model)

```ruby
begin
  # Create Exchange
  data, status_code, headers = api_instance.internal_create_exchange_with_http_info(post_internal_exchange_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalExchangeBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_exchange_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_internal_exchange_bank_model** | [**PostInternalExchangeBankModel**](PostInternalExchangeBankModel.md) |  |  |

### Return type

[**InternalExchangeBankModel**](InternalExchangeBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_create_exchange_account

> <InternalExchangeAccountBankModel> internal_create_exchange_account(post_internal_exchange_account_bank_model)

Create ExchangeAccount

Create an ExchangeAccount.  Required scope: **internal:exchange_accounts:execute**

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

api_instance = CybridApiBank::InternalBankApi.new
post_internal_exchange_account_bank_model = CybridApiBank::PostInternalExchangeAccountBankModel.new({type: 'fiat', exchange_guid: 'exchange_guid_example', asset: 'asset_example'}) # PostInternalExchangeAccountBankModel | 

begin
  # Create ExchangeAccount
  result = api_instance.internal_create_exchange_account(post_internal_exchange_account_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_exchange_account: #{e}"
end
```

#### Using the internal_create_exchange_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalExchangeAccountBankModel>, Integer, Hash)> internal_create_exchange_account_with_http_info(post_internal_exchange_account_bank_model)

```ruby
begin
  # Create ExchangeAccount
  data, status_code, headers = api_instance.internal_create_exchange_account_with_http_info(post_internal_exchange_account_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalExchangeAccountBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_exchange_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_internal_exchange_account_bank_model** | [**PostInternalExchangeAccountBankModel**](PostInternalExchangeAccountBankModel.md) |  |  |

### Return type

[**InternalExchangeAccountBankModel**](InternalExchangeAccountBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_create_exchange_monitor

> <InternalExchangeMonitorBankModel> internal_create_exchange_monitor(post_internal_exchange_monitor_bank_model)

Create ExchangeMonitor

Creates a ExchangeMonitor.Required scope: **internal:exchange_monitors:execute**

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

api_instance = CybridApiBank::InternalBankApi.new
post_internal_exchange_monitor_bank_model = CybridApiBank::PostInternalExchangeMonitorBankModel.new({exchange_guid: 'exchange_guid_example', cron_schedule: 'cron_schedule_example'}) # PostInternalExchangeMonitorBankModel | 

begin
  # Create ExchangeMonitor
  result = api_instance.internal_create_exchange_monitor(post_internal_exchange_monitor_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_exchange_monitor: #{e}"
end
```

#### Using the internal_create_exchange_monitor_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalExchangeMonitorBankModel>, Integer, Hash)> internal_create_exchange_monitor_with_http_info(post_internal_exchange_monitor_bank_model)

```ruby
begin
  # Create ExchangeMonitor
  data, status_code, headers = api_instance.internal_create_exchange_monitor_with_http_info(post_internal_exchange_monitor_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalExchangeMonitorBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_exchange_monitor_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_internal_exchange_monitor_bank_model** | [**PostInternalExchangeMonitorBankModel**](PostInternalExchangeMonitorBankModel.md) |  |  |

### Return type

[**InternalExchangeMonitorBankModel**](InternalExchangeMonitorBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_create_exchange_order

> <InternalExchangeOrderBankModel> internal_create_exchange_order(post_internal_exchange_order_bank_model)

Create ExchangeOrder

Creates a ExchangeOrder.Required scope: **internal:exchange_orders:execute**

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

api_instance = CybridApiBank::InternalBankApi.new
post_internal_exchange_order_bank_model = CybridApiBank::PostInternalExchangeOrderBankModel.new({environment: 'sandbox', type: 'fixed', trade_guids: ['trade_guids_example']}) # PostInternalExchangeOrderBankModel | 

begin
  # Create ExchangeOrder
  result = api_instance.internal_create_exchange_order(post_internal_exchange_order_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_exchange_order: #{e}"
end
```

#### Using the internal_create_exchange_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalExchangeOrderBankModel>, Integer, Hash)> internal_create_exchange_order_with_http_info(post_internal_exchange_order_bank_model)

```ruby
begin
  # Create ExchangeOrder
  data, status_code, headers = api_instance.internal_create_exchange_order_with_http_info(post_internal_exchange_order_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalExchangeOrderBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_exchange_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_internal_exchange_order_bank_model** | [**PostInternalExchangeOrderBankModel**](PostInternalExchangeOrderBankModel.md) |  |  |

### Return type

[**InternalExchangeOrderBankModel**](InternalExchangeOrderBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_create_exchange_settlement

> <InternalExchangeSettlementBankModel> internal_create_exchange_settlement(post_internal_exchange_settlement_bank_model)

Create Exchange Settlement

Create an Exchange Settlements.  Required scope: **internal:exchange_settlements:execute**

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

api_instance = CybridApiBank::InternalBankApi.new
post_internal_exchange_settlement_bank_model = CybridApiBank::PostInternalExchangeSettlementBankModel.new({name: 'name_example', exchange_guid: 'exchange_guid_example'}) # PostInternalExchangeSettlementBankModel | 

begin
  # Create Exchange Settlement
  result = api_instance.internal_create_exchange_settlement(post_internal_exchange_settlement_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_exchange_settlement: #{e}"
end
```

#### Using the internal_create_exchange_settlement_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalExchangeSettlementBankModel>, Integer, Hash)> internal_create_exchange_settlement_with_http_info(post_internal_exchange_settlement_bank_model)

```ruby
begin
  # Create Exchange Settlement
  data, status_code, headers = api_instance.internal_create_exchange_settlement_with_http_info(post_internal_exchange_settlement_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalExchangeSettlementBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_exchange_settlement_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_internal_exchange_settlement_bank_model** | [**PostInternalExchangeSettlementBankModel**](PostInternalExchangeSettlementBankModel.md) |  |  |

### Return type

[**InternalExchangeSettlementBankModel**](InternalExchangeSettlementBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_create_exchange_settlement_approval

> <InternalCreateExchangeSettlementApproval202ResponseBankModel> internal_create_exchange_settlement_approval(guid)

Create Exchange Settlement Approval

Queue an Exchange Settlement Approval.  Required scope: **internal:exchange_settlements:write**

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

api_instance = CybridApiBank::InternalBankApi.new
guid = 'guid_example' # String | Identifier for the exchange settlement.

begin
  # Create Exchange Settlement Approval
  result = api_instance.internal_create_exchange_settlement_approval(guid)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_exchange_settlement_approval: #{e}"
end
```

#### Using the internal_create_exchange_settlement_approval_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalCreateExchangeSettlementApproval202ResponseBankModel>, Integer, Hash)> internal_create_exchange_settlement_approval_with_http_info(guid)

```ruby
begin
  # Create Exchange Settlement Approval
  data, status_code, headers = api_instance.internal_create_exchange_settlement_approval_with_http_info(guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalCreateExchangeSettlementApproval202ResponseBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_exchange_settlement_approval_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Identifier for the exchange settlement. |  |

### Return type

[**InternalCreateExchangeSettlementApproval202ResponseBankModel**](InternalCreateExchangeSettlementApproval202ResponseBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## internal_create_exchange_settlement_completion

> <InternalCreateExchangeSettlementApproval202ResponseBankModel> internal_create_exchange_settlement_completion(guid)

Create Exchange Settlement Completion

Queue an Exchange Settlement Completion.  Required scope: **internal:exchange_settlements:write**

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

api_instance = CybridApiBank::InternalBankApi.new
guid = 'guid_example' # String | Identifier for the exchange settlement.

begin
  # Create Exchange Settlement Completion
  result = api_instance.internal_create_exchange_settlement_completion(guid)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_exchange_settlement_completion: #{e}"
end
```

#### Using the internal_create_exchange_settlement_completion_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalCreateExchangeSettlementApproval202ResponseBankModel>, Integer, Hash)> internal_create_exchange_settlement_completion_with_http_info(guid)

```ruby
begin
  # Create Exchange Settlement Completion
  data, status_code, headers = api_instance.internal_create_exchange_settlement_completion_with_http_info(guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalCreateExchangeSettlementApproval202ResponseBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_exchange_settlement_completion_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Identifier for the exchange settlement. |  |

### Return type

[**InternalCreateExchangeSettlementApproval202ResponseBankModel**](InternalCreateExchangeSettlementApproval202ResponseBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## internal_create_exchange_settlement_configuration

> <InternalExchangeSettlementConfigurationBankModel> internal_create_exchange_settlement_configuration(post_internal_exchange_settlement_configuration_bank_model)

Create ExchangeSettlementConfiguration

Creates a configuration.  Required scope: **internal:exchanges:execute**

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

api_instance = CybridApiBank::InternalBankApi.new
post_internal_exchange_settlement_configuration_bank_model = CybridApiBank::PostInternalExchangeSettlementConfigurationBankModel.new({asset: 'asset_example', exchange_guid: 'exchange_guid_example', exchange_account_guid: 'exchange_account_guid_example'}) # PostInternalExchangeSettlementConfigurationBankModel | 

begin
  # Create ExchangeSettlementConfiguration
  result = api_instance.internal_create_exchange_settlement_configuration(post_internal_exchange_settlement_configuration_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_exchange_settlement_configuration: #{e}"
end
```

#### Using the internal_create_exchange_settlement_configuration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalExchangeSettlementConfigurationBankModel>, Integer, Hash)> internal_create_exchange_settlement_configuration_with_http_info(post_internal_exchange_settlement_configuration_bank_model)

```ruby
begin
  # Create ExchangeSettlementConfiguration
  data, status_code, headers = api_instance.internal_create_exchange_settlement_configuration_with_http_info(post_internal_exchange_settlement_configuration_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalExchangeSettlementConfigurationBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_exchange_settlement_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_internal_exchange_settlement_configuration_bank_model** | [**PostInternalExchangeSettlementConfigurationBankModel**](PostInternalExchangeSettlementConfigurationBankModel.md) |  |  |

### Return type

[**InternalExchangeSettlementConfigurationBankModel**](InternalExchangeSettlementConfigurationBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_create_exchange_settlement_payment_order

> <InternalExchangeSettlementPaymentOrderBankModel> internal_create_exchange_settlement_payment_order(post_internal_exchange_settlement_payment_order_bank_model)

Create Exchange Settlement Payment Order

Create an Exchange Settlement Payment Orders.  Required scope: **internal:exchange_settlements:execute**

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

api_instance = CybridApiBank::InternalBankApi.new
post_internal_exchange_settlement_payment_order_bank_model = CybridApiBank::PostInternalExchangeSettlementPaymentOrderBankModel.new({exchange_settlement_guid: 'exchange_settlement_guid_example', exchange_settlement_obligation_guid: 'exchange_settlement_obligation_guid_example', sequence_number: 37, payment_amount: 37, internal_account_guid: 'internal_account_guid_example', internal_account_type: 'internal_wallet', external_account_guid: 'external_account_guid_example', external_account_type: 'external_wallet'}) # PostInternalExchangeSettlementPaymentOrderBankModel | 

begin
  # Create Exchange Settlement Payment Order
  result = api_instance.internal_create_exchange_settlement_payment_order(post_internal_exchange_settlement_payment_order_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_exchange_settlement_payment_order: #{e}"
end
```

#### Using the internal_create_exchange_settlement_payment_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalExchangeSettlementPaymentOrderBankModel>, Integer, Hash)> internal_create_exchange_settlement_payment_order_with_http_info(post_internal_exchange_settlement_payment_order_bank_model)

```ruby
begin
  # Create Exchange Settlement Payment Order
  data, status_code, headers = api_instance.internal_create_exchange_settlement_payment_order_with_http_info(post_internal_exchange_settlement_payment_order_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalExchangeSettlementPaymentOrderBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_exchange_settlement_payment_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_internal_exchange_settlement_payment_order_bank_model** | [**PostInternalExchangeSettlementPaymentOrderBankModel**](PostInternalExchangeSettlementPaymentOrderBankModel.md) |  |  |

### Return type

[**InternalExchangeSettlementPaymentOrderBankModel**](InternalExchangeSettlementPaymentOrderBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_create_expected_payment

> <InternalExpectedPaymentBankModel> internal_create_expected_payment(post_internal_expected_payment_bank_model)

Create Expected Payment

Create an Expected Payments.  Required scope: **internal:exchange_settlements:execute**

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

api_instance = CybridApiBank::InternalBankApi.new
post_internal_expected_payment_bank_model = CybridApiBank::PostInternalExpectedPaymentBankModel.new({payment_kind: 'gas_payment', nonce: 37, payment_amount: 37, internal_account_guid: 'internal_account_guid_example', internal_account_type: 'internal_wallet'}) # PostInternalExpectedPaymentBankModel | 

begin
  # Create Expected Payment
  result = api_instance.internal_create_expected_payment(post_internal_expected_payment_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_expected_payment: #{e}"
end
```

#### Using the internal_create_expected_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalExpectedPaymentBankModel>, Integer, Hash)> internal_create_expected_payment_with_http_info(post_internal_expected_payment_bank_model)

```ruby
begin
  # Create Expected Payment
  data, status_code, headers = api_instance.internal_create_expected_payment_with_http_info(post_internal_expected_payment_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalExpectedPaymentBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_expected_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_internal_expected_payment_bank_model** | [**PostInternalExpectedPaymentBankModel**](PostInternalExpectedPaymentBankModel.md) |  |  |

### Return type

[**InternalExpectedPaymentBankModel**](InternalExpectedPaymentBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_create_external_bank_account

> <InternalExternalBankAccountBankModel> internal_create_external_bank_account(post_internal_external_bank_account_bank_model)

Create ExternalBankAccount

Create an ExternalBankAccount.  Required scope: **internal:accounts:execute**

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

api_instance = CybridApiBank::InternalBankApi.new
post_internal_external_bank_account_bank_model = CybridApiBank::PostInternalExternalBankAccountBankModel.new({name: 'name_example', account_kind: 'modern_treasury_external_account', asset: 'asset_example'}) # PostInternalExternalBankAccountBankModel | 

begin
  # Create ExternalBankAccount
  result = api_instance.internal_create_external_bank_account(post_internal_external_bank_account_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_external_bank_account: #{e}"
end
```

#### Using the internal_create_external_bank_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalExternalBankAccountBankModel>, Integer, Hash)> internal_create_external_bank_account_with_http_info(post_internal_external_bank_account_bank_model)

```ruby
begin
  # Create ExternalBankAccount
  data, status_code, headers = api_instance.internal_create_external_bank_account_with_http_info(post_internal_external_bank_account_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalExternalBankAccountBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_external_bank_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_internal_external_bank_account_bank_model** | [**PostInternalExternalBankAccountBankModel**](PostInternalExternalBankAccountBankModel.md) |  |  |

### Return type

[**InternalExternalBankAccountBankModel**](InternalExternalBankAccountBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_create_external_wallet

> <InternalExternalWalletBankModel> internal_create_external_wallet(post_internal_external_wallet_bank_model)

Create ExternalWallet

Create an ExternalWallet.  Required scope: **internal:accounts:execute**

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

api_instance = CybridApiBank::InternalBankApi.new
post_internal_external_wallet_bank_model = CybridApiBank::PostInternalExternalWalletBankModel.new({name: 'name_example', account_kind: 'fireblocks_external_wallet', wallet_service_guid: 'wallet_service_guid_example', provider_id: 'provider_id_example', exchange_guid: 'exchange_guid_example', asset: 'asset_example'}) # PostInternalExternalWalletBankModel | 

begin
  # Create ExternalWallet
  result = api_instance.internal_create_external_wallet(post_internal_external_wallet_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_external_wallet: #{e}"
end
```

#### Using the internal_create_external_wallet_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalExternalWalletBankModel>, Integer, Hash)> internal_create_external_wallet_with_http_info(post_internal_external_wallet_bank_model)

```ruby
begin
  # Create ExternalWallet
  data, status_code, headers = api_instance.internal_create_external_wallet_with_http_info(post_internal_external_wallet_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalExternalWalletBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_external_wallet_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_internal_external_wallet_bank_model** | [**PostInternalExternalWalletBankModel**](PostInternalExternalWalletBankModel.md) |  |  |

### Return type

[**InternalExternalWalletBankModel**](InternalExternalWalletBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_create_fee

> <InternalFeeChargeBankModel> internal_create_fee(post_internal_fee_charge_bank_model)

Create Fee

Creates a Fee.Required scope: **internal:fees:execute**

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

api_instance = CybridApiBank::InternalBankApi.new
post_internal_fee_charge_bank_model = CybridApiBank::PostInternalFeeChargeBankModel.new({environment: 'sandbox', type: 'platform_assignment'}) # PostInternalFeeChargeBankModel | 

begin
  # Create Fee
  result = api_instance.internal_create_fee(post_internal_fee_charge_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_fee: #{e}"
end
```

#### Using the internal_create_fee_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalFeeChargeBankModel>, Integer, Hash)> internal_create_fee_with_http_info(post_internal_fee_charge_bank_model)

```ruby
begin
  # Create Fee
  data, status_code, headers = api_instance.internal_create_fee_with_http_info(post_internal_fee_charge_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalFeeChargeBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_fee_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_internal_fee_charge_bank_model** | [**PostInternalFeeChargeBankModel**](PostInternalFeeChargeBankModel.md) |  |  |

### Return type

[**InternalFeeChargeBankModel**](InternalFeeChargeBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_create_fee_configuration

> <InternalFeeConfigurationBankModel> internal_create_fee_configuration(internal_post_fee_configuration_bank_model)

Create FeeConfiguration

Creates a fee configuration.  Required scope: **internal:banks:write**

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

api_instance = CybridApiBank::InternalBankApi.new
internal_post_fee_configuration_bank_model = CybridApiBank::InternalPostFeeConfigurationBankModel.new({type: 'platform', product_type: 'trading', asset: 'asset_example', fees: [CybridApiBank::PostFeeBankModel.new({type: 'spread'})]}) # InternalPostFeeConfigurationBankModel | 

begin
  # Create FeeConfiguration
  result = api_instance.internal_create_fee_configuration(internal_post_fee_configuration_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_fee_configuration: #{e}"
end
```

#### Using the internal_create_fee_configuration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalFeeConfigurationBankModel>, Integer, Hash)> internal_create_fee_configuration_with_http_info(internal_post_fee_configuration_bank_model)

```ruby
begin
  # Create FeeConfiguration
  data, status_code, headers = api_instance.internal_create_fee_configuration_with_http_info(internal_post_fee_configuration_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalFeeConfigurationBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_fee_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **internal_post_fee_configuration_bank_model** | [**InternalPostFeeConfigurationBankModel**](InternalPostFeeConfigurationBankModel.md) |  |  |

### Return type

[**InternalFeeConfigurationBankModel**](InternalFeeConfigurationBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_create_fiat_asset_configuration

> <InternalFiatAssetConfigurationBankModel> internal_create_fiat_asset_configuration(post_internal_fiat_asset_configuration_bank_model)

Create FiatAssetConfiguration

Creates a fiat asset configuration.  Required scope: **internal:banks:write**

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

api_instance = CybridApiBank::InternalBankApi.new
post_internal_fiat_asset_configuration_bank_model = CybridApiBank::PostInternalFiatAssetConfigurationBankModel.new({type: 'platform', enabled: false, asset: 'asset_example'}) # PostInternalFiatAssetConfigurationBankModel | 

begin
  # Create FiatAssetConfiguration
  result = api_instance.internal_create_fiat_asset_configuration(post_internal_fiat_asset_configuration_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_fiat_asset_configuration: #{e}"
end
```

#### Using the internal_create_fiat_asset_configuration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalFiatAssetConfigurationBankModel>, Integer, Hash)> internal_create_fiat_asset_configuration_with_http_info(post_internal_fiat_asset_configuration_bank_model)

```ruby
begin
  # Create FiatAssetConfiguration
  data, status_code, headers = api_instance.internal_create_fiat_asset_configuration_with_http_info(post_internal_fiat_asset_configuration_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalFiatAssetConfigurationBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_fiat_asset_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_internal_fiat_asset_configuration_bank_model** | [**PostInternalFiatAssetConfigurationBankModel**](PostInternalFiatAssetConfigurationBankModel.md) |  |  |

### Return type

[**InternalFiatAssetConfigurationBankModel**](InternalFiatAssetConfigurationBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_create_file

> <PlatformFileBankModel> internal_create_file(post_file_bank_model)

Create File

Creates a file.  Required scope: **internal:files:execute**

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

api_instance = CybridApiBank::InternalBankApi.new
post_file_bank_model = CybridApiBank::PostFileBankModel.new({type: 'drivers_license_front', customer_guid: 'customer_guid_example', filename: 'filename_example', content_type: 'image/jpeg'}) # PostFileBankModel | 

begin
  # Create File
  result = api_instance.internal_create_file(post_file_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_file: #{e}"
end
```

#### Using the internal_create_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlatformFileBankModel>, Integer, Hash)> internal_create_file_with_http_info(post_file_bank_model)

```ruby
begin
  # Create File
  data, status_code, headers = api_instance.internal_create_file_with_http_info(post_file_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlatformFileBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_file_bank_model** | [**PostFileBankModel**](PostFileBankModel.md) |  |  |

### Return type

[**PlatformFileBankModel**](PlatformFileBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_create_internal_bank_account

> <InternalInternalBankAccountBankModel> internal_create_internal_bank_account(post_internal_internal_bank_account_bank_model)

Create InternalBankAccount

Create an InternalBankAccount.  Required scope: **internal:accounts:execute**

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

api_instance = CybridApiBank::InternalBankApi.new
post_internal_internal_bank_account_bank_model = CybridApiBank::PostInternalInternalBankAccountBankModel.new({name: 'name_example', asset: 'asset_example', account_kind: 'circle_master_wallet', environment: 'sandbox', provider_id: 'provider_id_example', bank_account_service_guid: 'bank_account_service_guid_example'}) # PostInternalInternalBankAccountBankModel | 

begin
  # Create InternalBankAccount
  result = api_instance.internal_create_internal_bank_account(post_internal_internal_bank_account_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_internal_bank_account: #{e}"
end
```

#### Using the internal_create_internal_bank_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalInternalBankAccountBankModel>, Integer, Hash)> internal_create_internal_bank_account_with_http_info(post_internal_internal_bank_account_bank_model)

```ruby
begin
  # Create InternalBankAccount
  data, status_code, headers = api_instance.internal_create_internal_bank_account_with_http_info(post_internal_internal_bank_account_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalInternalBankAccountBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_internal_bank_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_internal_internal_bank_account_bank_model** | [**PostInternalInternalBankAccountBankModel**](PostInternalInternalBankAccountBankModel.md) |  |  |

### Return type

[**InternalInternalBankAccountBankModel**](InternalInternalBankAccountBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_create_internal_bank_account_configuration

> <InternalInternalBankAccountConfigurationBankModel> internal_create_internal_bank_account_configuration(post_internal_internal_bank_account_configuration_bank_model)

Create InternalBankAccountConfiguration

Creates an internal bank account configuration.  Required scope: **internal:banks:write**

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

api_instance = CybridApiBank::InternalBankApi.new
post_internal_internal_bank_account_configuration_bank_model = CybridApiBank::PostInternalInternalBankAccountConfigurationBankModel.new({type: 'platform', transfer_bank_account_guid: 'transfer_bank_account_guid_example', deposit_bank_account_guid: 'deposit_bank_account_guid_example', asset: 'asset_example'}) # PostInternalInternalBankAccountConfigurationBankModel | 

begin
  # Create InternalBankAccountConfiguration
  result = api_instance.internal_create_internal_bank_account_configuration(post_internal_internal_bank_account_configuration_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_internal_bank_account_configuration: #{e}"
end
```

#### Using the internal_create_internal_bank_account_configuration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalInternalBankAccountConfigurationBankModel>, Integer, Hash)> internal_create_internal_bank_account_configuration_with_http_info(post_internal_internal_bank_account_configuration_bank_model)

```ruby
begin
  # Create InternalBankAccountConfiguration
  data, status_code, headers = api_instance.internal_create_internal_bank_account_configuration_with_http_info(post_internal_internal_bank_account_configuration_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalInternalBankAccountConfigurationBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_internal_bank_account_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_internal_internal_bank_account_configuration_bank_model** | [**PostInternalInternalBankAccountConfigurationBankModel**](PostInternalInternalBankAccountConfigurationBankModel.md) |  |  |

### Return type

[**InternalInternalBankAccountConfigurationBankModel**](InternalInternalBankAccountConfigurationBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_create_internal_wallet

> <InternalInternalWalletBankModel> internal_create_internal_wallet(post_internal_internal_wallet_bank_model)

Create InternalWallet

Create an InternalWallet.  Required scope: **internal:accounts:execute**

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

api_instance = CybridApiBank::InternalBankApi.new
post_internal_internal_wallet_bank_model = CybridApiBank::PostInternalInternalWalletBankModel.new({type: 'internal_omnibus', name: 'name_example', asset: 'asset_example', account_kind: 'fireblocks_vault', environment: 'sandbox'}) # PostInternalInternalWalletBankModel | 

begin
  # Create InternalWallet
  result = api_instance.internal_create_internal_wallet(post_internal_internal_wallet_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_internal_wallet: #{e}"
end
```

#### Using the internal_create_internal_wallet_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalInternalWalletBankModel>, Integer, Hash)> internal_create_internal_wallet_with_http_info(post_internal_internal_wallet_bank_model)

```ruby
begin
  # Create InternalWallet
  data, status_code, headers = api_instance.internal_create_internal_wallet_with_http_info(post_internal_internal_wallet_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalInternalWalletBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_internal_wallet_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_internal_internal_wallet_bank_model** | [**PostInternalInternalWalletBankModel**](PostInternalInternalWalletBankModel.md) |  |  |

### Return type

[**InternalInternalWalletBankModel**](InternalInternalWalletBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_create_internal_wallet_configuration

> <InternalInternalWalletConfigurationBankModel> internal_create_internal_wallet_configuration(post_internal_internal_wallet_configuration_bank_model)

Create InternalWalletConfiguration

Creates an internal wallet configuration.  Required scope: **internal:banks:write**

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

api_instance = CybridApiBank::InternalBankApi.new
post_internal_internal_wallet_configuration_bank_model = CybridApiBank::PostInternalInternalWalletConfigurationBankModel.new({type: 'platform', transfer_wallet_guid: 'transfer_wallet_guid_example', asset: 'asset_example'}) # PostInternalInternalWalletConfigurationBankModel | 

begin
  # Create InternalWalletConfiguration
  result = api_instance.internal_create_internal_wallet_configuration(post_internal_internal_wallet_configuration_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_internal_wallet_configuration: #{e}"
end
```

#### Using the internal_create_internal_wallet_configuration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalInternalWalletConfigurationBankModel>, Integer, Hash)> internal_create_internal_wallet_configuration_with_http_info(post_internal_internal_wallet_configuration_bank_model)

```ruby
begin
  # Create InternalWalletConfiguration
  data, status_code, headers = api_instance.internal_create_internal_wallet_configuration_with_http_info(post_internal_internal_wallet_configuration_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalInternalWalletConfigurationBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_internal_wallet_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_internal_internal_wallet_configuration_bank_model** | [**PostInternalInternalWalletConfigurationBankModel**](PostInternalInternalWalletConfigurationBankModel.md) |  |  |

### Return type

[**InternalInternalWalletConfigurationBankModel**](InternalInternalWalletConfigurationBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_create_payout_symbol_configuration

> <InternalPayoutSymbolConfigurationBankModel> internal_create_payout_symbol_configuration(post_internal_payout_symbol_configuration_bank_model)

Create PayoutSymbolConfiguration

Creates a payout symbol configuration.  Required scope: **internal:banks:write**

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

api_instance = CybridApiBank::InternalBankApi.new
post_internal_payout_symbol_configuration_bank_model = CybridApiBank::PostInternalPayoutSymbolConfigurationBankModel.new({type: 'platform', enabled: false, symbol: 'symbol_example', country_code: 'country_code_example', participants_type: 'C2C', route: 'bank_account'}) # PostInternalPayoutSymbolConfigurationBankModel | 

begin
  # Create PayoutSymbolConfiguration
  result = api_instance.internal_create_payout_symbol_configuration(post_internal_payout_symbol_configuration_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_payout_symbol_configuration: #{e}"
end
```

#### Using the internal_create_payout_symbol_configuration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalPayoutSymbolConfigurationBankModel>, Integer, Hash)> internal_create_payout_symbol_configuration_with_http_info(post_internal_payout_symbol_configuration_bank_model)

```ruby
begin
  # Create PayoutSymbolConfiguration
  data, status_code, headers = api_instance.internal_create_payout_symbol_configuration_with_http_info(post_internal_payout_symbol_configuration_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalPayoutSymbolConfigurationBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_payout_symbol_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_internal_payout_symbol_configuration_bank_model** | [**PostInternalPayoutSymbolConfigurationBankModel**](PostInternalPayoutSymbolConfigurationBankModel.md) |  |  |

### Return type

[**InternalPayoutSymbolConfigurationBankModel**](InternalPayoutSymbolConfigurationBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_create_quote

> <InternalQuoteBankModel> internal_create_quote(internal_post_quote_bank_model)

Create InternalQuote

Creates a quote.  Required scope: **internal:quotes:read**

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

api_instance = CybridApiBank::InternalBankApi.new
internal_post_quote_bank_model = CybridApiBank::InternalPostQuoteBankModel.new({product_type: 'book_transfer'}) # InternalPostQuoteBankModel | 

begin
  # Create InternalQuote
  result = api_instance.internal_create_quote(internal_post_quote_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_quote: #{e}"
end
```

#### Using the internal_create_quote_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalQuoteBankModel>, Integer, Hash)> internal_create_quote_with_http_info(internal_post_quote_bank_model)

```ruby
begin
  # Create InternalQuote
  data, status_code, headers = api_instance.internal_create_quote_with_http_info(internal_post_quote_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalQuoteBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_quote_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **internal_post_quote_bank_model** | [**InternalPostQuoteBankModel**](InternalPostQuoteBankModel.md) |  |  |

### Return type

[**InternalQuoteBankModel**](InternalQuoteBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_create_reconciliation

> <InternalReconciliationBankModel> internal_create_reconciliation(post_internal_reconciliation_bank_model)

Create Reconciliation

Creates a Reconciliation.Required scope: **internal:transfers:write**

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

api_instance = CybridApiBank::InternalBankApi.new
post_internal_reconciliation_bank_model = CybridApiBank::PostInternalReconciliationBankModel.new({category: 'transfer', confidence: 'low', direction: 'debit', transaction_id: 'transaction_id_example', transfer_guid: 'transfer_guid_example'}) # PostInternalReconciliationBankModel | 

begin
  # Create Reconciliation
  result = api_instance.internal_create_reconciliation(post_internal_reconciliation_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_reconciliation: #{e}"
end
```

#### Using the internal_create_reconciliation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalReconciliationBankModel>, Integer, Hash)> internal_create_reconciliation_with_http_info(post_internal_reconciliation_bank_model)

```ruby
begin
  # Create Reconciliation
  data, status_code, headers = api_instance.internal_create_reconciliation_with_http_info(post_internal_reconciliation_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalReconciliationBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_reconciliation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_internal_reconciliation_bank_model** | [**PostInternalReconciliationBankModel**](PostInternalReconciliationBankModel.md) |  |  |

### Return type

[**InternalReconciliationBankModel**](InternalReconciliationBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_create_stage

> <InternalStageBankModel> internal_create_stage(post_internal_stage_bank_model)

Create Stage

Create an Stage.  Required scope: **internal:plans:write**

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

api_instance = CybridApiBank::InternalBankApi.new
post_internal_stage_bank_model = CybridApiBank::PostInternalStageBankModel.new({type: 'type_example', plan_guid: 'plan_guid_example', accounts: [CybridApiBank::PostInternalAccountAssociationBankModel.new({type: 'trading', side: 'source', asset: 'asset_example'})], fees: [CybridApiBank::PostInternalFeeAssociationBankModel.new({type: 'type_example', asset: 'asset_example', step_identifier: 'step_identifier_example'})], stage_index: 37}) # PostInternalStageBankModel | 

begin
  # Create Stage
  result = api_instance.internal_create_stage(post_internal_stage_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_stage: #{e}"
end
```

#### Using the internal_create_stage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalStageBankModel>, Integer, Hash)> internal_create_stage_with_http_info(post_internal_stage_bank_model)

```ruby
begin
  # Create Stage
  data, status_code, headers = api_instance.internal_create_stage_with_http_info(post_internal_stage_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalStageBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_stage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_internal_stage_bank_model** | [**PostInternalStageBankModel**](PostInternalStageBankModel.md) |  |  |

### Return type

[**InternalStageBankModel**](InternalStageBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_create_trade

> <InternalTradeBankModel> internal_create_trade(post_internal_trade_bank_model)

Create Internal Trade

Creates a trade.  Required scope: **internal:trades:execute**

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

api_instance = CybridApiBank::InternalBankApi.new
post_internal_trade_bank_model = CybridApiBank::PostInternalTradeBankModel.new({trade_type: 'internal', quote_guid: 'quote_guid_example', environment: 'sandbox'}) # PostInternalTradeBankModel | 

begin
  # Create Internal Trade
  result = api_instance.internal_create_trade(post_internal_trade_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_trade: #{e}"
end
```

#### Using the internal_create_trade_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalTradeBankModel>, Integer, Hash)> internal_create_trade_with_http_info(post_internal_trade_bank_model)

```ruby
begin
  # Create Internal Trade
  data, status_code, headers = api_instance.internal_create_trade_with_http_info(post_internal_trade_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalTradeBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_trade_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_internal_trade_bank_model** | [**PostInternalTradeBankModel**](PostInternalTradeBankModel.md) |  |  |

### Return type

[**InternalTradeBankModel**](InternalTradeBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_create_trading_symbol_configuration

> <InternalTradingSymbolConfigurationBankModel> internal_create_trading_symbol_configuration(post_internal_trading_symbol_configuration_bank_model)

Create TradingSymbolConfiguration

Creates a trading symbol configuration.  Required scope: **internal:banks:write**

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

api_instance = CybridApiBank::InternalBankApi.new
post_internal_trading_symbol_configuration_bank_model = CybridApiBank::PostInternalTradingSymbolConfigurationBankModel.new({type: 'platform', enabled: false, symbol: 'symbol_example'}) # PostInternalTradingSymbolConfigurationBankModel | 

begin
  # Create TradingSymbolConfiguration
  result = api_instance.internal_create_trading_symbol_configuration(post_internal_trading_symbol_configuration_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_trading_symbol_configuration: #{e}"
end
```

#### Using the internal_create_trading_symbol_configuration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalTradingSymbolConfigurationBankModel>, Integer, Hash)> internal_create_trading_symbol_configuration_with_http_info(post_internal_trading_symbol_configuration_bank_model)

```ruby
begin
  # Create TradingSymbolConfiguration
  data, status_code, headers = api_instance.internal_create_trading_symbol_configuration_with_http_info(post_internal_trading_symbol_configuration_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalTradingSymbolConfigurationBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_trading_symbol_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_internal_trading_symbol_configuration_bank_model** | [**PostInternalTradingSymbolConfigurationBankModel**](PostInternalTradingSymbolConfigurationBankModel.md) |  |  |

### Return type

[**InternalTradingSymbolConfigurationBankModel**](InternalTradingSymbolConfigurationBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_create_transaction_monitor

> <InternalTransactionMonitorBankModel> internal_create_transaction_monitor(post_internal_transaction_monitor_bank_model)

Create TransactionMonitor

Creates a TransactionMonitor.Required scope: **internal:transaction_monitors:execute**

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

api_instance = CybridApiBank::InternalBankApi.new
post_internal_transaction_monitor_bank_model = CybridApiBank::PostInternalTransactionMonitorBankModel.new({type: 'account'}) # PostInternalTransactionMonitorBankModel | 

begin
  # Create TransactionMonitor
  result = api_instance.internal_create_transaction_monitor(post_internal_transaction_monitor_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_transaction_monitor: #{e}"
end
```

#### Using the internal_create_transaction_monitor_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalTransactionMonitorBankModel>, Integer, Hash)> internal_create_transaction_monitor_with_http_info(post_internal_transaction_monitor_bank_model)

```ruby
begin
  # Create TransactionMonitor
  data, status_code, headers = api_instance.internal_create_transaction_monitor_with_http_info(post_internal_transaction_monitor_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalTransactionMonitorBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_transaction_monitor_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_internal_transaction_monitor_bank_model** | [**PostInternalTransactionMonitorBankModel**](PostInternalTransactionMonitorBankModel.md) |  |  |

### Return type

[**InternalTransactionMonitorBankModel**](InternalTransactionMonitorBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_create_transfer

> <InternalTransferBankModel> internal_create_transfer(post_internal_transfer_bank_model)

Create Transfer

Create an Transfer.  Required scope: **internal:transfers:execute**

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

api_instance = CybridApiBank::InternalBankApi.new
post_internal_transfer_bank_model = CybridApiBank::PostInternalTransferBankModel.new({transfer_type: 'book', environment: 'sandbox'}) # PostInternalTransferBankModel | 

begin
  # Create Transfer
  result = api_instance.internal_create_transfer(post_internal_transfer_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_transfer: #{e}"
end
```

#### Using the internal_create_transfer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalTransferBankModel>, Integer, Hash)> internal_create_transfer_with_http_info(post_internal_transfer_bank_model)

```ruby
begin
  # Create Transfer
  data, status_code, headers = api_instance.internal_create_transfer_with_http_info(post_internal_transfer_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalTransferBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_transfer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_internal_transfer_bank_model** | [**PostInternalTransferBankModel**](PostInternalTransferBankModel.md) |  |  |

### Return type

[**InternalTransferBankModel**](InternalTransferBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_create_transfer_rail_configuration

> <InternalTransferRailConfigurationBankModel> internal_create_transfer_rail_configuration(post_internal_transfer_rail_configuration_bank_model)

Create TransferRailConfiguration

Creates a transfer rail configuration.  Required scope: **internal:banks:write**

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

api_instance = CybridApiBank::InternalBankApi.new
post_internal_transfer_rail_configuration_bank_model = CybridApiBank::PostInternalTransferRailConfigurationBankModel.new({type: 'platform', hold_duration: 37, rail: 'ach'}) # PostInternalTransferRailConfigurationBankModel | 

begin
  # Create TransferRailConfiguration
  result = api_instance.internal_create_transfer_rail_configuration(post_internal_transfer_rail_configuration_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_transfer_rail_configuration: #{e}"
end
```

#### Using the internal_create_transfer_rail_configuration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalTransferRailConfigurationBankModel>, Integer, Hash)> internal_create_transfer_rail_configuration_with_http_info(post_internal_transfer_rail_configuration_bank_model)

```ruby
begin
  # Create TransferRailConfiguration
  data, status_code, headers = api_instance.internal_create_transfer_rail_configuration_with_http_info(post_internal_transfer_rail_configuration_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalTransferRailConfigurationBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_transfer_rail_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_internal_transfer_rail_configuration_bank_model** | [**PostInternalTransferRailConfigurationBankModel**](PostInternalTransferRailConfigurationBankModel.md) |  |  |

### Return type

[**InternalTransferRailConfigurationBankModel**](InternalTransferRailConfigurationBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_create_transfer_screening

> <InternalTransferScreeningBankModel> internal_create_transfer_screening(post_internal_transfer_screening_bank_model)

Create TransferScreening

Create an TransferScreening.  Required scope: **internal:accounts:execute**

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

api_instance = CybridApiBank::InternalBankApi.new
post_internal_transfer_screening_bank_model = CybridApiBank::PostInternalTransferScreeningBankModel.new({transfer_guid: 'transfer_guid_example'}) # PostInternalTransferScreeningBankModel | 

begin
  # Create TransferScreening
  result = api_instance.internal_create_transfer_screening(post_internal_transfer_screening_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_transfer_screening: #{e}"
end
```

#### Using the internal_create_transfer_screening_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalTransferScreeningBankModel>, Integer, Hash)> internal_create_transfer_screening_with_http_info(post_internal_transfer_screening_bank_model)

```ruby
begin
  # Create TransferScreening
  data, status_code, headers = api_instance.internal_create_transfer_screening_with_http_info(post_internal_transfer_screening_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalTransferScreeningBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_transfer_screening_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_internal_transfer_screening_bank_model** | [**PostInternalTransferScreeningBankModel**](PostInternalTransferScreeningBankModel.md) |  |  |

### Return type

[**InternalTransferScreeningBankModel**](InternalTransferScreeningBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_create_wallet_service

> <InternalWalletServiceBankModel> internal_create_wallet_service(post_internal_wallet_service_bank_model)

Create WalletService

Create an WalletService.  Required scope: **internal:wallet_services:execute**

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

api_instance = CybridApiBank::InternalBankApi.new
post_internal_wallet_service_bank_model = CybridApiBank::PostInternalWalletServiceBankModel.new({environment: 'sandbox', type: 'fireblocks', name: 'name_example'}) # PostInternalWalletServiceBankModel | 

begin
  # Create WalletService
  result = api_instance.internal_create_wallet_service(post_internal_wallet_service_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_wallet_service: #{e}"
end
```

#### Using the internal_create_wallet_service_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalWalletServiceBankModel>, Integer, Hash)> internal_create_wallet_service_with_http_info(post_internal_wallet_service_bank_model)

```ruby
begin
  # Create WalletService
  data, status_code, headers = api_instance.internal_create_wallet_service_with_http_info(post_internal_wallet_service_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalWalletServiceBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_create_wallet_service_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_internal_wallet_service_bank_model** | [**PostInternalWalletServiceBankModel**](PostInternalWalletServiceBankModel.md) |  |  |

### Return type

[**InternalWalletServiceBankModel**](InternalWalletServiceBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_crypto_funding_deposit_transfer

> <InternalCryptoFundingDepositTransferBankModel> internal_crypto_funding_deposit_transfer(post_internal_crypto_funding_deposit_transfer_bank_model)

Create Crypto Funding Deposit Transfer

Create a Crypto Funding Deposit Transfer.  Required scope: **internal:transfers:execute**

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

api_instance = CybridApiBank::InternalBankApi.new
post_internal_crypto_funding_deposit_transfer_bank_model = CybridApiBank::PostInternalCryptoFundingDepositTransferBankModel.new({environment: 'sandbox', deposit_address_guid: 'deposit_address_guid_example', txn_hash: 'txn_hash_example', amount: 37}) # PostInternalCryptoFundingDepositTransferBankModel | 

begin
  # Create Crypto Funding Deposit Transfer
  result = api_instance.internal_crypto_funding_deposit_transfer(post_internal_crypto_funding_deposit_transfer_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_crypto_funding_deposit_transfer: #{e}"
end
```

#### Using the internal_crypto_funding_deposit_transfer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalCryptoFundingDepositTransferBankModel>, Integer, Hash)> internal_crypto_funding_deposit_transfer_with_http_info(post_internal_crypto_funding_deposit_transfer_bank_model)

```ruby
begin
  # Create Crypto Funding Deposit Transfer
  data, status_code, headers = api_instance.internal_crypto_funding_deposit_transfer_with_http_info(post_internal_crypto_funding_deposit_transfer_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalCryptoFundingDepositTransferBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_crypto_funding_deposit_transfer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_internal_crypto_funding_deposit_transfer_bank_model** | [**PostInternalCryptoFundingDepositTransferBankModel**](PostInternalCryptoFundingDepositTransferBankModel.md) |  |  |

### Return type

[**InternalCryptoFundingDepositTransferBankModel**](InternalCryptoFundingDepositTransferBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_delete_activity_limit_configuration

> <InternalActivityLimitConfigurationBankModel> internal_delete_activity_limit_configuration(guid)

Delete ActivityLimitConfiguration

Deletes an activity limit configuration.  Required scope: **internal:banks:write**

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

api_instance = CybridApiBank::InternalBankApi.new
guid = 'guid_example' # String | Identifier for the activity limit configuration.

begin
  # Delete ActivityLimitConfiguration
  result = api_instance.internal_delete_activity_limit_configuration(guid)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_delete_activity_limit_configuration: #{e}"
end
```

#### Using the internal_delete_activity_limit_configuration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalActivityLimitConfigurationBankModel>, Integer, Hash)> internal_delete_activity_limit_configuration_with_http_info(guid)

```ruby
begin
  # Delete ActivityLimitConfiguration
  data, status_code, headers = api_instance.internal_delete_activity_limit_configuration_with_http_info(guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalActivityLimitConfigurationBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_delete_activity_limit_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Identifier for the activity limit configuration. |  |

### Return type

[**InternalActivityLimitConfigurationBankModel**](InternalActivityLimitConfigurationBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## internal_delete_external_bank_account

> <InternalExternalBankAccountBankModel> internal_delete_external_bank_account(external_bank_account_guid)

Delete External Bank Account

Deletes an external bank account.  Required scope: **internal:accounts:execute**

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

api_instance = CybridApiBank::InternalBankApi.new
external_bank_account_guid = 'external_bank_account_guid_example' # String | Identifier for the external bank account.

begin
  # Delete External Bank Account
  result = api_instance.internal_delete_external_bank_account(external_bank_account_guid)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_delete_external_bank_account: #{e}"
end
```

#### Using the internal_delete_external_bank_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalExternalBankAccountBankModel>, Integer, Hash)> internal_delete_external_bank_account_with_http_info(external_bank_account_guid)

```ruby
begin
  # Delete External Bank Account
  data, status_code, headers = api_instance.internal_delete_external_bank_account_with_http_info(external_bank_account_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalExternalBankAccountBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_delete_external_bank_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_bank_account_guid** | **String** | Identifier for the external bank account. |  |

### Return type

[**InternalExternalBankAccountBankModel**](InternalExternalBankAccountBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## internal_funding_deposit_transfer

> <InternalFundingDepositTransferBankModel> internal_funding_deposit_transfer(post_internal_funding_deposit_transfer_bank_model)

Create Funding Deposit Transfer

Create a Funding Deposit Transfer.  Required scope: **internal:transfers:execute**

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

api_instance = CybridApiBank::InternalBankApi.new
post_internal_funding_deposit_transfer_bank_model = CybridApiBank::PostInternalFundingDepositTransferBankModel.new({environment: 'sandbox', deposit_bank_account_guid: 'deposit_bank_account_guid_example', parent_deposit_bank_account_guid: 'parent_deposit_bank_account_guid_example', details: 3.56, amount: 37}) # PostInternalFundingDepositTransferBankModel | 

begin
  # Create Funding Deposit Transfer
  result = api_instance.internal_funding_deposit_transfer(post_internal_funding_deposit_transfer_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_funding_deposit_transfer: #{e}"
end
```

#### Using the internal_funding_deposit_transfer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalFundingDepositTransferBankModel>, Integer, Hash)> internal_funding_deposit_transfer_with_http_info(post_internal_funding_deposit_transfer_bank_model)

```ruby
begin
  # Create Funding Deposit Transfer
  data, status_code, headers = api_instance.internal_funding_deposit_transfer_with_http_info(post_internal_funding_deposit_transfer_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalFundingDepositTransferBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_funding_deposit_transfer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_internal_funding_deposit_transfer_bank_model** | [**PostInternalFundingDepositTransferBankModel**](PostInternalFundingDepositTransferBankModel.md) |  |  |

### Return type

[**InternalFundingDepositTransferBankModel**](InternalFundingDepositTransferBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_get_bank

> <InternalBankBankModel> internal_get_bank(bank_guid)

Get Bank

Retrieves a bank.  Required scope: **internal:banks:read**

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

api_instance = CybridApiBank::InternalBankApi.new
bank_guid = 'bank_guid_example' # String | Identifier for the bank.

begin
  # Get Bank
  result = api_instance.internal_get_bank(bank_guid)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_get_bank: #{e}"
end
```

#### Using the internal_get_bank_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalBankBankModel>, Integer, Hash)> internal_get_bank_with_http_info(bank_guid)

```ruby
begin
  # Get Bank
  data, status_code, headers = api_instance.internal_get_bank_with_http_info(bank_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalBankBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_get_bank_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_guid** | **String** | Identifier for the bank. |  |

### Return type

[**InternalBankBankModel**](InternalBankBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## internal_get_bank_account_service

> <InternalBankAccountServiceBankModel> internal_get_bank_account_service(bank_account_service_guid)

Get BankAccountService

Retrieves a bank_account service.  Required scope: **internal:bank_account_services:read**

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

api_instance = CybridApiBank::InternalBankApi.new
bank_account_service_guid = 'bank_account_service_guid_example' # String | Identifier for the bank_account service.

begin
  # Get BankAccountService
  result = api_instance.internal_get_bank_account_service(bank_account_service_guid)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_get_bank_account_service: #{e}"
end
```

#### Using the internal_get_bank_account_service_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalBankAccountServiceBankModel>, Integer, Hash)> internal_get_bank_account_service_with_http_info(bank_account_service_guid)

```ruby
begin
  # Get BankAccountService
  data, status_code, headers = api_instance.internal_get_bank_account_service_with_http_info(bank_account_service_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalBankAccountServiceBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_get_bank_account_service_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_account_service_guid** | **String** | Identifier for the bank_account service. |  |

### Return type

[**InternalBankAccountServiceBankModel**](InternalBankAccountServiceBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## internal_get_customer

> <CustomerBankModel> internal_get_customer(customer_guid)

Get Customer

Retrieves a customer.  Required scope: **internal:customers:read**

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

api_instance = CybridApiBank::InternalBankApi.new
customer_guid = 'customer_guid_example' # String | Identifier for the customer.

begin
  # Get Customer
  result = api_instance.internal_get_customer(customer_guid)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_get_customer: #{e}"
end
```

#### Using the internal_get_customer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomerBankModel>, Integer, Hash)> internal_get_customer_with_http_info(customer_guid)

```ruby
begin
  # Get Customer
  data, status_code, headers = api_instance.internal_get_customer_with_http_info(customer_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_get_customer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_guid** | **String** | Identifier for the customer. |  |

### Return type

[**CustomerBankModel**](CustomerBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## internal_get_cybrid_account

> <InternalCybridAccountBankModel> internal_get_cybrid_account(account_guid)

Get CybridAccount

Get an CybridAccount.  Required scope: **internal:cybrid_accounts:read**

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

api_instance = CybridApiBank::InternalBankApi.new
account_guid = 'account_guid_example' # String | Identifier for the Cybrid account.

begin
  # Get CybridAccount
  result = api_instance.internal_get_cybrid_account(account_guid)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_get_cybrid_account: #{e}"
end
```

#### Using the internal_get_cybrid_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalCybridAccountBankModel>, Integer, Hash)> internal_get_cybrid_account_with_http_info(account_guid)

```ruby
begin
  # Get CybridAccount
  data, status_code, headers = api_instance.internal_get_cybrid_account_with_http_info(account_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalCybridAccountBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_get_cybrid_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_guid** | **String** | Identifier for the Cybrid account. |  |

### Return type

[**InternalCybridAccountBankModel**](InternalCybridAccountBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## internal_get_exchange

> <InternalExchangeBankModel> internal_get_exchange(exchange_guid)

Get Exchange

Get an Exchange.  Required scope: **internal:exchanges:read**

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

api_instance = CybridApiBank::InternalBankApi.new
exchange_guid = 'exchange_guid_example' # String | Identifier for the exchange.

begin
  # Get Exchange
  result = api_instance.internal_get_exchange(exchange_guid)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_get_exchange: #{e}"
end
```

#### Using the internal_get_exchange_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalExchangeBankModel>, Integer, Hash)> internal_get_exchange_with_http_info(exchange_guid)

```ruby
begin
  # Get Exchange
  data, status_code, headers = api_instance.internal_get_exchange_with_http_info(exchange_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalExchangeBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_get_exchange_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **exchange_guid** | **String** | Identifier for the exchange. |  |

### Return type

[**InternalExchangeBankModel**](InternalExchangeBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## internal_get_exchange_account

> <InternalExchangeAccountBankModel> internal_get_exchange_account(account_guid)

Get ExchangeAccount

Get an ExchangeAccount.  Required scope: **internal:exchange_accounts:read**

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

api_instance = CybridApiBank::InternalBankApi.new
account_guid = 'account_guid_example' # String | Identifier for the bank.

begin
  # Get ExchangeAccount
  result = api_instance.internal_get_exchange_account(account_guid)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_get_exchange_account: #{e}"
end
```

#### Using the internal_get_exchange_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalExchangeAccountBankModel>, Integer, Hash)> internal_get_exchange_account_with_http_info(account_guid)

```ruby
begin
  # Get ExchangeAccount
  data, status_code, headers = api_instance.internal_get_exchange_account_with_http_info(account_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalExchangeAccountBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_get_exchange_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_guid** | **String** | Identifier for the bank. |  |

### Return type

[**InternalExchangeAccountBankModel**](InternalExchangeAccountBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## internal_get_exchange_settlement

> <InternalExchangeSettlementBankModel> internal_get_exchange_settlement(guid)

Get Exchange Settlement

Get an Exchange Settlement.  Required scope: **internal:exchange_settlements:read**

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

api_instance = CybridApiBank::InternalBankApi.new
guid = 'guid_example' # String | Identifier for the exchange settlement.

begin
  # Get Exchange Settlement
  result = api_instance.internal_get_exchange_settlement(guid)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_get_exchange_settlement: #{e}"
end
```

#### Using the internal_get_exchange_settlement_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalExchangeSettlementBankModel>, Integer, Hash)> internal_get_exchange_settlement_with_http_info(guid)

```ruby
begin
  # Get Exchange Settlement
  data, status_code, headers = api_instance.internal_get_exchange_settlement_with_http_info(guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalExchangeSettlementBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_get_exchange_settlement_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Identifier for the exchange settlement. |  |

### Return type

[**InternalExchangeSettlementBankModel**](InternalExchangeSettlementBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## internal_get_exchange_settlement_obligation

> <InternalExchangeSettlementObligationBankModel> internal_get_exchange_settlement_obligation(guid)

Get Exchange Settlement Obligation

Get an Exchange Settlement Obligation.  Required scope: **internal:exchange_settlements:read**

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

api_instance = CybridApiBank::InternalBankApi.new
guid = 'guid_example' # String | Identifier for the exchange settlement obligation.

begin
  # Get Exchange Settlement Obligation
  result = api_instance.internal_get_exchange_settlement_obligation(guid)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_get_exchange_settlement_obligation: #{e}"
end
```

#### Using the internal_get_exchange_settlement_obligation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalExchangeSettlementObligationBankModel>, Integer, Hash)> internal_get_exchange_settlement_obligation_with_http_info(guid)

```ruby
begin
  # Get Exchange Settlement Obligation
  data, status_code, headers = api_instance.internal_get_exchange_settlement_obligation_with_http_info(guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalExchangeSettlementObligationBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_get_exchange_settlement_obligation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Identifier for the exchange settlement obligation. |  |

### Return type

[**InternalExchangeSettlementObligationBankModel**](InternalExchangeSettlementObligationBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## internal_get_exchange_settlement_payment_order

> <InternalExchangeSettlementPaymentOrderBankModel> internal_get_exchange_settlement_payment_order(guid)

Get Exchange Settlement Payment Order

Get an Exchange Settlement Payment Order.  Required scope: **internal:exchange_settlements:read**

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

api_instance = CybridApiBank::InternalBankApi.new
guid = 'guid_example' # String | Identifier for the exchange settlement payment order.

begin
  # Get Exchange Settlement Payment Order
  result = api_instance.internal_get_exchange_settlement_payment_order(guid)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_get_exchange_settlement_payment_order: #{e}"
end
```

#### Using the internal_get_exchange_settlement_payment_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalExchangeSettlementPaymentOrderBankModel>, Integer, Hash)> internal_get_exchange_settlement_payment_order_with_http_info(guid)

```ruby
begin
  # Get Exchange Settlement Payment Order
  data, status_code, headers = api_instance.internal_get_exchange_settlement_payment_order_with_http_info(guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalExchangeSettlementPaymentOrderBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_get_exchange_settlement_payment_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Identifier for the exchange settlement payment order. |  |

### Return type

[**InternalExchangeSettlementPaymentOrderBankModel**](InternalExchangeSettlementPaymentOrderBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## internal_get_execution

> <InternalExecutionBankModel> internal_get_execution(execution_guid)

Get Execution

Retrieves a execution.  Required scope: **internal:executions:read**

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

api_instance = CybridApiBank::InternalBankApi.new
execution_guid = 'execution_guid_example' # String | Identifier for the execution.

begin
  # Get Execution
  result = api_instance.internal_get_execution(execution_guid)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_get_execution: #{e}"
end
```

#### Using the internal_get_execution_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalExecutionBankModel>, Integer, Hash)> internal_get_execution_with_http_info(execution_guid)

```ruby
begin
  # Get Execution
  data, status_code, headers = api_instance.internal_get_execution_with_http_info(execution_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalExecutionBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_get_execution_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **execution_guid** | **String** | Identifier for the execution. |  |

### Return type

[**InternalExecutionBankModel**](InternalExecutionBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## internal_get_expected_payment

> <InternalExpectedPaymentBankModel> internal_get_expected_payment(guid)

Get Expected Payment

Get an Expected Payment.  Required scope: **internal:exchange_settlements:read**

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

api_instance = CybridApiBank::InternalBankApi.new
guid = 'guid_example' # String | Identifier for the expected payment.

begin
  # Get Expected Payment
  result = api_instance.internal_get_expected_payment(guid)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_get_expected_payment: #{e}"
end
```

#### Using the internal_get_expected_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalExpectedPaymentBankModel>, Integer, Hash)> internal_get_expected_payment_with_http_info(guid)

```ruby
begin
  # Get Expected Payment
  data, status_code, headers = api_instance.internal_get_expected_payment_with_http_info(guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalExpectedPaymentBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_get_expected_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Identifier for the expected payment. |  |

### Return type

[**InternalExpectedPaymentBankModel**](InternalExpectedPaymentBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## internal_get_external_bank_account

> <InternalExternalBankAccountBankModel> internal_get_external_bank_account(external_bank_account_guid, opts)

Get ExternalBankAccount

Retrieves an external bank account.  Required scope: **internal:accounts:read**

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

api_instance = CybridApiBank::InternalBankApi.new
external_bank_account_guid = 'external_bank_account_guid_example' # String | Identifier for the external bank account.
opts = {
  force_balance_refresh: true, # Boolean | Force the balance on the account to be updated.
  include_balances: true, # Boolean | Include account balances in the response.
  include_pii: true # Boolean | Include account holder's PII in the response.
}

begin
  # Get ExternalBankAccount
  result = api_instance.internal_get_external_bank_account(external_bank_account_guid, opts)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_get_external_bank_account: #{e}"
end
```

#### Using the internal_get_external_bank_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalExternalBankAccountBankModel>, Integer, Hash)> internal_get_external_bank_account_with_http_info(external_bank_account_guid, opts)

```ruby
begin
  # Get ExternalBankAccount
  data, status_code, headers = api_instance.internal_get_external_bank_account_with_http_info(external_bank_account_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalExternalBankAccountBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_get_external_bank_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_bank_account_guid** | **String** | Identifier for the external bank account. |  |
| **force_balance_refresh** | **Boolean** | Force the balance on the account to be updated. | [optional] |
| **include_balances** | **Boolean** | Include account balances in the response. | [optional] |
| **include_pii** | **Boolean** | Include account holder&#39;s PII in the response. | [optional] |

### Return type

[**InternalExternalBankAccountBankModel**](InternalExternalBankAccountBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## internal_get_external_wallet

> <InternalExternalWalletBankModel> internal_get_external_wallet(external_wallet_guid)

Get ExternalWallet

Retrieves an internal wallet.  Required scope: **internal:accounts:read**

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

api_instance = CybridApiBank::InternalBankApi.new
external_wallet_guid = 'external_wallet_guid_example' # String | Identifier for the internal wallet.

begin
  # Get ExternalWallet
  result = api_instance.internal_get_external_wallet(external_wallet_guid)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_get_external_wallet: #{e}"
end
```

#### Using the internal_get_external_wallet_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalExternalWalletBankModel>, Integer, Hash)> internal_get_external_wallet_with_http_info(external_wallet_guid)

```ruby
begin
  # Get ExternalWallet
  data, status_code, headers = api_instance.internal_get_external_wallet_with_http_info(external_wallet_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalExternalWalletBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_get_external_wallet_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_wallet_guid** | **String** | Identifier for the internal wallet. |  |

### Return type

[**InternalExternalWalletBankModel**](InternalExternalWalletBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## internal_get_external_wallet_screening

> <InternalExternalWalletScreeningBankModel> internal_get_external_wallet_screening(external_wallet_screening_guid)

Get ExternalWalletScreening

Retrieves an external wallet screening.  Required scope: **internal:external_wallet_screenings:read**

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

api_instance = CybridApiBank::InternalBankApi.new
external_wallet_screening_guid = 'external_wallet_screening_guid_example' # String | Identifier for the external wallet screening.

begin
  # Get ExternalWalletScreening
  result = api_instance.internal_get_external_wallet_screening(external_wallet_screening_guid)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_get_external_wallet_screening: #{e}"
end
```

#### Using the internal_get_external_wallet_screening_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalExternalWalletScreeningBankModel>, Integer, Hash)> internal_get_external_wallet_screening_with_http_info(external_wallet_screening_guid)

```ruby
begin
  # Get ExternalWalletScreening
  data, status_code, headers = api_instance.internal_get_external_wallet_screening_with_http_info(external_wallet_screening_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalExternalWalletScreeningBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_get_external_wallet_screening_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_wallet_screening_guid** | **String** | Identifier for the external wallet screening. |  |

### Return type

[**InternalExternalWalletScreeningBankModel**](InternalExternalWalletScreeningBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## internal_get_file

> <PlatformFileBankModel> internal_get_file(file_guid)

Get File

Retrieves an file.  Required scope: **internal:files:read**

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

api_instance = CybridApiBank::InternalBankApi.new
file_guid = 'file_guid_example' # String | Identifier for the file.

begin
  # Get File
  result = api_instance.internal_get_file(file_guid)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_get_file: #{e}"
end
```

#### Using the internal_get_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlatformFileBankModel>, Integer, Hash)> internal_get_file_with_http_info(file_guid)

```ruby
begin
  # Get File
  data, status_code, headers = api_instance.internal_get_file_with_http_info(file_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlatformFileBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_get_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_guid** | **String** | Identifier for the file. |  |

### Return type

[**PlatformFileBankModel**](PlatformFileBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## internal_get_internal_bank_account

> <InternalInternalBankAccountBankModel> internal_get_internal_bank_account(internal_bank_account_guid)

Get InternalBankAccount

Retrieves an internal bank account.  Required scope: **internal:accounts:read**

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

api_instance = CybridApiBank::InternalBankApi.new
internal_bank_account_guid = 'internal_bank_account_guid_example' # String | Identifier for the internal bank account.

begin
  # Get InternalBankAccount
  result = api_instance.internal_get_internal_bank_account(internal_bank_account_guid)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_get_internal_bank_account: #{e}"
end
```

#### Using the internal_get_internal_bank_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalInternalBankAccountBankModel>, Integer, Hash)> internal_get_internal_bank_account_with_http_info(internal_bank_account_guid)

```ruby
begin
  # Get InternalBankAccount
  data, status_code, headers = api_instance.internal_get_internal_bank_account_with_http_info(internal_bank_account_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalInternalBankAccountBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_get_internal_bank_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **internal_bank_account_guid** | **String** | Identifier for the internal bank account. |  |

### Return type

[**InternalInternalBankAccountBankModel**](InternalInternalBankAccountBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## internal_get_internal_wallet

> <InternalInternalWalletBankModel> internal_get_internal_wallet(internal_wallet_guid)

Get InternalWallet

Retrieves an internal wallet.  Required scope: **internal:accounts:read**

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

api_instance = CybridApiBank::InternalBankApi.new
internal_wallet_guid = 'internal_wallet_guid_example' # String | Identifier for the internal wallet.

begin
  # Get InternalWallet
  result = api_instance.internal_get_internal_wallet(internal_wallet_guid)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_get_internal_wallet: #{e}"
end
```

#### Using the internal_get_internal_wallet_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalInternalWalletBankModel>, Integer, Hash)> internal_get_internal_wallet_with_http_info(internal_wallet_guid)

```ruby
begin
  # Get InternalWallet
  data, status_code, headers = api_instance.internal_get_internal_wallet_with_http_info(internal_wallet_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalInternalWalletBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_get_internal_wallet_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **internal_wallet_guid** | **String** | Identifier for the internal wallet. |  |

### Return type

[**InternalInternalWalletBankModel**](InternalInternalWalletBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## internal_get_invoice

> <InternalInvoiceBankModel> internal_get_invoice(invoice_guid)

Get Invoice

Retrieves an invoice.  Required scope: **internal:invoices:read**

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

api_instance = CybridApiBank::InternalBankApi.new
invoice_guid = 'invoice_guid_example' # String | Identifier for the invoice.

begin
  # Get Invoice
  result = api_instance.internal_get_invoice(invoice_guid)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_get_invoice: #{e}"
end
```

#### Using the internal_get_invoice_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalInvoiceBankModel>, Integer, Hash)> internal_get_invoice_with_http_info(invoice_guid)

```ruby
begin
  # Get Invoice
  data, status_code, headers = api_instance.internal_get_invoice_with_http_info(invoice_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalInvoiceBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_get_invoice_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invoice_guid** | **String** | Identifier for the invoice. |  |

### Return type

[**InternalInvoiceBankModel**](InternalInvoiceBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## internal_get_plan

> <InternalPlanBankModel> internal_get_plan(plan_guid)

Get Plan

Retrieves a plan.  Required scope: **internal:plans:read**

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

api_instance = CybridApiBank::InternalBankApi.new
plan_guid = 'plan_guid_example' # String | Identifier for the plan.

begin
  # Get Plan
  result = api_instance.internal_get_plan(plan_guid)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_get_plan: #{e}"
end
```

#### Using the internal_get_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalPlanBankModel>, Integer, Hash)> internal_get_plan_with_http_info(plan_guid)

```ruby
begin
  # Get Plan
  data, status_code, headers = api_instance.internal_get_plan_with_http_info(plan_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalPlanBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_get_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_guid** | **String** | Identifier for the plan. |  |

### Return type

[**InternalPlanBankModel**](InternalPlanBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## internal_get_quote

> <InternalQuoteBankModel> internal_get_quote(quote_guid)

Get Internal Quote

Retrieves a quote.  Required scope: **internal:quotes:read**

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

api_instance = CybridApiBank::InternalBankApi.new
quote_guid = 'quote_guid_example' # String | Identifier for the quote.

begin
  # Get Internal Quote
  result = api_instance.internal_get_quote(quote_guid)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_get_quote: #{e}"
end
```

#### Using the internal_get_quote_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalQuoteBankModel>, Integer, Hash)> internal_get_quote_with_http_info(quote_guid)

```ruby
begin
  # Get Internal Quote
  data, status_code, headers = api_instance.internal_get_quote_with_http_info(quote_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalQuoteBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_get_quote_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **quote_guid** | **String** | Identifier for the quote. |  |

### Return type

[**InternalQuoteBankModel**](InternalQuoteBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## internal_get_reconciliation

> <InternalReconciliationBankModel> internal_get_reconciliation(guid)

Get Reconciliation

Retrieves a reconciliation.  Required scope: **internal:transfers:read**

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

api_instance = CybridApiBank::InternalBankApi.new
guid = 'guid_example' # String | Identifier for the resource.

begin
  # Get Reconciliation
  result = api_instance.internal_get_reconciliation(guid)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_get_reconciliation: #{e}"
end
```

#### Using the internal_get_reconciliation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalReconciliationBankModel>, Integer, Hash)> internal_get_reconciliation_with_http_info(guid)

```ruby
begin
  # Get Reconciliation
  data, status_code, headers = api_instance.internal_get_reconciliation_with_http_info(guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalReconciliationBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_get_reconciliation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Identifier for the resource. |  |

### Return type

[**InternalReconciliationBankModel**](InternalReconciliationBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## internal_get_trade

> <InternalTradeBankModel> internal_get_trade(trade_guid)

Get Internal Trade

Retrieves a trade.  Required scope: **internal:trades:read**

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

api_instance = CybridApiBank::InternalBankApi.new
trade_guid = 'trade_guid_example' # String | Identifier for the trade.

begin
  # Get Internal Trade
  result = api_instance.internal_get_trade(trade_guid)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_get_trade: #{e}"
end
```

#### Using the internal_get_trade_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalTradeBankModel>, Integer, Hash)> internal_get_trade_with_http_info(trade_guid)

```ruby
begin
  # Get Internal Trade
  data, status_code, headers = api_instance.internal_get_trade_with_http_info(trade_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalTradeBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_get_trade_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **trade_guid** | **String** | Identifier for the trade. |  |

### Return type

[**InternalTradeBankModel**](InternalTradeBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## internal_get_transfer

> <InternalTransferBankModel> internal_get_transfer(guid, opts)

Get Transfer

Retrieves an internal transfer.  Required scope: **internal:transfers:read**

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

api_instance = CybridApiBank::InternalBankApi.new
guid = 'guid_example' # String | Identifier for the internal transfer.
opts = {
  include_provider_info: true # Boolean | Include provider info in the response.
}

begin
  # Get Transfer
  result = api_instance.internal_get_transfer(guid, opts)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_get_transfer: #{e}"
end
```

#### Using the internal_get_transfer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalTransferBankModel>, Integer, Hash)> internal_get_transfer_with_http_info(guid, opts)

```ruby
begin
  # Get Transfer
  data, status_code, headers = api_instance.internal_get_transfer_with_http_info(guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalTransferBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_get_transfer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Identifier for the internal transfer. |  |
| **include_provider_info** | **Boolean** | Include provider info in the response. | [optional] |

### Return type

[**InternalTransferBankModel**](InternalTransferBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## internal_get_transfer_screening

> <InternalTransferScreeningBankModel> internal_get_transfer_screening(transfer_screening_guid)

Get TransferScreening

Retrieves an transfer screening.  Required scope: **internal:transfer_screenings:read**

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

api_instance = CybridApiBank::InternalBankApi.new
transfer_screening_guid = 'transfer_screening_guid_example' # String | Identifier for the transfer screening.

begin
  # Get TransferScreening
  result = api_instance.internal_get_transfer_screening(transfer_screening_guid)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_get_transfer_screening: #{e}"
end
```

#### Using the internal_get_transfer_screening_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalTransferScreeningBankModel>, Integer, Hash)> internal_get_transfer_screening_with_http_info(transfer_screening_guid)

```ruby
begin
  # Get TransferScreening
  data, status_code, headers = api_instance.internal_get_transfer_screening_with_http_info(transfer_screening_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalTransferScreeningBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_get_transfer_screening_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transfer_screening_guid** | **String** | Identifier for the transfer screening. |  |

### Return type

[**InternalTransferScreeningBankModel**](InternalTransferScreeningBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## internal_get_wallet_service

> <InternalWalletServiceBankModel> internal_get_wallet_service(wallet_service_guid)

Get WalletService

Retrieves a wallet service.  Required scope: **internal:wallet_services:read**

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

api_instance = CybridApiBank::InternalBankApi.new
wallet_service_guid = 'wallet_service_guid_example' # String | Identifier for the wallet service.

begin
  # Get WalletService
  result = api_instance.internal_get_wallet_service(wallet_service_guid)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_get_wallet_service: #{e}"
end
```

#### Using the internal_get_wallet_service_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalWalletServiceBankModel>, Integer, Hash)> internal_get_wallet_service_with_http_info(wallet_service_guid)

```ruby
begin
  # Get WalletService
  data, status_code, headers = api_instance.internal_get_wallet_service_with_http_info(wallet_service_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalWalletServiceBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_get_wallet_service_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **wallet_service_guid** | **String** | Identifier for the wallet service. |  |

### Return type

[**InternalWalletServiceBankModel**](InternalWalletServiceBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## internal_list_accounts

> <AccountListBankModel> internal_list_accounts(opts)

List Accounts

Retrieves a list of accounts.  Required scope: **internal:accounts:read**

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

api_instance = CybridApiBank::InternalBankApi.new
opts = {
  page: 56, # Integer | The page index to retrieve.
  per_page: 56, # Integer | The number of entities per page to return.
  owner: 'owner_example', # String | The owner of the entity.
  guid: 'guid_example', # String | Comma separated account_guids to list accounts for.
  customer_guid: 'customer_guid_example', # String | Comma separated customer_guids to list accounts for.
  bank_guid: 'bank_guid_example', # String | Comma separated bank_guids to list accounts for.
  type: 'type_example', # String | Comma separated account types to list accounts for.
  asset: 'asset_example' # String | Comma separated assets to list accounts for.
}

begin
  # List Accounts
  result = api_instance.internal_list_accounts(opts)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_list_accounts: #{e}"
end
```

#### Using the internal_list_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountListBankModel>, Integer, Hash)> internal_list_accounts_with_http_info(opts)

```ruby
begin
  # List Accounts
  data, status_code, headers = api_instance.internal_list_accounts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountListBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_list_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | The page index to retrieve. | [optional] |
| **per_page** | **Integer** | The number of entities per page to return. | [optional] |
| **owner** | **String** | The owner of the entity. | [optional] |
| **guid** | **String** | Comma separated account_guids to list accounts for. | [optional] |
| **customer_guid** | **String** | Comma separated customer_guids to list accounts for. | [optional] |
| **bank_guid** | **String** | Comma separated bank_guids to list accounts for. | [optional] |
| **type** | **String** | Comma separated account types to list accounts for. | [optional] |
| **asset** | **String** | Comma separated assets to list accounts for. | [optional] |

### Return type

[**AccountListBankModel**](AccountListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## internal_list_activity_limit_configurations

> <InternalActivityLimitConfigurationListBankModel> internal_list_activity_limit_configurations(opts)

List ActivityLimitConfigurations

Retrieves a listing of activity limit configurations.  Required scope: **internal:banks:read**

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

api_instance = CybridApiBank::InternalBankApi.new
opts = {
  page: 56, # Integer | 
  per_page: 56, # Integer | 
  type: 'type_example', # String | Comma separated configuration types to list activity limit configurations for.
  environment: 'environment_example', # String | Comma separated environments to list activity limit configurations for. 
  guid: 'guid_example', # String | Comma separated guids to list activity limit configurations for.
  customer_guid: 'customer_guid_example', # String | Comma separated customer guids to list activity limit configurations for.
  bank_guid: 'bank_guid_example', # String | Comma separated bank guids to list activity limit configurations for.
  audience: 'audience_example', # String | Comma separated audiences to list activity limit configurations for.
  country_code: 'country_code_example', # String | Comma separated country codes to list activity limit configurations for.
  activity: 'activity_example', # String | Comma separated activity types to list activity limit configurations for.
  side: 'side_example' # String | Comma separated activity sides to list activity limit configurations for.
}

begin
  # List ActivityLimitConfigurations
  result = api_instance.internal_list_activity_limit_configurations(opts)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_list_activity_limit_configurations: #{e}"
end
```

#### Using the internal_list_activity_limit_configurations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalActivityLimitConfigurationListBankModel>, Integer, Hash)> internal_list_activity_limit_configurations_with_http_info(opts)

```ruby
begin
  # List ActivityLimitConfigurations
  data, status_code, headers = api_instance.internal_list_activity_limit_configurations_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalActivityLimitConfigurationListBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_list_activity_limit_configurations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |
| **type** | **String** | Comma separated configuration types to list activity limit configurations for. | [optional] |
| **environment** | **String** | Comma separated environments to list activity limit configurations for.  | [optional] |
| **guid** | **String** | Comma separated guids to list activity limit configurations for. | [optional] |
| **customer_guid** | **String** | Comma separated customer guids to list activity limit configurations for. | [optional] |
| **bank_guid** | **String** | Comma separated bank guids to list activity limit configurations for. | [optional] |
| **audience** | **String** | Comma separated audiences to list activity limit configurations for. | [optional] |
| **country_code** | **String** | Comma separated country codes to list activity limit configurations for. | [optional] |
| **activity** | **String** | Comma separated activity types to list activity limit configurations for. | [optional] |
| **side** | **String** | Comma separated activity sides to list activity limit configurations for. | [optional] |

### Return type

[**InternalActivityLimitConfigurationListBankModel**](InternalActivityLimitConfigurationListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## internal_list_bank_account_services

> <InternalBankAccountServiceListBankModel> internal_list_bank_account_services(opts)

List BankAccountServices

Retrieves a listing of bank_account services.  Required scope: **internal:bank_account_services:read**

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

api_instance = CybridApiBank::InternalBankApi.new
opts = {
  page: 56, # Integer | 
  per_page: 56, # Integer | 
  environment: 'environment_example', # String | Comma separated environments to list bank_account services for.
  guid: 'guid_example', # String | Comma separated guids to list bank_account services for.
  type: 'type_example' # String | Comma separated types to list bank_account services for.
}

begin
  # List BankAccountServices
  result = api_instance.internal_list_bank_account_services(opts)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_list_bank_account_services: #{e}"
end
```

#### Using the internal_list_bank_account_services_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalBankAccountServiceListBankModel>, Integer, Hash)> internal_list_bank_account_services_with_http_info(opts)

```ruby
begin
  # List BankAccountServices
  data, status_code, headers = api_instance.internal_list_bank_account_services_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalBankAccountServiceListBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_list_bank_account_services_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |
| **environment** | **String** | Comma separated environments to list bank_account services for. | [optional] |
| **guid** | **String** | Comma separated guids to list bank_account services for. | [optional] |
| **type** | **String** | Comma separated types to list bank_account services for. | [optional] |

### Return type

[**InternalBankAccountServiceListBankModel**](InternalBankAccountServiceListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## internal_list_banks

> <InternalBankListBankModel> internal_list_banks(opts)

List Banks

Retrieves a listing of banks.  Required scope: **internal:banks:read**

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

api_instance = CybridApiBank::InternalBankApi.new
opts = {
  page: 56, # Integer | The page index to retrieve.
  per_page: 56, # Integer | The number of entities per page to return.
  guid: 'guid_example', # String | Comma separated bank_guids to list banks for.
  type: 'type_example', # String | Comma separated types to list banks for.
  organization_guid: 'organization_guid_example', # String | Organization guid to list banks for.
  bank_guid: 'bank_guid_example' # String | Bank guid to list banks for.
}

begin
  # List Banks
  result = api_instance.internal_list_banks(opts)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_list_banks: #{e}"
end
```

#### Using the internal_list_banks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalBankListBankModel>, Integer, Hash)> internal_list_banks_with_http_info(opts)

```ruby
begin
  # List Banks
  data, status_code, headers = api_instance.internal_list_banks_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalBankListBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_list_banks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | The page index to retrieve. | [optional] |
| **per_page** | **Integer** | The number of entities per page to return. | [optional] |
| **guid** | **String** | Comma separated bank_guids to list banks for. | [optional] |
| **type** | **String** | Comma separated types to list banks for. | [optional] |
| **organization_guid** | **String** | Organization guid to list banks for. | [optional] |
| **bank_guid** | **String** | Bank guid to list banks for. | [optional] |

### Return type

[**InternalBankListBankModel**](InternalBankListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## internal_list_crypto_asset_configurations

> <InternalCryptoAssetConfigurationListBankModel> internal_list_crypto_asset_configurations(opts)

List CryptoAssetConfiguration

Retrieves a listing of CryptoAssetConfiguration.Required scope: **internal:banks:read**

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

api_instance = CybridApiBank::InternalBankApi.new
opts = {
  page: 56, # Integer | 
  per_page: 56, # Integer | 
  guid: 'guid_example', # String | Comma separated guids to list resources for (max 100).
  asset_code: 'asset_code_example', # String | Comma separated asset codes to list resources for (max 100).
  bank_guid: 'bank_guid_example', # String | Comma separated bank guids to list resources for (max 100).
  deposits_enabled: true, # Boolean | Filter resources with deposits enabled.
  environment: 'environment_example', # String | Environment to list resources for.
  invoices_enabled: true, # Boolean | Filter resources with invoices enabled.
  storage_enabled: true, # Boolean | Filter resources with storage enabled.
  type: 'type_example' # String | Type of resources to list.
}

begin
  # List CryptoAssetConfiguration
  result = api_instance.internal_list_crypto_asset_configurations(opts)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_list_crypto_asset_configurations: #{e}"
end
```

#### Using the internal_list_crypto_asset_configurations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalCryptoAssetConfigurationListBankModel>, Integer, Hash)> internal_list_crypto_asset_configurations_with_http_info(opts)

```ruby
begin
  # List CryptoAssetConfiguration
  data, status_code, headers = api_instance.internal_list_crypto_asset_configurations_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalCryptoAssetConfigurationListBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_list_crypto_asset_configurations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |
| **guid** | **String** | Comma separated guids to list resources for (max 100). | [optional] |
| **asset_code** | **String** | Comma separated asset codes to list resources for (max 100). | [optional] |
| **bank_guid** | **String** | Comma separated bank guids to list resources for (max 100). | [optional] |
| **deposits_enabled** | **Boolean** | Filter resources with deposits enabled. | [optional] |
| **environment** | **String** | Environment to list resources for. | [optional] |
| **invoices_enabled** | **Boolean** | Filter resources with invoices enabled. | [optional] |
| **storage_enabled** | **Boolean** | Filter resources with storage enabled. | [optional] |
| **type** | **String** | Type of resources to list. | [optional] |

### Return type

[**InternalCryptoAssetConfigurationListBankModel**](InternalCryptoAssetConfigurationListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## internal_list_customers

> <CustomerListBankModel> internal_list_customers(opts)

List Customers

Retrieves a listing of Customers.  Required scope: **internal:customers:read**

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

api_instance = CybridApiBank::InternalBankApi.new
opts = {
  page: 56, # Integer | 
  per_page: 56, # Integer | 
  guid: 'guid_example', # String | Comma separated assets to list customers for.
  bank_guid: 'bank_guid_example', # String | Comma separated bank_guids to list customers for.
  organization_guid: 'organization_guid_example' # String | Comma separated organization_guids to list customers for.
}

begin
  # List Customers
  result = api_instance.internal_list_customers(opts)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_list_customers: #{e}"
end
```

#### Using the internal_list_customers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomerListBankModel>, Integer, Hash)> internal_list_customers_with_http_info(opts)

```ruby
begin
  # List Customers
  data, status_code, headers = api_instance.internal_list_customers_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerListBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_list_customers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |
| **guid** | **String** | Comma separated assets to list customers for. | [optional] |
| **bank_guid** | **String** | Comma separated bank_guids to list customers for. | [optional] |
| **organization_guid** | **String** | Comma separated organization_guids to list customers for. | [optional] |

### Return type

[**CustomerListBankModel**](CustomerListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## internal_list_cybrid_accounts

> <InternalCybridAccountListBankModel> internal_list_cybrid_accounts(opts)

List CybridAccounts

Retrieves a listing of Cybrid accounts.  Required scope: **internal:cybrid_accounts:read**

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

api_instance = CybridApiBank::InternalBankApi.new
opts = {
  page: 56, # Integer | 
  per_page: 56, # Integer | 
  environment: 'environment_example', # String | Comma separated environments to list wallets for.
  type: 'type_example', # String | Comma separated types to list wallets for.
  asset: 'asset_example' # String | Comma separated assets to list wallets for.
}

begin
  # List CybridAccounts
  result = api_instance.internal_list_cybrid_accounts(opts)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_list_cybrid_accounts: #{e}"
end
```

#### Using the internal_list_cybrid_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalCybridAccountListBankModel>, Integer, Hash)> internal_list_cybrid_accounts_with_http_info(opts)

```ruby
begin
  # List CybridAccounts
  data, status_code, headers = api_instance.internal_list_cybrid_accounts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalCybridAccountListBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_list_cybrid_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |
| **environment** | **String** | Comma separated environments to list wallets for. | [optional] |
| **type** | **String** | Comma separated types to list wallets for. | [optional] |
| **asset** | **String** | Comma separated assets to list wallets for. | [optional] |

### Return type

[**InternalCybridAccountListBankModel**](InternalCybridAccountListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## internal_list_deposit_bank_accounts

> <DepositBankAccountListBankModel> internal_list_deposit_bank_accounts(opts)

List Deposit Bank Accounts

Retrieves a list of deposit bank accounts.  Required scope: **internal:deposit_bank_accounts:read**

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

api_instance = CybridApiBank::InternalBankApi.new
opts = {
  page: 56, # Integer | The page index to retrieve.
  per_page: 56, # Integer | The number of entities per page to return.
  guid: 'guid_example', # String | Comma separated guids to list deposit bank accounts for.
  bank_guid: 'bank_guid_example', # String | Comma separated bank_guids to list deposit bank accounts for.
  customer_guid: 'customer_guid_example', # String | Comma separated customer_guids to list deposit bank accounts for.
  label: 'label_example', # String | Comma separated labels to list deposit bank accounts for.
  unique_memo_id: 'unique_memo_id_example', # String | Comma separated unique memo ids to list deposit bank accounts for.
  type: 'type_example', # String | Comma separated types to list deposit bank accounts for.
  parent_deposit_bank_account_guid: 'parent_deposit_bank_account_guid_example' # String | Comma separated guids for parent accounts to list deposit bank accounts for.
}

begin
  # List Deposit Bank Accounts
  result = api_instance.internal_list_deposit_bank_accounts(opts)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_list_deposit_bank_accounts: #{e}"
end
```

#### Using the internal_list_deposit_bank_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DepositBankAccountListBankModel>, Integer, Hash)> internal_list_deposit_bank_accounts_with_http_info(opts)

```ruby
begin
  # List Deposit Bank Accounts
  data, status_code, headers = api_instance.internal_list_deposit_bank_accounts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DepositBankAccountListBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_list_deposit_bank_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | The page index to retrieve. | [optional] |
| **per_page** | **Integer** | The number of entities per page to return. | [optional] |
| **guid** | **String** | Comma separated guids to list deposit bank accounts for. | [optional] |
| **bank_guid** | **String** | Comma separated bank_guids to list deposit bank accounts for. | [optional] |
| **customer_guid** | **String** | Comma separated customer_guids to list deposit bank accounts for. | [optional] |
| **label** | **String** | Comma separated labels to list deposit bank accounts for. | [optional] |
| **unique_memo_id** | **String** | Comma separated unique memo ids to list deposit bank accounts for. | [optional] |
| **type** | **String** | Comma separated types to list deposit bank accounts for. | [optional] |
| **parent_deposit_bank_account_guid** | **String** | Comma separated guids for parent accounts to list deposit bank accounts for. | [optional] |

### Return type

[**DepositBankAccountListBankModel**](DepositBankAccountListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## internal_list_exchange_orders

> <InternalExchangeOrderListBankModel> internal_list_exchange_orders(opts)

List ExchangeOrder

Retrieves a listing of ExchangeOrders.Required scope: **internal:exchange_orders:read**

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

api_instance = CybridApiBank::InternalBankApi.new
opts = {
  page: 56, # Integer | 
  per_page: 56, # Integer | 
  guid: 'guid_example', # String | Comma separated guids to list resources for.
  state: 'state_example' # String | Comma separated states to list resources for.
}

begin
  # List ExchangeOrder
  result = api_instance.internal_list_exchange_orders(opts)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_list_exchange_orders: #{e}"
end
```

#### Using the internal_list_exchange_orders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalExchangeOrderListBankModel>, Integer, Hash)> internal_list_exchange_orders_with_http_info(opts)

```ruby
begin
  # List ExchangeOrder
  data, status_code, headers = api_instance.internal_list_exchange_orders_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalExchangeOrderListBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_list_exchange_orders_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |
| **guid** | **String** | Comma separated guids to list resources for. | [optional] |
| **state** | **String** | Comma separated states to list resources for. | [optional] |

### Return type

[**InternalExchangeOrderListBankModel**](InternalExchangeOrderListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## internal_list_exchange_settlement_configurations

> <InternalExchangeSettlementConfigurationListBankModel> internal_list_exchange_settlement_configurations(opts)

List ExchangeSettlementConfigurations

Retrieves a listing of configurations.  Required scope: **internal:exchanges:read**

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

api_instance = CybridApiBank::InternalBankApi.new
opts = {
  page: 56, # Integer | 
  per_page: 56, # Integer | 
  asset: 'asset_example', # String | Comma separated assets to list configurations for.
  exchange_guid: 'exchange_guid_example' # String | Comma separated exchange_guids to list configurations for.
}

begin
  # List ExchangeSettlementConfigurations
  result = api_instance.internal_list_exchange_settlement_configurations(opts)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_list_exchange_settlement_configurations: #{e}"
end
```

#### Using the internal_list_exchange_settlement_configurations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalExchangeSettlementConfigurationListBankModel>, Integer, Hash)> internal_list_exchange_settlement_configurations_with_http_info(opts)

```ruby
begin
  # List ExchangeSettlementConfigurations
  data, status_code, headers = api_instance.internal_list_exchange_settlement_configurations_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalExchangeSettlementConfigurationListBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_list_exchange_settlement_configurations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |
| **asset** | **String** | Comma separated assets to list configurations for. | [optional] |
| **exchange_guid** | **String** | Comma separated exchange_guids to list configurations for. | [optional] |

### Return type

[**InternalExchangeSettlementConfigurationListBankModel**](InternalExchangeSettlementConfigurationListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## internal_list_exchange_settlement_payment_orders

> <InternalExchangeSettlementPaymentOrderListBankModel> internal_list_exchange_settlement_payment_orders(opts)

List Exchange Settlement Payment Orders

Retrieves a listing of exchange settlement payment orders.  Required scope: **internal:exchange_settlements:read**

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

api_instance = CybridApiBank::InternalBankApi.new
opts = {
  page: 56, # Integer | 
  per_page: 56, # Integer | 
  settlement_guid: 'settlement_guid_example' # String | Comma separated exchange settlements to list payments for.
}

begin
  # List Exchange Settlement Payment Orders
  result = api_instance.internal_list_exchange_settlement_payment_orders(opts)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_list_exchange_settlement_payment_orders: #{e}"
end
```

#### Using the internal_list_exchange_settlement_payment_orders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalExchangeSettlementPaymentOrderListBankModel>, Integer, Hash)> internal_list_exchange_settlement_payment_orders_with_http_info(opts)

```ruby
begin
  # List Exchange Settlement Payment Orders
  data, status_code, headers = api_instance.internal_list_exchange_settlement_payment_orders_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalExchangeSettlementPaymentOrderListBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_list_exchange_settlement_payment_orders_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |
| **settlement_guid** | **String** | Comma separated exchange settlements to list payments for. | [optional] |

### Return type

[**InternalExchangeSettlementPaymentOrderListBankModel**](InternalExchangeSettlementPaymentOrderListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## internal_list_exchanges

> <InternalExchangeListBankModel> internal_list_exchanges(opts)

List Exchanges

Retrieves a listing of exchanges.  Required scope: **internal:exchanges:read**

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

api_instance = CybridApiBank::InternalBankApi.new
opts = {
  page: 56, # Integer | 
  per_page: 56, # Integer | 
  provider: 'provider_example', # String | Comma separated providers to list exchanges for.
  environment: 'environment_example' # String | Comma separated environments to list exchanges for.
}

begin
  # List Exchanges
  result = api_instance.internal_list_exchanges(opts)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_list_exchanges: #{e}"
end
```

#### Using the internal_list_exchanges_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalExchangeListBankModel>, Integer, Hash)> internal_list_exchanges_with_http_info(opts)

```ruby
begin
  # List Exchanges
  data, status_code, headers = api_instance.internal_list_exchanges_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalExchangeListBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_list_exchanges_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |
| **provider** | **String** | Comma separated providers to list exchanges for. | [optional] |
| **environment** | **String** | Comma separated environments to list exchanges for. | [optional] |

### Return type

[**InternalExchangeListBankModel**](InternalExchangeListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## internal_list_expected_payments

> <InternalExpectedPaymentListBankModel> internal_list_expected_payments(opts)

List Expected Payments

Retrieves a listing of expected payments.  Required scope: **internal:exchange_settlements:read**

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

api_instance = CybridApiBank::InternalBankApi.new
opts = {
  page: 56, # Integer | 
  per_page: 56, # Integer | 
  settlement_guid: 'settlement_guid_example' # String | Comma separated exchange settlements to list payments for.
}

begin
  # List Expected Payments
  result = api_instance.internal_list_expected_payments(opts)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_list_expected_payments: #{e}"
end
```

#### Using the internal_list_expected_payments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalExpectedPaymentListBankModel>, Integer, Hash)> internal_list_expected_payments_with_http_info(opts)

```ruby
begin
  # List Expected Payments
  data, status_code, headers = api_instance.internal_list_expected_payments_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalExpectedPaymentListBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_list_expected_payments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |
| **settlement_guid** | **String** | Comma separated exchange settlements to list payments for. | [optional] |

### Return type

[**InternalExpectedPaymentListBankModel**](InternalExpectedPaymentListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## internal_list_external_bank_accounts

> <InternalExternalBankAccountListBankModel> internal_list_external_bank_accounts(opts)

List ExternalBankAccounts

Retrieves a listing of external bank accounts.  Required scope: **internal:accounts:read**

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

api_instance = CybridApiBank::InternalBankApi.new
opts = {
  page: 56, # Integer | 
  per_page: 56, # Integer | 
  asset: 'asset_example', # String | Comma separated assets to list bank accounts for.
  bank_guid: 'bank_guid_example', # String | Comma separated bank_guids to list bank accounts for.
  exchange_guid: 'exchange_guid_example' # String | Comma separated exchange_guids to list bank accounts for.
}

begin
  # List ExternalBankAccounts
  result = api_instance.internal_list_external_bank_accounts(opts)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_list_external_bank_accounts: #{e}"
end
```

#### Using the internal_list_external_bank_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalExternalBankAccountListBankModel>, Integer, Hash)> internal_list_external_bank_accounts_with_http_info(opts)

```ruby
begin
  # List ExternalBankAccounts
  data, status_code, headers = api_instance.internal_list_external_bank_accounts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalExternalBankAccountListBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_list_external_bank_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |
| **asset** | **String** | Comma separated assets to list bank accounts for. | [optional] |
| **bank_guid** | **String** | Comma separated bank_guids to list bank accounts for. | [optional] |
| **exchange_guid** | **String** | Comma separated exchange_guids to list bank accounts for. | [optional] |

### Return type

[**InternalExternalBankAccountListBankModel**](InternalExternalBankAccountListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## internal_list_external_wallets

> <InternalExternalWalletListBankModel> internal_list_external_wallets(opts)

List ExternalWallets

Retrieves a listing of external wallets.  Required scope: **internal:accounts:read**

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

api_instance = CybridApiBank::InternalBankApi.new
opts = {
  page: 56, # Integer | 
  per_page: 56, # Integer | 
  asset: 'asset_example', # String | Comma separated assets to list wallets for.
  exchange_guid: 'exchange_guid_example' # String | Comma separated exchange_guids to list wallets for.
}

begin
  # List ExternalWallets
  result = api_instance.internal_list_external_wallets(opts)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_list_external_wallets: #{e}"
end
```

#### Using the internal_list_external_wallets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalExternalWalletListBankModel>, Integer, Hash)> internal_list_external_wallets_with_http_info(opts)

```ruby
begin
  # List ExternalWallets
  data, status_code, headers = api_instance.internal_list_external_wallets_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalExternalWalletListBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_list_external_wallets_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |
| **asset** | **String** | Comma separated assets to list wallets for. | [optional] |
| **exchange_guid** | **String** | Comma separated exchange_guids to list wallets for. | [optional] |

### Return type

[**InternalExternalWalletListBankModel**](InternalExternalWalletListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## internal_list_fee_configurations

> <InternalFeeConfigurationListBankModel> internal_list_fee_configurations(opts)

List FeeConfiguration

Retrieves a listing of FeeConfiguration.Required scope: **internal:banks:read**

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

api_instance = CybridApiBank::InternalBankApi.new
opts = {
  page: 56, # Integer | 
  per_page: 56, # Integer | 
  guid: 'guid_example', # String | Comma separated guids to list resources for (max 100).
  configuration_type: 'configuration_type_example', # String | Comma separated configuration types to list resources for.
  product_type: 'product_type_example', # String | Comma separated product types to list resources for.
  primary_asset_code: 'primary_asset_code_example', # String | Comma separated primary asset codes to list resources for.
  counter_asset_code: 'counter_asset_code_example', # String | Comma separated counter asset codes to list resources for.
  bank_guid: 'bank_guid_example', # String | Comma separated bank guids to list resources for.
  organization_guid: 'organization_guid_example' # String | Comma separated organization guids to list resources for.
}

begin
  # List FeeConfiguration
  result = api_instance.internal_list_fee_configurations(opts)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_list_fee_configurations: #{e}"
end
```

#### Using the internal_list_fee_configurations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalFeeConfigurationListBankModel>, Integer, Hash)> internal_list_fee_configurations_with_http_info(opts)

```ruby
begin
  # List FeeConfiguration
  data, status_code, headers = api_instance.internal_list_fee_configurations_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalFeeConfigurationListBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_list_fee_configurations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |
| **guid** | **String** | Comma separated guids to list resources for (max 100). | [optional] |
| **configuration_type** | **String** | Comma separated configuration types to list resources for. | [optional] |
| **product_type** | **String** | Comma separated product types to list resources for. | [optional] |
| **primary_asset_code** | **String** | Comma separated primary asset codes to list resources for. | [optional] |
| **counter_asset_code** | **String** | Comma separated counter asset codes to list resources for. | [optional] |
| **bank_guid** | **String** | Comma separated bank guids to list resources for. | [optional] |
| **organization_guid** | **String** | Comma separated organization guids to list resources for. | [optional] |

### Return type

[**InternalFeeConfigurationListBankModel**](InternalFeeConfigurationListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## internal_list_fees

> <InternalFeeChargeListBankModel> internal_list_fees(opts)

List Fees

Retrieves a listing of Fees.Required scope: **internal:fees:read**

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

api_instance = CybridApiBank::InternalBankApi.new
opts = {
  page: 56, # Integer | 
  per_page: 56, # Integer | 
  guid: 'guid_example', # String | Comma separated guids to list resources for.
  state: 'state_example' # String | Comma separated states to list resources for.
}

begin
  # List Fees
  result = api_instance.internal_list_fees(opts)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_list_fees: #{e}"
end
```

#### Using the internal_list_fees_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalFeeChargeListBankModel>, Integer, Hash)> internal_list_fees_with_http_info(opts)

```ruby
begin
  # List Fees
  data, status_code, headers = api_instance.internal_list_fees_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalFeeChargeListBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_list_fees_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |
| **guid** | **String** | Comma separated guids to list resources for. | [optional] |
| **state** | **String** | Comma separated states to list resources for. | [optional] |

### Return type

[**InternalFeeChargeListBankModel**](InternalFeeChargeListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## internal_list_internal_bank_accounts

> <InternalInternalBankAccountListBankModel> internal_list_internal_bank_accounts(opts)

List InternalBankAccounts

Retrieves a listing of internal bank accounts.  Required scope: **internal:accounts:read**

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

api_instance = CybridApiBank::InternalBankApi.new
opts = {
  page: 56, # Integer | 
  per_page: 56, # Integer | 
  environment: 'environment_example', # String | Comma separated environments to list bank accounts for.
  asset: 'asset_example', # String | Comma separated assets to list bank accounts for.
  account_kind: 'account_kind_example' # String | Comma separated account kinds to list bank accounts for.
}

begin
  # List InternalBankAccounts
  result = api_instance.internal_list_internal_bank_accounts(opts)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_list_internal_bank_accounts: #{e}"
end
```

#### Using the internal_list_internal_bank_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalInternalBankAccountListBankModel>, Integer, Hash)> internal_list_internal_bank_accounts_with_http_info(opts)

```ruby
begin
  # List InternalBankAccounts
  data, status_code, headers = api_instance.internal_list_internal_bank_accounts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalInternalBankAccountListBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_list_internal_bank_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |
| **environment** | **String** | Comma separated environments to list bank accounts for. | [optional] |
| **asset** | **String** | Comma separated assets to list bank accounts for. | [optional] |
| **account_kind** | **String** | Comma separated account kinds to list bank accounts for. | [optional] |

### Return type

[**InternalInternalBankAccountListBankModel**](InternalInternalBankAccountListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## internal_list_internal_wallets

> <InternalInternalWalletListBankModel> internal_list_internal_wallets(opts)

List InternalWallets

Retrieves a listing of internal wallets.  Required scope: **internal:accounts:read**

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

api_instance = CybridApiBank::InternalBankApi.new
opts = {
  page: 56, # Integer | 
  per_page: 56, # Integer | 
  owner: 'owner_example', # String | The owner of the entity.
  environment: 'environment_example', # String | Comma separated environments to list wallets for.
  guid: 'guid_example', # String | Comma separated guids to list wallets for.
  bank_guid: 'bank_guid_example', # String | Comma separated bank_guids to list wallets for.
  customer_guid: 'customer_guid_example', # String | Comma separated customer_guids to list wallets for.
  internal_wallet_group_guid: 'internal_wallet_group_guid_example', # String | Comma separated internal_wallet_group_guids to list wallets for.
  type: 'type_example', # String | Comma separated types to list wallets for.
  asset: 'asset_example', # String | Comma separated assets to list wallets for.
  account_kind: 'account_kind_example' # String | Comma separated account kinds to list wallets for.
}

begin
  # List InternalWallets
  result = api_instance.internal_list_internal_wallets(opts)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_list_internal_wallets: #{e}"
end
```

#### Using the internal_list_internal_wallets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalInternalWalletListBankModel>, Integer, Hash)> internal_list_internal_wallets_with_http_info(opts)

```ruby
begin
  # List InternalWallets
  data, status_code, headers = api_instance.internal_list_internal_wallets_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalInternalWalletListBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_list_internal_wallets_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |
| **owner** | **String** | The owner of the entity. | [optional] |
| **environment** | **String** | Comma separated environments to list wallets for. | [optional] |
| **guid** | **String** | Comma separated guids to list wallets for. | [optional] |
| **bank_guid** | **String** | Comma separated bank_guids to list wallets for. | [optional] |
| **customer_guid** | **String** | Comma separated customer_guids to list wallets for. | [optional] |
| **internal_wallet_group_guid** | **String** | Comma separated internal_wallet_group_guids to list wallets for. | [optional] |
| **type** | **String** | Comma separated types to list wallets for. | [optional] |
| **asset** | **String** | Comma separated assets to list wallets for. | [optional] |
| **account_kind** | **String** | Comma separated account kinds to list wallets for. | [optional] |

### Return type

[**InternalInternalWalletListBankModel**](InternalInternalWalletListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## internal_list_invoices

> <InternalInternalInvoiceListBankModel> internal_list_invoices(opts)

List Invoices

Retrieves a list of invoices.  Required scope: **internal:invoices:read**

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

api_instance = CybridApiBank::InternalBankApi.new
opts = {
  page: 56, # Integer | The page index to retrieve.
  per_page: 56, # Integer | The number of entities per page to return.
  guid: 'guid_example', # String | Comma separated guids to list invoices for.
  bank_guid: 'bank_guid_example', # String | Comma separated bank_guids to list invoices for.
  customer_guid: 'customer_guid_example', # String | Comma separated customer_guids to list invoices for.
  account_guid: 'account_guid_example', # String | Comma separated account_guids to list invoices for.
  state: 'state_example', # String | Comma separated states to list invoices for.
  asset: 'asset_example', # String | Comma separated assets to list invoices for.
  environment: 'sandbox', # String | 
  label: 'label_example' # String | Comma separated labels to list invoices for.
}

begin
  # List Invoices
  result = api_instance.internal_list_invoices(opts)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_list_invoices: #{e}"
end
```

#### Using the internal_list_invoices_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalInternalInvoiceListBankModel>, Integer, Hash)> internal_list_invoices_with_http_info(opts)

```ruby
begin
  # List Invoices
  data, status_code, headers = api_instance.internal_list_invoices_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalInternalInvoiceListBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_list_invoices_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | The page index to retrieve. | [optional] |
| **per_page** | **Integer** | The number of entities per page to return. | [optional] |
| **guid** | **String** | Comma separated guids to list invoices for. | [optional] |
| **bank_guid** | **String** | Comma separated bank_guids to list invoices for. | [optional] |
| **customer_guid** | **String** | Comma separated customer_guids to list invoices for. | [optional] |
| **account_guid** | **String** | Comma separated account_guids to list invoices for. | [optional] |
| **state** | **String** | Comma separated states to list invoices for. | [optional] |
| **asset** | **String** | Comma separated assets to list invoices for. | [optional] |
| **environment** | **String** |  | [optional] |
| **label** | **String** | Comma separated labels to list invoices for. | [optional] |

### Return type

[**InternalInternalInvoiceListBankModel**](InternalInternalInvoiceListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## internal_list_reconciliations

> <InternalReconciliationListBankModel> internal_list_reconciliations(opts)

List Reconciliations

Retrieves a listing of reconciliations.  Required scope: **internal:transfers:read**

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

api_instance = CybridApiBank::InternalBankApi.new
opts = {
  page: 56, # Integer | 
  per_page: 56, # Integer | 
  category: 'category_example', # String | Comma separated categories to list reconciliations for.
  confidence: 'confidence_example', # String | Comma separated confidences to list reconciliations for.
  direction: 'direction_example', # String | Comma separated directions to list reconciliations for.
  transfer_guid: 'transfer_guid_example', # String | Comma separated transfer_guids to list reconciliations for.
  transaction_id: 'transaction_id_example' # String | Comma separated transaction_ids to list reconciliations for.
}

begin
  # List Reconciliations
  result = api_instance.internal_list_reconciliations(opts)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_list_reconciliations: #{e}"
end
```

#### Using the internal_list_reconciliations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalReconciliationListBankModel>, Integer, Hash)> internal_list_reconciliations_with_http_info(opts)

```ruby
begin
  # List Reconciliations
  data, status_code, headers = api_instance.internal_list_reconciliations_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalReconciliationListBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_list_reconciliations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |
| **category** | **String** | Comma separated categories to list reconciliations for. | [optional] |
| **confidence** | **String** | Comma separated confidences to list reconciliations for. | [optional] |
| **direction** | **String** | Comma separated directions to list reconciliations for. | [optional] |
| **transfer_guid** | **String** | Comma separated transfer_guids to list reconciliations for. | [optional] |
| **transaction_id** | **String** | Comma separated transaction_ids to list reconciliations for. | [optional] |

### Return type

[**InternalReconciliationListBankModel**](InternalReconciliationListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## internal_list_trades

> <TradeListBankModel> internal_list_trades(opts)

List Trades

Retrieves a list of trades.  Required scope: **internal:trades:read**

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

api_instance = CybridApiBank::InternalBankApi.new
opts = {
  page: 56, # Integer | The page index to retrieve.
  per_page: 56, # Integer | The number of entities per page to return.
  guid: 'guid_example', # String | Comma separated trade_guids to list trades for.
  customer_guid: 'customer_guid_example', # String | Comma separated customer_guids to list trades for.
  bank_guid: 'bank_guid_example' # String | Comma separated bank_guids to list trades for.
}

begin
  # List Trades
  result = api_instance.internal_list_trades(opts)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_list_trades: #{e}"
end
```

#### Using the internal_list_trades_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TradeListBankModel>, Integer, Hash)> internal_list_trades_with_http_info(opts)

```ruby
begin
  # List Trades
  data, status_code, headers = api_instance.internal_list_trades_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TradeListBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_list_trades_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | The page index to retrieve. | [optional] |
| **per_page** | **Integer** | The number of entities per page to return. | [optional] |
| **guid** | **String** | Comma separated trade_guids to list trades for. | [optional] |
| **customer_guid** | **String** | Comma separated customer_guids to list trades for. | [optional] |
| **bank_guid** | **String** | Comma separated bank_guids to list trades for. | [optional] |

### Return type

[**TradeListBankModel**](TradeListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## internal_list_trading_symbol_configurations

> <InternalTradingSymbolConfigurationListBankModel> internal_list_trading_symbol_configurations(opts)

List TradingSymbolConfigurations

Retrieves a listing of trading symbol configurations.  Required scope: **internal:banks:read**

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

api_instance = CybridApiBank::InternalBankApi.new
opts = {
  page: 56, # Integer | 
  per_page: 56, # Integer | 
  bank_guid: 'bank_guid_example' # String | Comma separated bank guids to list trading symbol configurations for.
}

begin
  # List TradingSymbolConfigurations
  result = api_instance.internal_list_trading_symbol_configurations(opts)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_list_trading_symbol_configurations: #{e}"
end
```

#### Using the internal_list_trading_symbol_configurations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalTradingSymbolConfigurationListBankModel>, Integer, Hash)> internal_list_trading_symbol_configurations_with_http_info(opts)

```ruby
begin
  # List TradingSymbolConfigurations
  data, status_code, headers = api_instance.internal_list_trading_symbol_configurations_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalTradingSymbolConfigurationListBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_list_trading_symbol_configurations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |
| **bank_guid** | **String** | Comma separated bank guids to list trading symbol configurations for. | [optional] |

### Return type

[**InternalTradingSymbolConfigurationListBankModel**](InternalTradingSymbolConfigurationListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## internal_list_transactions

> <InternalTransactionsListBankModel> internal_list_transactions(environment, account_guid, account_type, opts)

List Transactions

Retrieves a listing of transactions.  Required scope: **internal:transfers:read**

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

api_instance = CybridApiBank::InternalBankApi.new
environment = 'sandbox' # String | 
account_guid = 'account_guid_example' # String | 
account_type = 'internal_wallet' # String | 
opts = {
  cursor: 'cursor_example', # String | 
  per_page: 56, # Integer | 
  include_pii: true, # Boolean | Include PII in the response.
  created_at_gte: 'created_at_gte_example', # String | Created at start date inclusive lower bound, ISO8601.
  created_at_lt: 'created_at_lt_example' # String | Created at end date exclusive upper bound, ISO8601.
}

begin
  # List Transactions
  result = api_instance.internal_list_transactions(environment, account_guid, account_type, opts)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_list_transactions: #{e}"
end
```

#### Using the internal_list_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalTransactionsListBankModel>, Integer, Hash)> internal_list_transactions_with_http_info(environment, account_guid, account_type, opts)

```ruby
begin
  # List Transactions
  data, status_code, headers = api_instance.internal_list_transactions_with_http_info(environment, account_guid, account_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalTransactionsListBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_list_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **environment** | **String** |  |  |
| **account_guid** | **String** |  |  |
| **account_type** | **String** |  |  |
| **cursor** | **String** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |
| **include_pii** | **Boolean** | Include PII in the response. | [optional] |
| **created_at_gte** | **String** | Created at start date inclusive lower bound, ISO8601. | [optional] |
| **created_at_lt** | **String** | Created at end date exclusive upper bound, ISO8601. | [optional] |

### Return type

[**InternalTransactionsListBankModel**](InternalTransactionsListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## internal_list_transfers

> <InternalTransferListBankModel> internal_list_transfers(opts)

List Transfers

Retrieves a listing of internal transfers.  Required scope: **internal:transfers:read**

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

api_instance = CybridApiBank::InternalBankApi.new
opts = {
  page: 56, # Integer | 
  per_page: 56, # Integer | 
  asset: 'asset_example', # String | Comma separated assets to list transfers for.
  guid: 'guid_example', # String | Comma separated transfer_guids to list transfers for.
  transfer_type: 'transfer_type_example', # String | Comma separated transfer_types to list accounts for.
  customer_guid: 'customer_guid_example', # String | Comma separated customer_guids to list transfers for.
  bank_guid: 'bank_guid_example', # String | Comma separated bank_guids to list transfers for.
  account_guid: 'account_guid_example', # String | Comma separated account_guids to list transfers for.
  state: 'state_example', # String | Comma separated states to list transfers for.
  side: 'side_example', # String | Comma separated sides to list transfers for.
  txn_hash: 'txn_hash_example', # String | Comma separated txn_hashes to list transfers for.
  external_id: 'external_id_example', # String | Comma separated external_ids to list transfers for.
  amount: 56, # Integer | Amount in cents to list transfers for.
  estimated_amount: 56, # Integer | Estimated amount in cents to list transfers for.
  principal_source_account_guid: 'principal_source_account_guid_example', # String | Comma separated principal_source_account_guids to list transfers for.
  principal_destination_account_guid: 'principal_destination_account_guid_example', # String | Comma separated principal_destination_account_guids to list transfers for.
  created_at_gte: 'created_at_gte_example', # String | Created at start date-time inclusive lower bound, ISO8601
  created_at_lt: 'created_at_lt_example', # String | Created at end date-time exclusive upper bound, ISO8601.
  updated_at_gte: 'updated_at_gte_example', # String | Created at start date-time inclusive lower bound, ISO8601
  updated_at_lt: 'updated_at_lt_example' # String | Created at end date-time exclusive upper bound, ISO8601.
}

begin
  # List Transfers
  result = api_instance.internal_list_transfers(opts)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_list_transfers: #{e}"
end
```

#### Using the internal_list_transfers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalTransferListBankModel>, Integer, Hash)> internal_list_transfers_with_http_info(opts)

```ruby
begin
  # List Transfers
  data, status_code, headers = api_instance.internal_list_transfers_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalTransferListBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_list_transfers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |
| **asset** | **String** | Comma separated assets to list transfers for. | [optional] |
| **guid** | **String** | Comma separated transfer_guids to list transfers for. | [optional] |
| **transfer_type** | **String** | Comma separated transfer_types to list accounts for. | [optional] |
| **customer_guid** | **String** | Comma separated customer_guids to list transfers for. | [optional] |
| **bank_guid** | **String** | Comma separated bank_guids to list transfers for. | [optional] |
| **account_guid** | **String** | Comma separated account_guids to list transfers for. | [optional] |
| **state** | **String** | Comma separated states to list transfers for. | [optional] |
| **side** | **String** | Comma separated sides to list transfers for. | [optional] |
| **txn_hash** | **String** | Comma separated txn_hashes to list transfers for. | [optional] |
| **external_id** | **String** | Comma separated external_ids to list transfers for. | [optional] |
| **amount** | **Integer** | Amount in cents to list transfers for. | [optional] |
| **estimated_amount** | **Integer** | Estimated amount in cents to list transfers for. | [optional] |
| **principal_source_account_guid** | **String** | Comma separated principal_source_account_guids to list transfers for. | [optional] |
| **principal_destination_account_guid** | **String** | Comma separated principal_destination_account_guids to list transfers for. | [optional] |
| **created_at_gte** | **String** | Created at start date-time inclusive lower bound, ISO8601 | [optional] |
| **created_at_lt** | **String** | Created at end date-time exclusive upper bound, ISO8601. | [optional] |
| **updated_at_gte** | **String** | Created at start date-time inclusive lower bound, ISO8601 | [optional] |
| **updated_at_lt** | **String** | Created at end date-time exclusive upper bound, ISO8601. | [optional] |

### Return type

[**InternalTransferListBankModel**](InternalTransferListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## internal_list_wallet_services

> <InternalWalletServiceListBankModel> internal_list_wallet_services(opts)

List WalletServices

Retrieves a listing of wallet services.  Required scope: **internal:wallet_services:read**

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

api_instance = CybridApiBank::InternalBankApi.new
opts = {
  page: 56, # Integer | 
  per_page: 56, # Integer | 
  environment: 'environment_example', # String | Comma separated environments to list wallet services for.
  guid: 'guid_example', # String | Comma separated guids to list wallet services for.
  type: 'type_example' # String | Comma separated types to list wallet services for.
}

begin
  # List WalletServices
  result = api_instance.internal_list_wallet_services(opts)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_list_wallet_services: #{e}"
end
```

#### Using the internal_list_wallet_services_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalWalletServiceListBankModel>, Integer, Hash)> internal_list_wallet_services_with_http_info(opts)

```ruby
begin
  # List WalletServices
  data, status_code, headers = api_instance.internal_list_wallet_services_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalWalletServiceListBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_list_wallet_services_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |
| **environment** | **String** | Comma separated environments to list wallet services for. | [optional] |
| **guid** | **String** | Comma separated guids to list wallet services for. | [optional] |
| **type** | **String** | Comma separated types to list wallet services for. | [optional] |

### Return type

[**InternalWalletServiceListBankModel**](InternalWalletServiceListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## internal_patch_account

> <AccountBankModel> internal_patch_account(account_guid, patch_internal_account_bank_model)

Patch Account

Patch an account.  Required scope: **internal:accounts:write**

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

api_instance = CybridApiBank::InternalBankApi.new
account_guid = 'account_guid_example' # String | Identifier for the account.
patch_internal_account_bank_model = CybridApiBank::PatchInternalAccountBankModel.new # PatchInternalAccountBankModel | 

begin
  # Patch Account
  result = api_instance.internal_patch_account(account_guid, patch_internal_account_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_patch_account: #{e}"
end
```

#### Using the internal_patch_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountBankModel>, Integer, Hash)> internal_patch_account_with_http_info(account_guid, patch_internal_account_bank_model)

```ruby
begin
  # Patch Account
  data, status_code, headers = api_instance.internal_patch_account_with_http_info(account_guid, patch_internal_account_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_patch_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_guid** | **String** | Identifier for the account. |  |
| **patch_internal_account_bank_model** | [**PatchInternalAccountBankModel**](PatchInternalAccountBankModel.md) |  |  |

### Return type

[**AccountBankModel**](AccountBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_patch_activity_limit_configuration

> <InternalActivityLimitConfigurationBankModel> internal_patch_activity_limit_configuration(guid, patch_internal_activity_limit_configuration_bank_model)

Patch ActivityLimitConfiguration

Updates an activity limit configuration.  Required scope: **internal:banks:write**

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

api_instance = CybridApiBank::InternalBankApi.new
guid = 'guid_example' # String | Identifier for the activity limit configuration.
patch_internal_activity_limit_configuration_bank_model = CybridApiBank::PatchInternalActivityLimitConfigurationBankModel.new({limits: [CybridApiBank::ParamInternalActivityLimitBankModel.new({name: 'name_example', limit_type: 'rolling', limit_asset: 'limit_asset_example', limit_amount: 37})]}) # PatchInternalActivityLimitConfigurationBankModel | 

begin
  # Patch ActivityLimitConfiguration
  result = api_instance.internal_patch_activity_limit_configuration(guid, patch_internal_activity_limit_configuration_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_patch_activity_limit_configuration: #{e}"
end
```

#### Using the internal_patch_activity_limit_configuration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalActivityLimitConfigurationBankModel>, Integer, Hash)> internal_patch_activity_limit_configuration_with_http_info(guid, patch_internal_activity_limit_configuration_bank_model)

```ruby
begin
  # Patch ActivityLimitConfiguration
  data, status_code, headers = api_instance.internal_patch_activity_limit_configuration_with_http_info(guid, patch_internal_activity_limit_configuration_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalActivityLimitConfigurationBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_patch_activity_limit_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Identifier for the activity limit configuration. |  |
| **patch_internal_activity_limit_configuration_bank_model** | [**PatchInternalActivityLimitConfigurationBankModel**](PatchInternalActivityLimitConfigurationBankModel.md) |  |  |

### Return type

[**InternalActivityLimitConfigurationBankModel**](InternalActivityLimitConfigurationBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_patch_bank

> <InternalBankBankModel> internal_patch_bank(bank_guid, patch_internal_bank_bank_model)

Patch Bank

Update a bank.  Required scope: **internal:banks:write**

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

api_instance = CybridApiBank::InternalBankApi.new
bank_guid = 'bank_guid_example' # String | Identifier for the bank.
patch_internal_bank_bank_model = CybridApiBank::PatchInternalBankBankModel.new # PatchInternalBankBankModel | 

begin
  # Patch Bank
  result = api_instance.internal_patch_bank(bank_guid, patch_internal_bank_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_patch_bank: #{e}"
end
```

#### Using the internal_patch_bank_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalBankBankModel>, Integer, Hash)> internal_patch_bank_with_http_info(bank_guid, patch_internal_bank_bank_model)

```ruby
begin
  # Patch Bank
  data, status_code, headers = api_instance.internal_patch_bank_with_http_info(bank_guid, patch_internal_bank_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalBankBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_patch_bank_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_guid** | **String** | Identifier for the bank. |  |
| **patch_internal_bank_bank_model** | [**PatchInternalBankBankModel**](PatchInternalBankBankModel.md) |  |  |

### Return type

[**InternalBankBankModel**](InternalBankBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_patch_bank_account_service

> <InternalBankAccountServiceBankModel> internal_patch_bank_account_service(guid, patch_internal_bank_account_service_bank_model)

Patch Internal BankAccount

Patch an internal bank_account.  Required scope: **internal:bank_account_services:write**

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

api_instance = CybridApiBank::InternalBankApi.new
guid = 'guid_example' # String | Identifier for the resource.
patch_internal_bank_account_service_bank_model = CybridApiBank::PatchInternalBankAccountServiceBankModel.new # PatchInternalBankAccountServiceBankModel | 

begin
  # Patch Internal BankAccount
  result = api_instance.internal_patch_bank_account_service(guid, patch_internal_bank_account_service_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_patch_bank_account_service: #{e}"
end
```

#### Using the internal_patch_bank_account_service_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalBankAccountServiceBankModel>, Integer, Hash)> internal_patch_bank_account_service_with_http_info(guid, patch_internal_bank_account_service_bank_model)

```ruby
begin
  # Patch Internal BankAccount
  data, status_code, headers = api_instance.internal_patch_bank_account_service_with_http_info(guid, patch_internal_bank_account_service_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalBankAccountServiceBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_patch_bank_account_service_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Identifier for the resource. |  |
| **patch_internal_bank_account_service_bank_model** | [**PatchInternalBankAccountServiceBankModel**](PatchInternalBankAccountServiceBankModel.md) |  |  |

### Return type

[**InternalBankAccountServiceBankModel**](InternalBankAccountServiceBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_patch_business_detail

> <InternalBusinessDetailBankModel> internal_patch_business_detail(guid, patch_internal_business_detail_bank_model)

Patch Business Details

Patch a business details record.  Required scope: **internal:customers:write**

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

api_instance = CybridApiBank::InternalBankApi.new
guid = 'guid_example' # String | Identifier for the resource.
patch_internal_business_detail_bank_model = CybridApiBank::PatchInternalBusinessDetailBankModel.new # PatchInternalBusinessDetailBankModel | 

begin
  # Patch Business Details
  result = api_instance.internal_patch_business_detail(guid, patch_internal_business_detail_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_patch_business_detail: #{e}"
end
```

#### Using the internal_patch_business_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalBusinessDetailBankModel>, Integer, Hash)> internal_patch_business_detail_with_http_info(guid, patch_internal_business_detail_bank_model)

```ruby
begin
  # Patch Business Details
  data, status_code, headers = api_instance.internal_patch_business_detail_with_http_info(guid, patch_internal_business_detail_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalBusinessDetailBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_patch_business_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Identifier for the resource. |  |
| **patch_internal_business_detail_bank_model** | [**PatchInternalBusinessDetailBankModel**](PatchInternalBusinessDetailBankModel.md) |  |  |

### Return type

[**InternalBusinessDetailBankModel**](InternalBusinessDetailBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_patch_counterparty

> <CounterpartyBankModel> internal_patch_counterparty(counterparty_guid, patch_internal_counterparty_bank_model)

Patch Counterparty

Patch a counterparty.  Required scope: **internal:counterparties:write**

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

api_instance = CybridApiBank::InternalBankApi.new
counterparty_guid = 'counterparty_guid_example' # String | Identifier for the counterparty.
patch_internal_counterparty_bank_model = CybridApiBank::PatchInternalCounterpartyBankModel.new # PatchInternalCounterpartyBankModel | 

begin
  # Patch Counterparty
  result = api_instance.internal_patch_counterparty(counterparty_guid, patch_internal_counterparty_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_patch_counterparty: #{e}"
end
```

#### Using the internal_patch_counterparty_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CounterpartyBankModel>, Integer, Hash)> internal_patch_counterparty_with_http_info(counterparty_guid, patch_internal_counterparty_bank_model)

```ruby
begin
  # Patch Counterparty
  data, status_code, headers = api_instance.internal_patch_counterparty_with_http_info(counterparty_guid, patch_internal_counterparty_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CounterpartyBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_patch_counterparty_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **counterparty_guid** | **String** | Identifier for the counterparty. |  |
| **patch_internal_counterparty_bank_model** | [**PatchInternalCounterpartyBankModel**](PatchInternalCounterpartyBankModel.md) |  |  |

### Return type

[**CounterpartyBankModel**](CounterpartyBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_patch_crypto_asset_configuration

> <InternalCryptoAssetConfigurationBankModel> internal_patch_crypto_asset_configuration(guid, patch_internal_crypto_asset_configuration_bank_model)

Patch CryptoAssetConfiguration

Updates a crypto asset configuration.  Required scope: **internal:banks:write**

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

api_instance = CybridApiBank::InternalBankApi.new
guid = 'guid_example' # String | Identifier for the crypto asset configuration.
patch_internal_crypto_asset_configuration_bank_model = CybridApiBank::PatchInternalCryptoAssetConfigurationBankModel.new # PatchInternalCryptoAssetConfigurationBankModel | 

begin
  # Patch CryptoAssetConfiguration
  result = api_instance.internal_patch_crypto_asset_configuration(guid, patch_internal_crypto_asset_configuration_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_patch_crypto_asset_configuration: #{e}"
end
```

#### Using the internal_patch_crypto_asset_configuration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalCryptoAssetConfigurationBankModel>, Integer, Hash)> internal_patch_crypto_asset_configuration_with_http_info(guid, patch_internal_crypto_asset_configuration_bank_model)

```ruby
begin
  # Patch CryptoAssetConfiguration
  data, status_code, headers = api_instance.internal_patch_crypto_asset_configuration_with_http_info(guid, patch_internal_crypto_asset_configuration_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalCryptoAssetConfigurationBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_patch_crypto_asset_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Identifier for the crypto asset configuration. |  |
| **patch_internal_crypto_asset_configuration_bank_model** | [**PatchInternalCryptoAssetConfigurationBankModel**](PatchInternalCryptoAssetConfigurationBankModel.md) |  |  |

### Return type

[**InternalCryptoAssetConfigurationBankModel**](InternalCryptoAssetConfigurationBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_patch_customer

> <CustomerBankModel> internal_patch_customer(customer_guid, patch_internal_customer_bank_model)

Patch Customer

Patch a customer.  Required scope: **internal:customers:write**

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

api_instance = CybridApiBank::InternalBankApi.new
customer_guid = 'customer_guid_example' # String | Identifier for the customer.
patch_internal_customer_bank_model = CybridApiBank::PatchInternalCustomerBankModel.new # PatchInternalCustomerBankModel | 

begin
  # Patch Customer
  result = api_instance.internal_patch_customer(customer_guid, patch_internal_customer_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_patch_customer: #{e}"
end
```

#### Using the internal_patch_customer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomerBankModel>, Integer, Hash)> internal_patch_customer_with_http_info(customer_guid, patch_internal_customer_bank_model)

```ruby
begin
  # Patch Customer
  data, status_code, headers = api_instance.internal_patch_customer_with_http_info(customer_guid, patch_internal_customer_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_patch_customer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_guid** | **String** | Identifier for the customer. |  |
| **patch_internal_customer_bank_model** | [**PatchInternalCustomerBankModel**](PatchInternalCustomerBankModel.md) |  |  |

### Return type

[**CustomerBankModel**](CustomerBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_patch_cybrid_account

> <InternalCybridAccountBankModel> internal_patch_cybrid_account(guid, patch_internal_cybrid_account_bank_model)

Patch Cybrid Account

Patch an cybrid account.  Required scope: **internal:accounts:write**

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

api_instance = CybridApiBank::InternalBankApi.new
guid = 'guid_example' # String | Identifier for the resource.
patch_internal_cybrid_account_bank_model = CybridApiBank::PatchInternalCybridAccountBankModel.new # PatchInternalCybridAccountBankModel | 

begin
  # Patch Cybrid Account
  result = api_instance.internal_patch_cybrid_account(guid, patch_internal_cybrid_account_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_patch_cybrid_account: #{e}"
end
```

#### Using the internal_patch_cybrid_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalCybridAccountBankModel>, Integer, Hash)> internal_patch_cybrid_account_with_http_info(guid, patch_internal_cybrid_account_bank_model)

```ruby
begin
  # Patch Cybrid Account
  data, status_code, headers = api_instance.internal_patch_cybrid_account_with_http_info(guid, patch_internal_cybrid_account_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalCybridAccountBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_patch_cybrid_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Identifier for the resource. |  |
| **patch_internal_cybrid_account_bank_model** | [**PatchInternalCybridAccountBankModel**](PatchInternalCybridAccountBankModel.md) |  |  |

### Return type

[**InternalCybridAccountBankModel**](InternalCybridAccountBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_patch_deposit_address

> <DepositAddressBankModel> internal_patch_deposit_address(guid, patch_internal_deposit_address_bank_model)

Patch Deposit Address

Patch an deposit address.  Required scope: **internal:deposit_addresses:write**

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

api_instance = CybridApiBank::InternalBankApi.new
guid = 'guid_example' # String | Identifier for the resource.
patch_internal_deposit_address_bank_model = CybridApiBank::PatchInternalDepositAddressBankModel.new # PatchInternalDepositAddressBankModel | 

begin
  # Patch Deposit Address
  result = api_instance.internal_patch_deposit_address(guid, patch_internal_deposit_address_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_patch_deposit_address: #{e}"
end
```

#### Using the internal_patch_deposit_address_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DepositAddressBankModel>, Integer, Hash)> internal_patch_deposit_address_with_http_info(guid, patch_internal_deposit_address_bank_model)

```ruby
begin
  # Patch Deposit Address
  data, status_code, headers = api_instance.internal_patch_deposit_address_with_http_info(guid, patch_internal_deposit_address_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DepositAddressBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_patch_deposit_address_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Identifier for the resource. |  |
| **patch_internal_deposit_address_bank_model** | [**PatchInternalDepositAddressBankModel**](PatchInternalDepositAddressBankModel.md) |  |  |

### Return type

[**DepositAddressBankModel**](DepositAddressBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_patch_deposit_bank_account

> <DepositBankAccountBankModel> internal_patch_deposit_bank_account(deposit_bank_account_guid, patch_internal_deposit_bank_account_bank_model)

Patch DepositBankAccount

Patch an deposit bank account.  Required scope: **internal:deposit_bank_accounts:write**

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

api_instance = CybridApiBank::InternalBankApi.new
deposit_bank_account_guid = 'deposit_bank_account_guid_example' # String | Identifier for the deposit bank account.
patch_internal_deposit_bank_account_bank_model = CybridApiBank::PatchInternalDepositBankAccountBankModel.new # PatchInternalDepositBankAccountBankModel | 

begin
  # Patch DepositBankAccount
  result = api_instance.internal_patch_deposit_bank_account(deposit_bank_account_guid, patch_internal_deposit_bank_account_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_patch_deposit_bank_account: #{e}"
end
```

#### Using the internal_patch_deposit_bank_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DepositBankAccountBankModel>, Integer, Hash)> internal_patch_deposit_bank_account_with_http_info(deposit_bank_account_guid, patch_internal_deposit_bank_account_bank_model)

```ruby
begin
  # Patch DepositBankAccount
  data, status_code, headers = api_instance.internal_patch_deposit_bank_account_with_http_info(deposit_bank_account_guid, patch_internal_deposit_bank_account_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DepositBankAccountBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_patch_deposit_bank_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **deposit_bank_account_guid** | **String** | Identifier for the deposit bank account. |  |
| **patch_internal_deposit_bank_account_bank_model** | [**PatchInternalDepositBankAccountBankModel**](PatchInternalDepositBankAccountBankModel.md) |  |  |

### Return type

[**DepositBankAccountBankModel**](DepositBankAccountBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_patch_exchange_account

> <InternalExchangeAccountBankModel> internal_patch_exchange_account(guid, patch_internal_exchange_account_bank_model)

Patch Exchange Account

Patch an exchange account.  Required scope: **internal:accounts:write**

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

api_instance = CybridApiBank::InternalBankApi.new
guid = 'guid_example' # String | Identifier for the resource.
patch_internal_exchange_account_bank_model = CybridApiBank::PatchInternalExchangeAccountBankModel.new # PatchInternalExchangeAccountBankModel | 

begin
  # Patch Exchange Account
  result = api_instance.internal_patch_exchange_account(guid, patch_internal_exchange_account_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_patch_exchange_account: #{e}"
end
```

#### Using the internal_patch_exchange_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalExchangeAccountBankModel>, Integer, Hash)> internal_patch_exchange_account_with_http_info(guid, patch_internal_exchange_account_bank_model)

```ruby
begin
  # Patch Exchange Account
  data, status_code, headers = api_instance.internal_patch_exchange_account_with_http_info(guid, patch_internal_exchange_account_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalExchangeAccountBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_patch_exchange_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Identifier for the resource. |  |
| **patch_internal_exchange_account_bank_model** | [**PatchInternalExchangeAccountBankModel**](PatchInternalExchangeAccountBankModel.md) |  |  |

### Return type

[**InternalExchangeAccountBankModel**](InternalExchangeAccountBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_patch_exchange_order

> <InternalExchangeOrderBankModel> internal_patch_exchange_order(guid, patch_internal_exchange_order_bank_model)

Patch ExchangeOrder

Patches a ExchangeOrder.Required scope: **internal:exchange_orders:write**

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

api_instance = CybridApiBank::InternalBankApi.new
guid = 'guid_example' # String | Identifier for the resource.
patch_internal_exchange_order_bank_model = CybridApiBank::PatchInternalExchangeOrderBankModel.new # PatchInternalExchangeOrderBankModel | 

begin
  # Patch ExchangeOrder
  result = api_instance.internal_patch_exchange_order(guid, patch_internal_exchange_order_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_patch_exchange_order: #{e}"
end
```

#### Using the internal_patch_exchange_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalExchangeOrderBankModel>, Integer, Hash)> internal_patch_exchange_order_with_http_info(guid, patch_internal_exchange_order_bank_model)

```ruby
begin
  # Patch ExchangeOrder
  data, status_code, headers = api_instance.internal_patch_exchange_order_with_http_info(guid, patch_internal_exchange_order_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalExchangeOrderBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_patch_exchange_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Identifier for the resource. |  |
| **patch_internal_exchange_order_bank_model** | [**PatchInternalExchangeOrderBankModel**](PatchInternalExchangeOrderBankModel.md) |  |  |

### Return type

[**InternalExchangeOrderBankModel**](InternalExchangeOrderBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_patch_exchange_settlement

> <InternalCreateExchangeSettlementApproval202ResponseBankModel> internal_patch_exchange_settlement(exchange_settlement_guid, patch_internal_exchange_settlement_bank_model)

Patch Exchange Settlement

Patch an exchange settlement verification.  Required scope: **internal:exchange_settlements:write**

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

api_instance = CybridApiBank::InternalBankApi.new
exchange_settlement_guid = 'exchange_settlement_guid_example' # String | Identifier for the exchange settlement.
patch_internal_exchange_settlement_bank_model = CybridApiBank::PatchInternalExchangeSettlementBankModel.new # PatchInternalExchangeSettlementBankModel | 

begin
  # Patch Exchange Settlement
  result = api_instance.internal_patch_exchange_settlement(exchange_settlement_guid, patch_internal_exchange_settlement_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_patch_exchange_settlement: #{e}"
end
```

#### Using the internal_patch_exchange_settlement_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalCreateExchangeSettlementApproval202ResponseBankModel>, Integer, Hash)> internal_patch_exchange_settlement_with_http_info(exchange_settlement_guid, patch_internal_exchange_settlement_bank_model)

```ruby
begin
  # Patch Exchange Settlement
  data, status_code, headers = api_instance.internal_patch_exchange_settlement_with_http_info(exchange_settlement_guid, patch_internal_exchange_settlement_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalCreateExchangeSettlementApproval202ResponseBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_patch_exchange_settlement_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **exchange_settlement_guid** | **String** | Identifier for the exchange settlement. |  |
| **patch_internal_exchange_settlement_bank_model** | [**PatchInternalExchangeSettlementBankModel**](PatchInternalExchangeSettlementBankModel.md) |  |  |

### Return type

[**InternalCreateExchangeSettlementApproval202ResponseBankModel**](InternalCreateExchangeSettlementApproval202ResponseBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_patch_external_bank_account

> <InternalExternalBankAccountBankModel> internal_patch_external_bank_account(external_bank_account_guid, patch_internal_external_bank_account_bank_model)

Patch ExternalBankAccount

Patch an external bank account.  Required scope: **internal:accounts:write**

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

api_instance = CybridApiBank::InternalBankApi.new
external_bank_account_guid = 'external_bank_account_guid_example' # String | Identifier for the external bank account.
patch_internal_external_bank_account_bank_model = CybridApiBank::PatchInternalExternalBankAccountBankModel.new({state: 'storing'}) # PatchInternalExternalBankAccountBankModel | 

begin
  # Patch ExternalBankAccount
  result = api_instance.internal_patch_external_bank_account(external_bank_account_guid, patch_internal_external_bank_account_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_patch_external_bank_account: #{e}"
end
```

#### Using the internal_patch_external_bank_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalExternalBankAccountBankModel>, Integer, Hash)> internal_patch_external_bank_account_with_http_info(external_bank_account_guid, patch_internal_external_bank_account_bank_model)

```ruby
begin
  # Patch ExternalBankAccount
  data, status_code, headers = api_instance.internal_patch_external_bank_account_with_http_info(external_bank_account_guid, patch_internal_external_bank_account_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalExternalBankAccountBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_patch_external_bank_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_bank_account_guid** | **String** | Identifier for the external bank account. |  |
| **patch_internal_external_bank_account_bank_model** | [**PatchInternalExternalBankAccountBankModel**](PatchInternalExternalBankAccountBankModel.md) |  |  |

### Return type

[**InternalExternalBankAccountBankModel**](InternalExternalBankAccountBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_patch_external_wallet

> <InternalExternalWalletBankModel> internal_patch_external_wallet(external_wallet_guid, patch_internal_external_wallet_bank_model)

Patch ExternalWallet

Patch an transfer.  Required scope: **internal:accounts:write**

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

api_instance = CybridApiBank::InternalBankApi.new
external_wallet_guid = 'external_wallet_guid_example' # String | Identifier for the external wallet.
patch_internal_external_wallet_bank_model = CybridApiBank::PatchInternalExternalWalletBankModel.new({state: 'pending'}) # PatchInternalExternalWalletBankModel | 

begin
  # Patch ExternalWallet
  result = api_instance.internal_patch_external_wallet(external_wallet_guid, patch_internal_external_wallet_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_patch_external_wallet: #{e}"
end
```

#### Using the internal_patch_external_wallet_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalExternalWalletBankModel>, Integer, Hash)> internal_patch_external_wallet_with_http_info(external_wallet_guid, patch_internal_external_wallet_bank_model)

```ruby
begin
  # Patch ExternalWallet
  data, status_code, headers = api_instance.internal_patch_external_wallet_with_http_info(external_wallet_guid, patch_internal_external_wallet_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalExternalWalletBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_patch_external_wallet_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_wallet_guid** | **String** | Identifier for the external wallet. |  |
| **patch_internal_external_wallet_bank_model** | [**PatchInternalExternalWalletBankModel**](PatchInternalExternalWalletBankModel.md) |  |  |

### Return type

[**InternalExternalWalletBankModel**](InternalExternalWalletBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_patch_external_wallet_screening

> <InternalExternalWalletScreeningBankModel> internal_patch_external_wallet_screening(external_wallet_screening_guid, patch_internal_external_wallet_screening_bank_model)

Patch External Wallet Screening

Patch an external wallet screening.  Required scope: **internal:external_wallet_screenings:write**

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

api_instance = CybridApiBank::InternalBankApi.new
external_wallet_screening_guid = 'external_wallet_screening_guid_example' # String | Identifier for the external wallet screening.
patch_internal_external_wallet_screening_bank_model = CybridApiBank::PatchInternalExternalWalletScreeningBankModel.new # PatchInternalExternalWalletScreeningBankModel | 

begin
  # Patch External Wallet Screening
  result = api_instance.internal_patch_external_wallet_screening(external_wallet_screening_guid, patch_internal_external_wallet_screening_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_patch_external_wallet_screening: #{e}"
end
```

#### Using the internal_patch_external_wallet_screening_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalExternalWalletScreeningBankModel>, Integer, Hash)> internal_patch_external_wallet_screening_with_http_info(external_wallet_screening_guid, patch_internal_external_wallet_screening_bank_model)

```ruby
begin
  # Patch External Wallet Screening
  data, status_code, headers = api_instance.internal_patch_external_wallet_screening_with_http_info(external_wallet_screening_guid, patch_internal_external_wallet_screening_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalExternalWalletScreeningBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_patch_external_wallet_screening_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_wallet_screening_guid** | **String** | Identifier for the external wallet screening. |  |
| **patch_internal_external_wallet_screening_bank_model** | [**PatchInternalExternalWalletScreeningBankModel**](PatchInternalExternalWalletScreeningBankModel.md) |  |  |

### Return type

[**InternalExternalWalletScreeningBankModel**](InternalExternalWalletScreeningBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_patch_fee

> <InternalFeeChargeBankModel> internal_patch_fee(guid, patch_internal_fee_charge_bank_model)

Patch Fee

Patches a Fee.Required scope: **internal:fees:write**

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

api_instance = CybridApiBank::InternalBankApi.new
guid = 'guid_example' # String | Identifier for the resource.
patch_internal_fee_charge_bank_model = CybridApiBank::PatchInternalFeeChargeBankModel.new # PatchInternalFeeChargeBankModel | 

begin
  # Patch Fee
  result = api_instance.internal_patch_fee(guid, patch_internal_fee_charge_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_patch_fee: #{e}"
end
```

#### Using the internal_patch_fee_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalFeeChargeBankModel>, Integer, Hash)> internal_patch_fee_with_http_info(guid, patch_internal_fee_charge_bank_model)

```ruby
begin
  # Patch Fee
  data, status_code, headers = api_instance.internal_patch_fee_with_http_info(guid, patch_internal_fee_charge_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalFeeChargeBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_patch_fee_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Identifier for the resource. |  |
| **patch_internal_fee_charge_bank_model** | [**PatchInternalFeeChargeBankModel**](PatchInternalFeeChargeBankModel.md) |  |  |

### Return type

[**InternalFeeChargeBankModel**](InternalFeeChargeBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_patch_files

> <PlatformFileBankModel> internal_patch_files(file_guid, patch_internal_file_bank_model)

Patch Files

Patch an file.  Required scope: **internal:files:write**

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

api_instance = CybridApiBank::InternalBankApi.new
file_guid = 'file_guid_example' # String | Identifier for the file.
patch_internal_file_bank_model = CybridApiBank::PatchInternalFileBankModel.new # PatchInternalFileBankModel | 

begin
  # Patch Files
  result = api_instance.internal_patch_files(file_guid, patch_internal_file_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_patch_files: #{e}"
end
```

#### Using the internal_patch_files_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlatformFileBankModel>, Integer, Hash)> internal_patch_files_with_http_info(file_guid, patch_internal_file_bank_model)

```ruby
begin
  # Patch Files
  data, status_code, headers = api_instance.internal_patch_files_with_http_info(file_guid, patch_internal_file_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlatformFileBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_patch_files_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_guid** | **String** | Identifier for the file. |  |
| **patch_internal_file_bank_model** | [**PatchInternalFileBankModel**](PatchInternalFileBankModel.md) |  |  |

### Return type

[**PlatformFileBankModel**](PlatformFileBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_patch_identity_verification

> <IdentityVerificationBankModel> internal_patch_identity_verification(identity_verification_guid, patch_internal_identity_verification_bank_model)

Patch Identity Verification

Patch an identity verification.  Required scope: **internal:identity_verifications:write**

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

api_instance = CybridApiBank::InternalBankApi.new
identity_verification_guid = 'identity_verification_guid_example' # String | Identifier for the identity verification.
patch_internal_identity_verification_bank_model = CybridApiBank::PatchInternalIdentityVerificationBankModel.new # PatchInternalIdentityVerificationBankModel | 

begin
  # Patch Identity Verification
  result = api_instance.internal_patch_identity_verification(identity_verification_guid, patch_internal_identity_verification_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_patch_identity_verification: #{e}"
end
```

#### Using the internal_patch_identity_verification_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IdentityVerificationBankModel>, Integer, Hash)> internal_patch_identity_verification_with_http_info(identity_verification_guid, patch_internal_identity_verification_bank_model)

```ruby
begin
  # Patch Identity Verification
  data, status_code, headers = api_instance.internal_patch_identity_verification_with_http_info(identity_verification_guid, patch_internal_identity_verification_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IdentityVerificationBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_patch_identity_verification_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identity_verification_guid** | **String** | Identifier for the identity verification. |  |
| **patch_internal_identity_verification_bank_model** | [**PatchInternalIdentityVerificationBankModel**](PatchInternalIdentityVerificationBankModel.md) |  |  |

### Return type

[**IdentityVerificationBankModel**](IdentityVerificationBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_patch_internal_bank_account

> <InternalInternalBankAccountBankModel> internal_patch_internal_bank_account(guid, patch_internal_internal_bank_account_bank_model)

Patch Internal Bank Account

Patch an internal bank account.  Required scope: **internal:accounts:write**

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

api_instance = CybridApiBank::InternalBankApi.new
guid = 'guid_example' # String | Identifier for the resource.
patch_internal_internal_bank_account_bank_model = CybridApiBank::PatchInternalInternalBankAccountBankModel.new # PatchInternalInternalBankAccountBankModel | 

begin
  # Patch Internal Bank Account
  result = api_instance.internal_patch_internal_bank_account(guid, patch_internal_internal_bank_account_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_patch_internal_bank_account: #{e}"
end
```

#### Using the internal_patch_internal_bank_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalInternalBankAccountBankModel>, Integer, Hash)> internal_patch_internal_bank_account_with_http_info(guid, patch_internal_internal_bank_account_bank_model)

```ruby
begin
  # Patch Internal Bank Account
  data, status_code, headers = api_instance.internal_patch_internal_bank_account_with_http_info(guid, patch_internal_internal_bank_account_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalInternalBankAccountBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_patch_internal_bank_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Identifier for the resource. |  |
| **patch_internal_internal_bank_account_bank_model** | [**PatchInternalInternalBankAccountBankModel**](PatchInternalInternalBankAccountBankModel.md) |  |  |

### Return type

[**InternalInternalBankAccountBankModel**](InternalInternalBankAccountBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_patch_internal_wallet

> <InternalInternalWalletBankModel> internal_patch_internal_wallet(guid, patch_internal_internal_wallet_bank_model)

Patch Internal Wallet

Patch an internal wallet.  Required scope: **internal:accounts:write**

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

api_instance = CybridApiBank::InternalBankApi.new
guid = 'guid_example' # String | Identifier for the resource.
patch_internal_internal_wallet_bank_model = CybridApiBank::PatchInternalInternalWalletBankModel.new # PatchInternalInternalWalletBankModel | 

begin
  # Patch Internal Wallet
  result = api_instance.internal_patch_internal_wallet(guid, patch_internal_internal_wallet_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_patch_internal_wallet: #{e}"
end
```

#### Using the internal_patch_internal_wallet_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalInternalWalletBankModel>, Integer, Hash)> internal_patch_internal_wallet_with_http_info(guid, patch_internal_internal_wallet_bank_model)

```ruby
begin
  # Patch Internal Wallet
  data, status_code, headers = api_instance.internal_patch_internal_wallet_with_http_info(guid, patch_internal_internal_wallet_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalInternalWalletBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_patch_internal_wallet_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Identifier for the resource. |  |
| **patch_internal_internal_wallet_bank_model** | [**PatchInternalInternalWalletBankModel**](PatchInternalInternalWalletBankModel.md) |  |  |

### Return type

[**InternalInternalWalletBankModel**](InternalInternalWalletBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_patch_internal_wallet_group

> <InternalInternalWalletGroupBankModel> internal_patch_internal_wallet_group(guid, patch_internal_internal_wallet_group_bank_model)

Patch Internal Wallet

Patch an internal wallet.  Required scope: **internal:accounts:write**

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

api_instance = CybridApiBank::InternalBankApi.new
guid = 'guid_example' # String | Identifier for the resource.
patch_internal_internal_wallet_group_bank_model = CybridApiBank::PatchInternalInternalWalletGroupBankModel.new # PatchInternalInternalWalletGroupBankModel | 

begin
  # Patch Internal Wallet
  result = api_instance.internal_patch_internal_wallet_group(guid, patch_internal_internal_wallet_group_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_patch_internal_wallet_group: #{e}"
end
```

#### Using the internal_patch_internal_wallet_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalInternalWalletGroupBankModel>, Integer, Hash)> internal_patch_internal_wallet_group_with_http_info(guid, patch_internal_internal_wallet_group_bank_model)

```ruby
begin
  # Patch Internal Wallet
  data, status_code, headers = api_instance.internal_patch_internal_wallet_group_with_http_info(guid, patch_internal_internal_wallet_group_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalInternalWalletGroupBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_patch_internal_wallet_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Identifier for the resource. |  |
| **patch_internal_internal_wallet_group_bank_model** | [**PatchInternalInternalWalletGroupBankModel**](PatchInternalInternalWalletGroupBankModel.md) |  |  |

### Return type

[**InternalInternalWalletGroupBankModel**](InternalInternalWalletGroupBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_patch_invoice

> <InternalInvoiceBankModel> internal_patch_invoice(invoice_guid, patch_internal_invoice_bank_model)

Patch Invoice

Patch an invoice.  Required scope: **internal:invoices:write**

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

api_instance = CybridApiBank::InternalBankApi.new
invoice_guid = 'invoice_guid_example' # String | Identifier for the invoice.
patch_internal_invoice_bank_model = CybridApiBank::PatchInternalInvoiceBankModel.new({state: 'unpaid'}) # PatchInternalInvoiceBankModel | 

begin
  # Patch Invoice
  result = api_instance.internal_patch_invoice(invoice_guid, patch_internal_invoice_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_patch_invoice: #{e}"
end
```

#### Using the internal_patch_invoice_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalInvoiceBankModel>, Integer, Hash)> internal_patch_invoice_with_http_info(invoice_guid, patch_internal_invoice_bank_model)

```ruby
begin
  # Patch Invoice
  data, status_code, headers = api_instance.internal_patch_invoice_with_http_info(invoice_guid, patch_internal_invoice_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalInvoiceBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_patch_invoice_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invoice_guid** | **String** | Identifier for the invoice. |  |
| **patch_internal_invoice_bank_model** | [**PatchInternalInvoiceBankModel**](PatchInternalInvoiceBankModel.md) |  |  |

### Return type

[**InternalInvoiceBankModel**](InternalInvoiceBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_patch_payment_instruction

> <PaymentInstructionBankModel> internal_patch_payment_instruction(guid, patch_internal_payment_instruction_bank_model)

Patch Payment Instruction

Patch an payment instruction.  Required scope: **internal:invoices:write**

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

api_instance = CybridApiBank::InternalBankApi.new
guid = 'guid_example' # String | Identifier for the resource.
patch_internal_payment_instruction_bank_model = CybridApiBank::PatchInternalPaymentInstructionBankModel.new # PatchInternalPaymentInstructionBankModel | 

begin
  # Patch Payment Instruction
  result = api_instance.internal_patch_payment_instruction(guid, patch_internal_payment_instruction_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_patch_payment_instruction: #{e}"
end
```

#### Using the internal_patch_payment_instruction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentInstructionBankModel>, Integer, Hash)> internal_patch_payment_instruction_with_http_info(guid, patch_internal_payment_instruction_bank_model)

```ruby
begin
  # Patch Payment Instruction
  data, status_code, headers = api_instance.internal_patch_payment_instruction_with_http_info(guid, patch_internal_payment_instruction_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentInstructionBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_patch_payment_instruction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Identifier for the resource. |  |
| **patch_internal_payment_instruction_bank_model** | [**PatchInternalPaymentInstructionBankModel**](PatchInternalPaymentInstructionBankModel.md) |  |  |

### Return type

[**PaymentInstructionBankModel**](PaymentInstructionBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_patch_person_detail

> <InternalPersonDetailBankModel> internal_patch_person_detail(guid, patch_internal_person_detail_bank_model)

Patch Person Details

Patch a person details record.  Required scope: **internal:customers:write**

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

api_instance = CybridApiBank::InternalBankApi.new
guid = 'guid_example' # String | Identifier for the resource.
patch_internal_person_detail_bank_model = CybridApiBank::PatchInternalPersonDetailBankModel.new # PatchInternalPersonDetailBankModel | 

begin
  # Patch Person Details
  result = api_instance.internal_patch_person_detail(guid, patch_internal_person_detail_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_patch_person_detail: #{e}"
end
```

#### Using the internal_patch_person_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalPersonDetailBankModel>, Integer, Hash)> internal_patch_person_detail_with_http_info(guid, patch_internal_person_detail_bank_model)

```ruby
begin
  # Patch Person Details
  data, status_code, headers = api_instance.internal_patch_person_detail_with_http_info(guid, patch_internal_person_detail_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalPersonDetailBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_patch_person_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Identifier for the resource. |  |
| **patch_internal_person_detail_bank_model** | [**PatchInternalPersonDetailBankModel**](PatchInternalPersonDetailBankModel.md) |  |  |

### Return type

[**InternalPersonDetailBankModel**](InternalPersonDetailBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_patch_trade

> <InternalTradeBankModel> internal_patch_trade(trade_guid, patch_internal_trade_bank_model)

Patch Trade

Patch a trade.  Required scope: **internal:trades:write**

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

api_instance = CybridApiBank::InternalBankApi.new
trade_guid = 'trade_guid_example' # String | Identifier for the trade.
patch_internal_trade_bank_model = CybridApiBank::PatchInternalTradeBankModel.new({state: 'completed'}) # PatchInternalTradeBankModel | 

begin
  # Patch Trade
  result = api_instance.internal_patch_trade(trade_guid, patch_internal_trade_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_patch_trade: #{e}"
end
```

#### Using the internal_patch_trade_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalTradeBankModel>, Integer, Hash)> internal_patch_trade_with_http_info(trade_guid, patch_internal_trade_bank_model)

```ruby
begin
  # Patch Trade
  data, status_code, headers = api_instance.internal_patch_trade_with_http_info(trade_guid, patch_internal_trade_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalTradeBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_patch_trade_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **trade_guid** | **String** | Identifier for the trade. |  |
| **patch_internal_trade_bank_model** | [**PatchInternalTradeBankModel**](PatchInternalTradeBankModel.md) |  |  |

### Return type

[**InternalTradeBankModel**](InternalTradeBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_patch_trading_symbol_configuration

> <InternalTradingSymbolConfigurationBankModel> internal_patch_trading_symbol_configuration(guid, patch_internal_trading_symbol_configuration_bank_model)

Patch TradingSymbolConfiguration

Updates an trading symbol configuration.  Required scope: **internal:banks:write**

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

api_instance = CybridApiBank::InternalBankApi.new
guid = 'guid_example' # String | Identifier for the trading symbol configuration.
patch_internal_trading_symbol_configuration_bank_model = CybridApiBank::PatchInternalTradingSymbolConfigurationBankModel.new # PatchInternalTradingSymbolConfigurationBankModel | 

begin
  # Patch TradingSymbolConfiguration
  result = api_instance.internal_patch_trading_symbol_configuration(guid, patch_internal_trading_symbol_configuration_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_patch_trading_symbol_configuration: #{e}"
end
```

#### Using the internal_patch_trading_symbol_configuration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalTradingSymbolConfigurationBankModel>, Integer, Hash)> internal_patch_trading_symbol_configuration_with_http_info(guid, patch_internal_trading_symbol_configuration_bank_model)

```ruby
begin
  # Patch TradingSymbolConfiguration
  data, status_code, headers = api_instance.internal_patch_trading_symbol_configuration_with_http_info(guid, patch_internal_trading_symbol_configuration_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalTradingSymbolConfigurationBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_patch_trading_symbol_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Identifier for the trading symbol configuration. |  |
| **patch_internal_trading_symbol_configuration_bank_model** | [**PatchInternalTradingSymbolConfigurationBankModel**](PatchInternalTradingSymbolConfigurationBankModel.md) |  |  |

### Return type

[**InternalTradingSymbolConfigurationBankModel**](InternalTradingSymbolConfigurationBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_patch_transfer

> <InternalTransferBankModel> internal_patch_transfer(transfer_guid, patch_internal_transfer_bank_model)

Patch Transfer

Patch an transfer.  Required scope: **internal:transfers:write**

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

api_instance = CybridApiBank::InternalBankApi.new
transfer_guid = 'transfer_guid_example' # String | Identifier for the transfer.
patch_internal_transfer_bank_model = CybridApiBank::PatchInternalTransferBankModel.new # PatchInternalTransferBankModel | 

begin
  # Patch Transfer
  result = api_instance.internal_patch_transfer(transfer_guid, patch_internal_transfer_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_patch_transfer: #{e}"
end
```

#### Using the internal_patch_transfer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalTransferBankModel>, Integer, Hash)> internal_patch_transfer_with_http_info(transfer_guid, patch_internal_transfer_bank_model)

```ruby
begin
  # Patch Transfer
  data, status_code, headers = api_instance.internal_patch_transfer_with_http_info(transfer_guid, patch_internal_transfer_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalTransferBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_patch_transfer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transfer_guid** | **String** | Identifier for the transfer. |  |
| **patch_internal_transfer_bank_model** | [**PatchInternalTransferBankModel**](PatchInternalTransferBankModel.md) |  |  |

### Return type

[**InternalTransferBankModel**](InternalTransferBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_patch_transfer_screening

> <InternalTransferScreeningBankModel> internal_patch_transfer_screening(transfer_screening_guid, patch_internal_transfer_screening_bank_model)

Patch External Wallet Screening

Patch an transfer screening.  Required scope: **internal:transfer_screenings:write**

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

api_instance = CybridApiBank::InternalBankApi.new
transfer_screening_guid = 'transfer_screening_guid_example' # String | Identifier for the transfer screening.
patch_internal_transfer_screening_bank_model = CybridApiBank::PatchInternalTransferScreeningBankModel.new # PatchInternalTransferScreeningBankModel | 

begin
  # Patch External Wallet Screening
  result = api_instance.internal_patch_transfer_screening(transfer_screening_guid, patch_internal_transfer_screening_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_patch_transfer_screening: #{e}"
end
```

#### Using the internal_patch_transfer_screening_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalTransferScreeningBankModel>, Integer, Hash)> internal_patch_transfer_screening_with_http_info(transfer_screening_guid, patch_internal_transfer_screening_bank_model)

```ruby
begin
  # Patch External Wallet Screening
  data, status_code, headers = api_instance.internal_patch_transfer_screening_with_http_info(transfer_screening_guid, patch_internal_transfer_screening_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalTransferScreeningBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_patch_transfer_screening_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transfer_screening_guid** | **String** | Identifier for the transfer screening. |  |
| **patch_internal_transfer_screening_bank_model** | [**PatchInternalTransferScreeningBankModel**](PatchInternalTransferScreeningBankModel.md) |  |  |

### Return type

[**InternalTransferScreeningBankModel**](InternalTransferScreeningBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_patch_wallet_service

> <InternalWalletServiceBankModel> internal_patch_wallet_service(guid, patch_internal_wallet_service_bank_model)

Patch Internal Wallet

Patch an internal wallet.  Required scope: **internal:wallet_services:write**

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

api_instance = CybridApiBank::InternalBankApi.new
guid = 'guid_example' # String | Identifier for the resource.
patch_internal_wallet_service_bank_model = CybridApiBank::PatchInternalWalletServiceBankModel.new # PatchInternalWalletServiceBankModel | 

begin
  # Patch Internal Wallet
  result = api_instance.internal_patch_wallet_service(guid, patch_internal_wallet_service_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_patch_wallet_service: #{e}"
end
```

#### Using the internal_patch_wallet_service_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalWalletServiceBankModel>, Integer, Hash)> internal_patch_wallet_service_with_http_info(guid, patch_internal_wallet_service_bank_model)

```ruby
begin
  # Patch Internal Wallet
  data, status_code, headers = api_instance.internal_patch_wallet_service_with_http_info(guid, patch_internal_wallet_service_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalWalletServiceBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_patch_wallet_service_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Identifier for the resource. |  |
| **patch_internal_wallet_service_bank_model** | [**PatchInternalWalletServiceBankModel**](PatchInternalWalletServiceBankModel.md) |  |  |

### Return type

[**InternalWalletServiceBankModel**](InternalWalletServiceBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_patch_workflow

> <WorkflowBankModel> internal_patch_workflow(workflow_guid, patch_internal_workflow_bank_model)

Patch Workflow

Patch an workflow.  Required scope: **internal:workflows:write**

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

api_instance = CybridApiBank::InternalBankApi.new
workflow_guid = 'workflow_guid_example' # String | Identifier for the workflow.
patch_internal_workflow_bank_model = CybridApiBank::PatchInternalWorkflowBankModel.new({state: 'completed'}) # PatchInternalWorkflowBankModel | 

begin
  # Patch Workflow
  result = api_instance.internal_patch_workflow(workflow_guid, patch_internal_workflow_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_patch_workflow: #{e}"
end
```

#### Using the internal_patch_workflow_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkflowBankModel>, Integer, Hash)> internal_patch_workflow_with_http_info(workflow_guid, patch_internal_workflow_bank_model)

```ruby
begin
  # Patch Workflow
  data, status_code, headers = api_instance.internal_patch_workflow_with_http_info(workflow_guid, patch_internal_workflow_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkflowBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_patch_workflow_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workflow_guid** | **String** | Identifier for the workflow. |  |
| **patch_internal_workflow_bank_model** | [**PatchInternalWorkflowBankModel**](PatchInternalWorkflowBankModel.md) |  |  |

### Return type

[**WorkflowBankModel**](WorkflowBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_signal_external_wallet_screening

> <InternalExternalWalletScreeningBankModel> internal_signal_external_wallet_screening(external_wallet_screening_guid, post_signal_internal_external_wallet_screening_bank_model)

Signal External Wallet Screening

Signal an external wallet screening with a outcome.  Required scope: **internal:external_wallet_screenings:write**

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

api_instance = CybridApiBank::InternalBankApi.new
external_wallet_screening_guid = 'external_wallet_screening_guid_example' # String | Identifier for the external wallet screening.
post_signal_internal_external_wallet_screening_bank_model = CybridApiBank::PostSignalInternalExternalWalletScreeningBankModel.new({reference_id: 'reference_id_example', comment: 'comment_example', outcome: 'approved'}) # PostSignalInternalExternalWalletScreeningBankModel | 

begin
  # Signal External Wallet Screening
  result = api_instance.internal_signal_external_wallet_screening(external_wallet_screening_guid, post_signal_internal_external_wallet_screening_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_signal_external_wallet_screening: #{e}"
end
```

#### Using the internal_signal_external_wallet_screening_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalExternalWalletScreeningBankModel>, Integer, Hash)> internal_signal_external_wallet_screening_with_http_info(external_wallet_screening_guid, post_signal_internal_external_wallet_screening_bank_model)

```ruby
begin
  # Signal External Wallet Screening
  data, status_code, headers = api_instance.internal_signal_external_wallet_screening_with_http_info(external_wallet_screening_guid, post_signal_internal_external_wallet_screening_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalExternalWalletScreeningBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_signal_external_wallet_screening_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_wallet_screening_guid** | **String** | Identifier for the external wallet screening. |  |
| **post_signal_internal_external_wallet_screening_bank_model** | [**PostSignalInternalExternalWalletScreeningBankModel**](PostSignalInternalExternalWalletScreeningBankModel.md) |  |  |

### Return type

[**InternalExternalWalletScreeningBankModel**](InternalExternalWalletScreeningBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_signal_identity_verification

> <IdentityVerificationBankModel> internal_signal_identity_verification(identity_verification_guid, post_signal_internal_identity_verification_bank_model)

Signal Identity Verification

Signal an identity verification with a decision.  Required scope: **internal:identity_verifications:write**

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

api_instance = CybridApiBank::InternalBankApi.new
identity_verification_guid = 'identity_verification_guid_example' # String | Identifier for the identity verification.
post_signal_internal_identity_verification_bank_model = CybridApiBank::PostSignalInternalIdentityVerificationBankModel.new({reference_id: 'reference_id_example', comment: 'comment_example', decision: 'passed', failure_codes: ['deleted_account']}) # PostSignalInternalIdentityVerificationBankModel | 

begin
  # Signal Identity Verification
  result = api_instance.internal_signal_identity_verification(identity_verification_guid, post_signal_internal_identity_verification_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_signal_identity_verification: #{e}"
end
```

#### Using the internal_signal_identity_verification_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IdentityVerificationBankModel>, Integer, Hash)> internal_signal_identity_verification_with_http_info(identity_verification_guid, post_signal_internal_identity_verification_bank_model)

```ruby
begin
  # Signal Identity Verification
  data, status_code, headers = api_instance.internal_signal_identity_verification_with_http_info(identity_verification_guid, post_signal_internal_identity_verification_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IdentityVerificationBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_signal_identity_verification_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identity_verification_guid** | **String** | Identifier for the identity verification. |  |
| **post_signal_internal_identity_verification_bank_model** | [**PostSignalInternalIdentityVerificationBankModel**](PostSignalInternalIdentityVerificationBankModel.md) |  |  |

### Return type

[**IdentityVerificationBankModel**](IdentityVerificationBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## internal_signal_invoice

> <InternalInvoiceBankModel> internal_signal_invoice(invoice_guid)

Signal Invoice

Signal an invoice to complete settlment.  Required scope: **internal:invoices:write**

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

api_instance = CybridApiBank::InternalBankApi.new
invoice_guid = 'invoice_guid_example' # String | Identifier for the invoice.

begin
  # Signal Invoice
  result = api_instance.internal_signal_invoice(invoice_guid)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_signal_invoice: #{e}"
end
```

#### Using the internal_signal_invoice_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalInvoiceBankModel>, Integer, Hash)> internal_signal_invoice_with_http_info(invoice_guid)

```ruby
begin
  # Signal Invoice
  data, status_code, headers = api_instance.internal_signal_invoice_with_http_info(invoice_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalInvoiceBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_signal_invoice_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invoice_guid** | **String** | Identifier for the invoice. |  |

### Return type

[**InternalInvoiceBankModel**](InternalInvoiceBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## internal_signal_transfer

> <TransferBankModel> internal_signal_transfer(transfer_guid)

Signal Transfer

Signal an transfer to proceed.  Required scope: **internal:transfers:write**

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

api_instance = CybridApiBank::InternalBankApi.new
transfer_guid = 'transfer_guid_example' # String | Identifier for the transfer.

begin
  # Signal Transfer
  result = api_instance.internal_signal_transfer(transfer_guid)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_signal_transfer: #{e}"
end
```

#### Using the internal_signal_transfer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TransferBankModel>, Integer, Hash)> internal_signal_transfer_with_http_info(transfer_guid)

```ruby
begin
  # Signal Transfer
  data, status_code, headers = api_instance.internal_signal_transfer_with_http_info(transfer_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TransferBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->internal_signal_transfer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transfer_guid** | **String** | Identifier for the transfer. |  |

### Return type

[**TransferBankModel**](TransferBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_internal_execution

> <InternalExecutionBankModel> patch_internal_execution(execution_guid, patch_internal_execution_bank_model)

Patch Execution

Patch an execution verification.  Required scope: **internal:executions:write**

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

api_instance = CybridApiBank::InternalBankApi.new
execution_guid = 'execution_guid_example' # String | Identifier for the execution.
patch_internal_execution_bank_model = CybridApiBank::PatchInternalExecutionBankModel.new({state: 'storing'}) # PatchInternalExecutionBankModel | 

begin
  # Patch Execution
  result = api_instance.patch_internal_execution(execution_guid, patch_internal_execution_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->patch_internal_execution: #{e}"
end
```

#### Using the patch_internal_execution_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalExecutionBankModel>, Integer, Hash)> patch_internal_execution_with_http_info(execution_guid, patch_internal_execution_bank_model)

```ruby
begin
  # Patch Execution
  data, status_code, headers = api_instance.patch_internal_execution_with_http_info(execution_guid, patch_internal_execution_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalExecutionBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->patch_internal_execution_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **execution_guid** | **String** | Identifier for the execution. |  |
| **patch_internal_execution_bank_model** | [**PatchInternalExecutionBankModel**](PatchInternalExecutionBankModel.md) |  |  |

### Return type

[**InternalExecutionBankModel**](InternalExecutionBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## patch_internal_plan

> <InternalPlanBankModel> patch_internal_plan(plan_guid, patch_internal_plan_bank_model)

Patch Plan

Patch an plan verification.  Required scope: **internal:plans:write**

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

api_instance = CybridApiBank::InternalBankApi.new
plan_guid = 'plan_guid_example' # String | Identifier for the plan.
patch_internal_plan_bank_model = CybridApiBank::PatchInternalPlanBankModel.new({state: 'storing'}) # PatchInternalPlanBankModel | 

begin
  # Patch Plan
  result = api_instance.patch_internal_plan(plan_guid, patch_internal_plan_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->patch_internal_plan: #{e}"
end
```

#### Using the patch_internal_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalPlanBankModel>, Integer, Hash)> patch_internal_plan_with_http_info(plan_guid, patch_internal_plan_bank_model)

```ruby
begin
  # Patch Plan
  data, status_code, headers = api_instance.patch_internal_plan_with_http_info(plan_guid, patch_internal_plan_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalPlanBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->patch_internal_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_guid** | **String** | Identifier for the plan. |  |
| **patch_internal_plan_bank_model** | [**PatchInternalPlanBankModel**](PatchInternalPlanBankModel.md) |  |  |

### Return type

[**InternalPlanBankModel**](InternalPlanBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## patch_internal_stage

> <InternalStageBankModel> patch_internal_stage(stage_guid, patch_internal_stage_bank_model)

Patch Stage

Patch a stage.  Required scope: **internal:plans:write**

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

api_instance = CybridApiBank::InternalBankApi.new
stage_guid = 'stage_guid_example' # String | Identifier for the stage.
patch_internal_stage_bank_model = CybridApiBank::PatchInternalStageBankModel.new({state: 'storing'}) # PatchInternalStageBankModel | 

begin
  # Patch Stage
  result = api_instance.patch_internal_stage(stage_guid, patch_internal_stage_bank_model)
  p result
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->patch_internal_stage: #{e}"
end
```

#### Using the patch_internal_stage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalStageBankModel>, Integer, Hash)> patch_internal_stage_with_http_info(stage_guid, patch_internal_stage_bank_model)

```ruby
begin
  # Patch Stage
  data, status_code, headers = api_instance.patch_internal_stage_with_http_info(stage_guid, patch_internal_stage_bank_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalStageBankModel>
rescue CybridApiBank::ApiError => e
  puts "Error when calling InternalBankApi->patch_internal_stage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **stage_guid** | **String** | Identifier for the stage. |  |
| **patch_internal_stage_bank_model** | [**PatchInternalStageBankModel**](PatchInternalStageBankModel.md) |  |  |

### Return type

[**InternalStageBankModel**](InternalStageBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

