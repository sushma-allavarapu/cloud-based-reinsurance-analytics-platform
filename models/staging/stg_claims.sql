SELECT
    claim_id,
    customer_id,
    policy_id,
    benefit_id,

    CASE
        WHEN claim_amt < 0 THEN NULL
        ELSE claim_amt
    END AS claim_amt,

    claim_date,

    UPPER(claim_status) AS claim_status,

    claim_reason

FROM {{ source('raw','claims') }}