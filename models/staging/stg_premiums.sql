SELECT
    premium_id,
    customer_id,
    benefit_id,
    policy_id,

    CASE
        WHEN premium_rate < 0 THEN NULL
        ELSE premium_rate
    END AS premium_rate,

    retention

FROM {{ source('raw','premiums') }}