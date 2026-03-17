{{
    config(
        materialized='table'
    )
}}


{{dept_wise_emp_count ('raw_departments','raw_employees')}}

-- {{ dept_wise_emp_count(ref('raw_departments'), ref('raw_employees')) }}