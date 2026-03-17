{{
    config(
        materialized='table'
    )
}}


select {{ dbt_utils.generate_surrogate_key(['employee_id','FIRST_NAME','job_id'])}} employee_id, FIRST_NAME,job_id,{{ employee_hike('30') }} as Sal_hike 
from {{ ref('RAW_EMPLOYEES') }}



SELECT
    {{ dbt_utils.generate_surrogate_key(['employee_id','department_id']) }} AS emp_key,
    employee_id,
    department_id
FROM {{ ref('RAW_EMPLOYEES') }}

