
{{
    config(
        materialized='table'
    )
}}

select job_id,{{markup('HRM')}} as hrm,{{markup('SA')}} as informatation_tech from {{ ref('RAW_EMPLOYEES') }}
group by Job_id