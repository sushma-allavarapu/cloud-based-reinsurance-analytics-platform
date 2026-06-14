select distinct
reinsurance_company_id,reinsurance_company_name from {{source('raw','reinsurance_company')}}