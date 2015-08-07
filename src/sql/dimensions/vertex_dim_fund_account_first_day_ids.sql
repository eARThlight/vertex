create or replace view vertex_dim_fund_account_first_day_ids as

select fund_account_id, 
  min(loan_purchase_day_id) as loan_purchase_first_day_id,
  max(loan_purchase_day_id) as loan_purchase_last_day_id,
  min(loan_purchase_modification_day_id) as loan_purchase_modification_first_day_id,
  max(loan_purchase_modification_day_id) as loan_purchase_modification_last_day_id,
  min(loan_purchase_auto_day_id) as loan_purchase_auto_first_day_id,
  max(loan_purchase_auto_day_id) as loan_purchase_auto_last_day_id,
  min(loan_expired_day_id) as loan_expired_first_day_id,
  max(loan_expired_day_id) loan_expired_last_day_id,
  min(loan_expired_modification_day_id) as loan_expired_modification_first_day_id,
  max(loan_expired_modification_day_id) as loan_expired_modification_last_day_id,
  min(loan_refund_day_id) as loan_refund_first_day_id,
  max(loan_refund_day_id) as loan_refund_last_day_id,
  min(loan_refund_modification_day_id) as loan_refund_modification_first_day_id,
  max(loan_refund_modification_day_id) as loan_refund_modification_last_day_id,
  min(gift_purchase_day_id) as gift_purchase_first_day_id,
  max(gift_purchase_day_id) as gift_purchase_last_day_id,
  min(gift_purchase_modification_day_id) as gift_purchase_modification_first_day_id,
  max(gift_purchase_modification_day_id) as gift_purchase_modification_last_day_id,
  min(gift_redemption_day_id) as gift_redemption_first_day_id,
  max(gift_redemption_day_id) as gift_redemption_last_day_id,
  min(gift_expiration_day_id) as gift_expiration_first_day_id,
  max(gift_expiration_day_id) as gift_expiration_last_day_id,
  min(gift_expiration_modification_day_id) as gift_expiration_modification_first_day_id,
  max(gift_expiration_modification_day_id) as gift_expiration_modification_last_day_id,
  min(gift_expiration_donation_day_id) as gift_expiration_donation_first_day_id,
  max(gift_expiration_donation_day_id) as gift_expiration_donation_last_day_id,
  min(gift_expiration_donation_modification_day_id) as gift_expiration_donation_modification_first_day_id,
  max(gift_expiration_donation_modification_day_id) as gift_expiration_donation_modification_last_day_id,
  min(donation_day_id) as donation_first_day_id,
  max(donation_day_id) as donation_last_day_id,
  min(donation_modification_day_id) as donation_first_modification_day_id,
  max(donation_modification_day_id) as donation_last_modification_day_id,
  min(donation_auto_day_id) as donation_auto_first_day_id,
  max(donation_auto_day_id) as donation_auto_last_day_id,
  min(withdrawal_day_id) as withdrawal_first_day_id,
  max(withdrawal_day_id) as withdrawal_last_day_id,
  min(withdrawal_modification_day_id) as withdrawal_modification_first_day_id,
  max(withdrawal_modification_day_id) as withdrawal_modification_last_day_id,
  min(loan_repayment_day_id) as loan_repayment_first_day_id,
  max(loan_repayment_day_id) as loan_repayment_last_day_id,
  min(loan_repayment_currency_loss_day_id) as loan_repayment_currency_loss_first_day_id,
  max(loan_repayment_currency_loss_day_id) as loan_repayment_currency_loss_last_day_id,
  min(deposit_day_id) as deposit_first_day_id,
  max(deposit_day_id) as deposit_last_day_id,
  min(deposit_modification_day_id) as deposit_modification_first_day_id,
  max(deposit_modification_day_id) as deposit_modification_last_day_id,
  min(misc_day_id) as misc_first_day_id,
  max(misc_day_id) as misc_last_day_id,
  min(effective_day_id) as cc_all_first_day_id,
  max(effective_day_id) as cc_all_last_day_id,
  min(cc_user_day_id) as cc_user_first_day_id,
  max(cc_user_day_id) as cc_user_last_day_id,
  min(fundpool_repayment_day_id) as fundpool_repayment_first_day_id,
  max(fundpool_repayment_day_id) as fundpool_repayment_last_day_id,
  min(fundpool_match_day_id) as fundpool_match_first_day_id,
  max(fundpool_match_day_id) as fundpool_match_last_day_id,
  min(kivapool_repayment_day_id) as kivapool_repayment_first_day_id,
  max(kivapool_repayment_day_id) as kivapool_repayment_last_day_id,
  min(kivapool_match_day_id) as kivapool_match_first_day_id,
  max(kivapool_match_day_id) as kivapool_match_last_day_id,
  min(promo_loan_credit_day_id) as promo_loan_credit_first_day_id,
  max(promo_loan_credit_day_id) as promo_loan_credit_last_day_id,
  min(promo_loan_reimbursement_day_id) as promo_loan_reimbursement_first_day_id,
  max(promo_loan_reimbursement_day_id) as promo_loan_reimbursement_last_day_id,
  NULL::INT as uncategorized_first_day_id,
  NULL::INT as uncateogorized_last_day_id
  
 
