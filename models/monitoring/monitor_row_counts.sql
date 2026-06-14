SELECT
    'stg_customers' AS table_name,
    COUNT(*) AS row_count
FROM {{ ref('stg_customers') }}

UNION ALL

SELECT
    'stg_premiums',
    COUNT(*)
FROM {{ ref('stg_premiums') }}

UNION ALL

SELECT
    'stg_claims',
    COUNT(*)
FROM {{ ref('stg_claims') }}

UNION ALL

SELECT
    'fact_reinsurance',
    COUNT(*)
FROM {{ ref('fact_reinsurance') }}