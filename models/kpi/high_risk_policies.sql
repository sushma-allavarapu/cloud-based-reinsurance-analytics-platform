SELECT

    policy_id,
    customer_id,
    benefit_id,

    sum_ced,

    claim_amt,

    ROUND(
        claim_amt
        /
        NULLIF(sum_ced,0),
        4
    ) AS risk_percentage,

    'HIGH RISK' AS risk_flag

FROM {{ ref('fact_reinsurance') }}

WHERE claim_amt > (0.70 * sum_ced)