{{
    config(
        materialized='table'
    )
}}


{{dept_wise_emp_count ('raw_departments','raw_employees')}}
