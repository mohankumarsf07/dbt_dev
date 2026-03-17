{{
    config(
        materialized='table'
    )
}}


select {{ dbt_utils.generate_surrogate_key(['employee_id','FIRST_NAME','job_id'])}} employee_id, FIRST_NAME,job_id,{{ employee_hike('30') }} as Sal_hike 
from {{ ref('RAW_EMPLOYEES') }}



-- select ,employee_id,FIRST_NAME,job_id * from {{ ref('RAW_EMPLOYEES') }}