SELECT
    claim_status,
    COUNT(*) AS total_claims,
    SUM(claim_amt) AS total_claim_amount
FROM {{ ref('stg_claims') }}
GROUP BY claim_status