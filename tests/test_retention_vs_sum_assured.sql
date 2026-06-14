select *
from {{ ref('fact_reinsurance') }}
where retention > sum_assured