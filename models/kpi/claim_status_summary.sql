SELECT

    claim_status,

    COUNT(*) AS total_claims,

    SUM(claim_amt) AS total_claim_amount

FROM {{ ref('fact_reinsurance') }}

WHERE claim_id IS NOT NULL

GROUP BY claim_status