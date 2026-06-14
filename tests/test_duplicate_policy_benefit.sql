SELECT
    customer_id,
    policy_id,
    benefit_id,
    COUNT(*) AS cnt
FROM {{ ref('stg_customers') }}
GROUP BY
    customer_id,
    policy_id,
    benefit_id
HAVING COUNT(*) > 1