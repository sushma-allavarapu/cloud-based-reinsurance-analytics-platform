select insurance_company_id,
count(distinct claim_id) as total_claims,
count(distinct policy_id) as total_policies,
round(count(distinct(claim_id))/nullif(count(distinct(policy_id)),0),4) as claim_ratio

from {{ ref('fact_reinsurance') }}
group by insurance_company_id

