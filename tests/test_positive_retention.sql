select *
from {{ ref('stg_premiums') }}
where retention <= 0