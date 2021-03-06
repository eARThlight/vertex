create or replace view vertex_fact_zip_borrower_credit_change as

-- we need to construct a subquery for this fact because some credit changes types end in _mpesa or _paypal and the one
-- we select is primarily driven off disbursal or repayment_collected currency. We figure out currency details first
-- and then join on credit change type dimension to grab the right credit change type.
select bcc_subquery.zip_credit_change_id, bcc_subquery.trans_id, bcc_subquery.fund_account_id, bcc_subquery.local_price,
  COALESCE(cc_type.credit_change_type_id, bcc_subquery.credit_change_type_id) as credit_change_type_id,
  bcc_subquery.usd_price, bcc_subquery.create_time, bcc_subquery.create_day_id,
  bcc_subquery.effective_time, bcc_subquery.effective_day_id, bcc_subquery.item_id, bcc_subquery.ref_id, bcc_subquery.fx_rate_id,
  bcc_subquery.changer_id, bcc_subquery.changer_type, bcc_subquery.new_balance,
  COALESCE(bcc_subquery.currency,'USD') as currency,
  bcc_subquery.country_id, bcc_subquery.accounting_category_id
  from
  (select bcc.id as zip_credit_change_id,
    COALESCE(bcc.trans_id,0) as trans_id,
    bcc.fund_account_id,
    -- we try to capture the local and USD amounts from the disbursal or repayment_collected references in item_id or
    -- ref_id and round it to 2 decimal places since it is a currency amount
    cast(COALESCE(d_on_ref.amount, d_on_item.amount, rc_on_ref.amount, rc_on_item.amount, bcc.price) as numeric(36,2)) as local_price,
    cast(COALESCE(d_on_ref.amount_usd, d_on_item.amount_usd, rc_on_ref.amount_usd, rc_on_item.amount_usd, bcc.price) as numeric(36,2)) as usd_price,
    dim_cct.credit_change_type_id,
    dim_cct.type_name,
    dim_cct.source_table_name,
    bcc.create_time,
    TO_CHAR(TO_TIMESTAMP(bcc.create_time), 'YYYYMMDD')::INT as create_day_id,
    bcc.effective_time,
    TO_CHAR(TO_TIMESTAMP(bcc.effective_time), 'YYYYMMDD')::INT as effective_day_id,
    bcc.item_id,
    bcc.ref_id,
    fx.id as fx_rate_id,
    bcc.changer_id,
    case
      when bcc.changer_id = 0 then 'system'
      when bcc.changer_id = bcc.fund_account_id then 'user'
      else 'admin'
    end as changer_type,
    cast(bcc.new_balance as numeric(36,2)) as new_balance,
    -- we try to capture the currency from the disbursal or repayment_collected references in item_id or ref_id, with a
    -- default value of USD
    COALESCE(d_on_ref.currency, d_on_item.currency, rc_on_ref.currency, rc_on_item.currency) as currency,
    l.country_id,
    case
      when fa.contract_entity_id is null then (select accounting_category_id from vertex_dim_accounting_category where accounting_category = 'self_directed')
      else (select accounting_category_id from vertex_dim_accounting_category where accounting_category = 'managed_account')
    end as accounting_category_id
    from verse.verse_ods_zip_credit_change bcc
    inner join verse.verse_ods_zip_fund_accounts fa on fa.id = bcc.fund_account_id
    inner join vertex_dim_credit_change_type dim_cct on dim_cct.credit_change_type_id = bcc.type_id and dim_cct.source_table_name = 'zip.credit_change'
    left join verse.verse_ods_zip_disbursal d_on_ref ON d_on_ref.id = bcc.ref_id AND dim_cct.ref_refers_to = 'disbursal' AND dim_cct.fx_rate_from = 'disbursal'
    left join verse.verse_ods_zip_disbursal d_on_item ON d_on_item.id = bcc.item_id AND dim_cct.item_refers_to = 'disbursal' AND dim_cct.fx_rate_from = 'disbursal'
    left join verse.verse_ods_zip_repayment_collected AS rc_on_ref ON rc_on_ref.id = bcc.ref_id AND dim_cct.ref_refers_to = 'repayment_collected' AND dim_cct.fx_rate_from = 'repayment_collected'
    left join verse.verse_ods_zip_repayment_collected AS rc_on_item ON rc_on_item.id = bcc.item_id AND dim_cct.item_refers_to = 'repayment_collected' AND dim_cct.fx_rate_from = 'repayment_collected'
    -- loan_id can come from either disbursal or repayment_collected
    left join verse.verse_ods_zip_loans l on l.id =
    case
      when dim_cct.ref_refers_to = 'disbursal' then d_on_ref.loan_id
      when dim_cct.item_refers_to = 'disbursal' then d_on_item.loan_id
      when dim_cct.ref_refers_to = 'repayment_collected' then rc_on_ref.loan_id
      when dim_cct.item_refers_to = 'repayment_collected' then rc_on_item.loan_id
    end
    -- same for fx_rate_id
    left join verse.verse_ods_zip_fx_rates fx ON fx.id =
    case
      when dim_cct.ref_refers_to = 'disbursal' then d_on_ref.fx_rate_id
      when dim_cct.item_refers_to = 'disbursal' then d_on_item.fx_rate_id
      when dim_cct.ref_refers_to = 'repayment_collected' then rc_on_ref.fx_rate_id
      when dim_cct.item_refers_to = 'repayment_collected' then rc_on_item.fx_rate_id
    end
    where dim_cct.fx_rate_from in ('disbursal', 'repayment_collected') or dim_cct.fx_rate_from is null
    and (dim_cct.ref_refers_to = 'disbursal' or dim_cct.ref_refers_to = 'repayment_collected' or dim_cct.item_refers_to = 'disbursal' or dim_cct.item_refers_to = 'repayment_collected')
    and fa.type = 'BorrowerFundAccount'
  ) as bcc_subquery
  inner join verse.verse_ods_zip_fund_accounts acct on acct.id = bcc_subquery.fund_account_id
  left join vertex_dim_credit_change_type cc_type on bcc_subquery.source_table_name = 'zip.credit_change' and cc_type.type_name =
  CASE
			WHEN bcc_subquery.currency = 'KES' THEN concat(bcc_subquery.type_name, '_mpesa')
			WHEN bcc_subquery.currency = 'USD' THEN concat(bcc_subquery.type_name, '_paypal')
	END
	where acct.type = 'BorrowerFundAccount'
;
