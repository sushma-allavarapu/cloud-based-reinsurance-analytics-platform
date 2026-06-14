SELECT

    insurance_company_id,

    COUNT(DISTINCT customer_id) AS total_customers,

    COUNT(DISTINCT policy_id) AS total_policies,

    SUM(sum_assured) AS total_sum_assured,

    SUM(sum_ced) AS total_sum_ced,

    SUM(reinsurance_amount) AS total_premium_income,

    SUM(COALESCE(claim_amt,0)) AS total_claims,

    SUM(reinsurance_amount)
      -
    SUM(COALESCE(claim_amt,0))
      AS profit

FROM {{ ref('fact_reinsurance') }}

GROUP BY insurance_company_id