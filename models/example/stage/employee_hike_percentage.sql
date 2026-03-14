{{
    config(
        materialized='table'
    )
}}

-- select * from {{ ref('RAW_EMPLOYEES') }}

select employee_id,concat(first_name,'  ',last_name) as full_name,salary,{{ employee_hike }} from {{ ref('RAW_EMPLOYEES') }}