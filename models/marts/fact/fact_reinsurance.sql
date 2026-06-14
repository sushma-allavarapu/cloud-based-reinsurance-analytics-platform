{{ config(
    materialized='incremental',
    unique_key='claim_id'
) }}    
    
    SELECT

        c.customer_id,
        c.policy_id,
        c.benefit_id,

        c.insurance_company_id,
        c.reinsurance_company_id,

        c.sum_assured,

        p.premium_rate,
        p.retention,

        (c.sum_assured - p.retention) AS sum_ced,

        (p.premium_rate * (c.sum_assured - p.retention))/1000
            AS reinsurance_amount,

        cl.claim_id,
        cl.claim_amt,
        cl.claim_date,
        cl.claim_status,
        cl.claim_reason

    FROM {{ ref('stg_customers') }} c

    INNER JOIN {{ ref('stg_premiums') }} p
        ON c.customer_id = p.customer_id
        AND c.policy_id = p.policy_id
        AND c.benefit_id = p.benefit_id

    LEFT JOIN {{ ref('stg_claims') }} cl
        ON c.customer_id = cl.customer_id
        AND c.policy_id = cl.policy_id
        AND c.benefit_id = cl.benefit_id