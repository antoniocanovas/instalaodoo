mkdir /opt/odoo/other-addons
cd /opt/odoo/other-addons
ln -s ../community-data-files/base_bank_from_iban ./
ln -s ../server-ux/date_range ./
ln -s ../addons-cybro/developer_mode ./
ln -s ../server-ux/mass_editing ./
ln -s ../server-ux/mass_operation_abstract/ ./
ln -s ../server-auth/password_security ./
ln -s ../server-auth/auth_admin_passkey ./
# Contabilidad:
ln -s ../account-financial-tools/account_chart_update/ ./
ln -s ../account-financial-reporting/account_financial_report/ ./
ln -s ../account-financial-tools/account_asset_management/ ./
  # Wizard bloquear fechas:
ln -s ../account-financial-tools/account_lock_date_update ./
  # Crear años fiscales:
ln -s ../account-financial-tools/account_fiscal_year ./
# Para el SII:
ln -s ../account-invoicing/account_invoice_refund_link ./
ln -s ../account-financial-reporting/account_tax_balance ./
ln -s ../queue/queue_job
# Para copias:
ln -s ../server_tools/auto_backup ./
# Para bancos:
ln -s ../bank-statement-import/account_bank_statement_import_txt_xlsx/
ln -s ../web/web_widget_dropdown_dynamic ./
ln -s ../server-ux/multi_step_wizard/ ./
# Para informes mis:
ln -s ../mis-builder/mis_builder_budget/ ./
ln -s ../mis-builder/mis_builder ./
ln -s ../reporting-engine/report_xlsx ./
ln -s ../web/web_widget_color ./
# Backend:
ln -s ../muk_web/muk_web_utils ./
ln -s ../web/web_responsive ./
ln -s ../muk_web/muk_web_theme ./
ln -s ../muk_base/muk_utils ./
ln -s ../muk_base/muk_autovacuum/ ./
# Cheques y otros contables:
ln -s ../account-financial-tools/account_check_deposit/ ./
ln -s ../account-financial-tools/account_renumber/ ./
# GRPD:
ln -s ../data-protection/privacy ./
# MULTICOMPANY:
ln -s ../multi-company/base_multi_company ./
ln -s ../multi-company/account_multicompany_easy_creation ./
ln -s ../multi-company/res_company_active ./
# Otros varios:
ln -s ../social/mail_debrand ./
ln -s ../addons-ic/user_manager_permission_limit ./
# Para asesorías:
ln -s ../addons-ic/odoo_sso_client ./
# SEPA:
ln -s ../bank-payment/account_banking_mandate ./
ln -s ../bank-payment/account_banking_sepa_direct_debit ./
ln -s ../bank-payment/account_banking_pain_base ./
ln -s ../bank-payment/account_banking_mandate ./
ln -s ../bank-payment/account_payment_order ./
ln -s ../bank-payment/account_payment_mode ./
ln -s ../bank-payment/account_payment_partner ./
# CONTRATOS de clientes y proveedores:
ln -s ../contract/contract ./
