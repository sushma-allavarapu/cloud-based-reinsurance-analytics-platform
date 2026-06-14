select benefit_id,sum(sum_ced) as total_risk_exposure,
count(distinct policy_id) as total_policies,
avg(sum_ced) as avg_risk_exposure,
sum(reinsurance_amount) as total_reinsurance_amt
from
{{ref('fact_reinsurance')}} group by benefit_id