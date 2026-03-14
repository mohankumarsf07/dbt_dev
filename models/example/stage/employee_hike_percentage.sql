{{
    config(
        materialized='table'
    )
}}


-- select employee_id,concat(first_name,'  ',last_name) as full_name,salary,{{ employee_hike() }} as hike_sal from {{ ref('RAW_EMPLOYEES') }}

select employee_id,concat(first_name,'  ',last_name) as full_name,salary,{{ employee_hike('30') }} as hike_sal from {{ ref('RAW_EMPLOYEES') }}
