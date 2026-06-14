select *
from {{ ref('stg_customers') }}
where age < 18
   or age > 100