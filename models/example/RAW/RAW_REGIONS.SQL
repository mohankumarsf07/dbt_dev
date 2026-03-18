{{
    config(
        materialized='table'
    )
}}

SELECT * FROM {{ source('region_info', 'regions') }}