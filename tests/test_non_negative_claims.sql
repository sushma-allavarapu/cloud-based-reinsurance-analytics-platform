select *
from {{ ref('stg_claims') }}
where claim_amt < 0