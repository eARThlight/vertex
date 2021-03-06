create or replace view vertex_fact_ledger_credit_change as

select id as ledger_credit_change_id,
  COALESCE(lcc.fund_account_id, 0) as fund_account_id,
	COALESCE(lcc.partner_id,'0') as partner_id,
	price,
	lcc.create_time,
	TO_CHAR(TO_TIMESTAMP(lcc.create_time), 'YYYYMMDD')::INT as create_day_id,
	effective_time,
	TO_CHAR(TO_TIMESTAMP(lcc.effective_time), 'YYYYMMDD')::INT as effective_day_id,
	creator_id,
	ref_id,
	type_id as credit_change_type_id,
	fa.accounting_category_id
from ledger_credit_change lcc
left join vertex_dim_fund_account_accounts fa on fa.fund_account_id=lcc.fund_account_id
;