select *
from {{ ref('stg_claims') }}
where claim_date > current_date