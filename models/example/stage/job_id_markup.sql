
{{
    config(
        materialized='table'
    )
}}

select job_id,department_id,employee_id,{{markup('HRM')}} as hrm,{{markup('IT')}} as informatation_tech from {{ ref('RAW_EMPLOYEES') }}