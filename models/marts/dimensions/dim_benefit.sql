select distinct
benefit_id,benefit_name from {{ source('raw','policy_benefit_master')}}