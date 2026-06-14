select *
from {{ ref('fact_reinsurance') }}
where sum_ced < 0