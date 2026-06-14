select *
from {{ ref('fact_reinsurance') }}
where claim_id is not null
and policy_id is null