from (        
        select fund_account_id, cct.id as type_id, cct.type_name,
        effective_day_id,
        case when type_name in ('loan_purchase') then effective_day_id end as loan_purchase_day_id,
        case when type_name in ('m_loan_purchase_void','loan_share_recapture') then effective_day_id end as loan_purchase_modification_day_id,
        case when type_name in ('loan_purchase_auto') then effective_day_id end as loan_purchase_auto_day_id,
        case when type_name in ('loan_expired') then effective_day_id end as loan_expired_day_id,
        case when type_name in ('loan_expired_modification') then effective_day_id end as loan_expired_modification_day_id,
        case when type_name in ('loan_refund') then effective_day_id end as loan_refund_day_id,
        case when type_name in ('m_loan_refund_reversal') then effective_day_id end as loan_refund_modification_day_id,
        case when type_name in ('gift_purchase') then effective_day_id end as gift_purchase_day_id,
        case when type_name in ('gift_cancellation') then effective_day_id end as gift_purchase_modification_day_id,
        case when type_name in ('gift_redemption') then effective_day_id end as gift_redemption_day_id,
        case when type_name in ('gift_expiration') then effective_day_id end as gift_expiration_day_id,
        case when type_name in ('gift_unexpiration') then effective_day_id end as gift_expiration_modification_day_id,
        case when type_name in ('gift_expiration_donation') then effective_day_id end as gift_expiration_donation_day_id,
        case when type_name in ('gift_expiration_donation_refund') then effective_day_id end as gift_expiration_donation_modification_day_id,
        case when type_name in ('withdrawal_request', 'm_withdrawal', 'm_check_withdrawal') then effective_day_id end as withdrawal_day_id,
        case when type_name in ('withdrawal_modification', 'withdrawal_void', 'm_withdrawal_modification', 'withdrawal_returned', 'm_withdrawal_refund') then effective_day_id end as withdrawal_modification_day_id,
        case when type_name in ('donation', 'check_donation', 'm_donation', 'subscription_donation', 'fundpool_donation','contract_recovery', 'dedication_donation', 'inactive_credit_donation') then effective_day_id end as donation_day_id,
        case when type_name in ('donation_void', 'm_donation_void', 'subscription_donation_void', 'dedication_donation_void', 'check_donation_void', 'inactive_donation_void') then effective_day_id end as donation_modification_day_id,
        case when type_name in ('autolend_donation', 'autolend_donation_void', 'loan_matcher_donation', 'loan_matcher_donation_void') then effective_day_id end as donation_auto_day_id,
        case when type_name in ('loan_repayment') then effective_day_id end as loan_repayment_day_id,
        case when type_name in ('loan_repayment_currency_loss', 'loan_repayment_currency_credit') then effective_day_id end as loan_repayment_currency_loss_day_id,
        case when type_name in ('deposit', 'check_deposit_9034', 'm_deposit', 'm_check_deposit', 'm_wire_transfer_deposit', 'echeck_deposit', 'fundpool_funding', 'kivapool_funding') then effective_day_id end as deposit_day_id,
        case when type_name in ('deposit_refund', 'm_check_deposit_void', 'm_check_deposit_currency_fix', 'deposit_modification', 'm_check_deposit_currency_gain',
			'm_check_deposit_currency_loss', 'deposit_reversal', 'echeck_failed', 'fundpool_funding_void', 'kivapool_funding_void') then effective_day_id end as deposit_modification_day_id,
	case when type_name in ('m_credit', 'm_debit', 'm_credit_from_ops', 'm_credit_transfer', 'initial_balance') then effective_day_id end as misc_day_id,	
	case when type_name in ('fundpool_repayment') then effective_day_id end as fundpool_repayment_day_id,
	case when type_name in ('fundpool_match') then effective_day_id end as fundpool_match_day_id,
	case when type_name in ('kivapool_repayment') then effective_day_id end as kivapool_repayment_day_id,
	case when type_name in ('kivapool_match') then effective_day_id end as kivapool_match_day_id,
	case when type_name in ('promo_loan_credit') then effective_day_id end as promo_loan_credit_day_id,
	case when type_name in ('promo_loan_reimbursement') then effective_day_id end as promo_loan_reimbursement_day_id,	
	--cc_user_day_id pulls from loan_purchase, gift_purchase, gift_redemption, withdrawal, donation, deposit
	case when type_name in ('loan_purchase', 'gift_purchase', 'gift_redemption','withdrawal_request', 'm_withdrawal', 'm_check_withdrawal','donation', 'check_donation', 'm_donation', 'subscription_donation', 'fundpool_donation','contract_recovery', 'dedication_donation', 'inactive_credit_donation',
	               'deposit', 'check_deposit_9034', 'm_deposit', 'm_check_deposit', 'm_wire_transfer_deposit', 'echeck_deposit', 'fundpool_funding', 'kivapool_funding') then effective_day_id end as cc_user_day_id
		
        from vertex_fact_credit_change cc
        inner join vertex_dim_credit_change_type cct on cc.dim_credit_change_type_id = cct.id
        where cct.source_table_name = 'credit_change' 
     
     ) day_ids
        
     
group by day_ids.fund_account_id;