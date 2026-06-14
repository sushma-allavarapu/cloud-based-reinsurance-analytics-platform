with source as (
        select * from {{ source('raw', 'insurance_company') }}
  ),
  renamed as (
      select
          {{ adapter.quote("INSURANCE_COMPANY_ID") }},
        {{ adapter.quote("INSURANCE_COMPANY_NAME") }}

      from source
  )
  select * from renamed
    