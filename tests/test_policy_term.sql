select *
from {{ ref('stg_customers') }}
where policy_term <= 0