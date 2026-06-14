select *
from {{ ref('stg_premiums') }}
where premium_rate <= 0