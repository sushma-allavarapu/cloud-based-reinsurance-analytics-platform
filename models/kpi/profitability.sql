select insurance_company_id,
sum(reinsurance_amount) as total_reinsurance_amt,
sum(coalesce(claim_amt,0)) as total_claim_amt,
sum(reinsurance_amount)-sum(coalesce(claim_amt,0)) as profit
from {{ref("fact_reinsurance")}}
group by insurance_company_id