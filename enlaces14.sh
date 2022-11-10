mkdir /opt/odoo/other-addons
cd /opt/odoo/other-addons
ln -s ../community-data-files/base_bank_from_iban
ln -s ../server-ux/date_range
ln -s ../addons-cybro/developer_mode
ln -s ../server-ux/mass_editing
ln -s ../server-ux/mass_operation_abstract
ln -s ../server-auth/password_security
ln -s ../server-auth/auth_admin_passkey
ln -s ../access-addons/access_restricted
# Contabilidad:
ln -s ../account-financial-tools/account_chart_update
ln -s ../account-financial-reporting/account_financial_report
ln -s ../account-financial-tools/account_asset_management
ln -s ../bank-statement-import/account_statement_import_base
ln -s ../bank-statement-import/account_statement_import
ln -s ../account-reconcile/account_reconciliation_widget
ln -s ../account-fiscal-rule/account_fiscal_position_partner_type
ln -s ../account-financial-tools/account_move_force_removal
ln -s ../account-fiscal-rule/l10n_eu_oss
  # Wizard bloquear fechas:
ln -s ../account-financial-tools/account_lock_date_update
  # Crear años fiscales:
ln -s ../account-financial-tools/account_fiscal_year
# Para el SII:
ln -s ../account-invoicing/account_invoice_refund_link
ln -s ../account-financial-reporting/account_tax_balance
ln -s ../queue/queue_job
# Para copias:
ln -s ../server-tools/auto_backup
# Para bancos:
#ln -s ../bank-statement-import/account_bank_statement_import_txt_xlsx
ln -s ../web/web_widget_dropdown_dynamic
ln -s ../server-ux/multi_step_wizard
# Para informes mis:
ln -s ../mis-builder/mis_builder
ln -s ../mis-builder/mis_builder_budget
ln -s ../reporting-engine/report_xlsx
ln -s ../reporting-engine/report_xlsx_helper
# Backend:
ln -s ../web/web_responsive
ln -s ../muk_web/muk_web_theme
# Cheques y otros contables:
ln -s ../account-financial-tools/account_check_deposit
# GRPD:
ln -s ../data-protection/privacy
# MULTICOMPANY:
ln -s ../multi-company/base_multi_company
ln -s ../multi-company/account_multicompany_easy_creation
# Para asesorías:
ln -s ../addons-ic/odoo_sso_client
# SEPA:
ln -s ../bank-payment/account_banking_mandate
ln -s ../bank-payment/account_banking_sepa_direct_debit
ln -s ../bank-payment/account_banking_pain_base
ln -s ../bank-payment/account_payment_order
ln -s ../bank-payment/account_payment_mode
ln -s ../bank-payment/account_payment_partner
# CONTRATOS de clientes y proveedores:
ln -s ../contract/contract
# Otros varios:
ln -s ../social/mail_debrand
ln -s ../server-ux/base_menu_visibility_restriction
ln -s ../access-addons/ir_rule_protected
ln -s ../server-tools/database_cleanup
