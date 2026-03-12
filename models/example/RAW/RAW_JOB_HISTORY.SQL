{{
    config(
        materialized='table'
    )
}}

SELECT * FROM {{ source('hr_info', 'job_history') }}
