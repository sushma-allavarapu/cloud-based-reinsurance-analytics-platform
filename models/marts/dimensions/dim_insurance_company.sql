select distinct
insurance_company_id,insurance_company_name from {{ source('raw', 'insurance_company') }}