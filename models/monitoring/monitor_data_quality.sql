SELECT
    COUNT(*) AS null_customer_ids
FROM {{ ref('stg_customers') }}
WHERE customer_id IS NULL