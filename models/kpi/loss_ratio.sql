select insurance_company_id,
sum(coalesce(claim_amt,0)) as total_claim_amt,
sum(reinsurance_amount) as total_reinsurance_amt,
round(sum(coalesce(claim_amt,0))/nullif(sum(reinsurance_amount),0),4) as loss_ratio

from {{ ref('fact_reinsurance') }}
group by insurance_company_id