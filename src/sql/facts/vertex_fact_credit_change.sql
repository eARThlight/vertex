create or replace view vertex_fact_credit_change as 
WITH credit_change_types_to_fix as ( 
        SELECT
            id as credit_change_type_id
        FROM
            verse_qa.verse_ods_kiva_credit_change_type
        WHERE
            table_name = 'credit_change'
        AND type_name IN ('deposit',
                          'echeck_deposit',
                          'gift_redemption',
                          'gift_purchase',
                          'subscription_donation')
        )
select
        cc.id as credit_change_id,
        CASE
                WHEN cc.trans_id is null THEN 0
                ELSE cc.trans_id
        END as trans_id,
        cc.fund_account_id,
	CASE
                WHEN cc.changer_id = 0 and cc.trans_id is not null and trans.login_id is not null
                        AND cc.create_time >= TO_NUMBER(TO_CHAR(TO_TIMESTAMP('20130101'), 'YYYYMMDD'))
                        AND cc.type_id IN (select credit_change_type_id from credit_change_types_to_fix) 
                        THEN trans.login_id 
                WHEN cc.changer_id = 0 and ((cc.trans_id is null) or (trans.login_id is null))
                        AND cc.create_time >= TO_NUMBER(TO_CHAR(TO_TIMESTAMP('20130101'), 'YYYYMMDD'))
                        AND cc.type_id IN (select credit_change_type_id from credit_change_types_to_fix)
                        THEN cc.fund_account_id
                ELSE cc.changer_id
        END as changer_id,
        CASE
                WHEN cc.changer_id = 0
                        AND cc.create_time >= TO_NUMBER(TO_CHAR(TO_TIMESTAMP('20130101'), 'YYYYMMDD'))
                        AND cc.type_id IN (select credit_change_type_id from credit_change_types_to_fix)
                        THEN 'user'
                WHEN cc.changer_id = 0
                        THEN 'system'
	       WHEN cc.changer_id=cc.fund_account_id THEN 'user'
	       ELSE 'admin'
	END as changer_type,
        dcct.v_id as dim_credit_change_type_id,
	cc.price,
	cc.create_time,
	TO_NUMBER(TO_CHAR(TO_TIMESTAMP(cc.create_time), 'YYYYMMDD')) as create_day_id,
	effective_time,
	TO_NUMBER(TO_CHAR(TO_TIMESTAMP(cc.effective_time), 'YYYYMMDD')) as effective_day_id,
	cc.item_id,
	cc.ref_id,
	cc.new_balance,
	fa.user_account_type, 
	dfa.dim_accounting_category_id
from
        verse_qa.verse_ods_kiva_credit_change cc
left join verse_qa.verse_ods_kiva_fund_account fa on fa.id = fund_account_id
left join verse_qa.verse_ods_kiva_transaction trans on trans.id = cc.trans_id
left join verse_qa.verse_dim_fund_account dfa on fa.id = dfa.fund_account_id
inner join verse_qa.verse_dim_credit_change_type dcct on dcct.credit_change_type_id = 
	case
	       when cc.type_id=23 -- loan_purchase 
	               and cc.changer_id=0 then 78 -- loan_purchase_auto
	       else cc.type_id
	end;
	