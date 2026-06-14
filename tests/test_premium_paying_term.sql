select *
from {{ ref('stg_customers') }}
where premium_paying_term > policy_term