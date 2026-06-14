
select customer_id,policy_id,benefit_id,UPPER(TRIM(customer_name)) as customer_name,
case
 when gender IS NULL then 'UNKNOWN'
 ELSE UPPER(gender)
 end as gender,
case
    when smoker in ('Yes','yes') then 'Yes'
    ELSE 'No'
    end as smoker,
age,sum_assured,policy_term,premium_paying_term,insurance_company_id,reinsurance_company_id
from {{source('raw','customers')}}
where customer_id is not null
and premium_paying_term <= policy_term