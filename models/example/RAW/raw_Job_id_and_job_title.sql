

{{
    config(
        materialized='view'
    )
}}

with cte as (
    select * from {{ ref('country_codes') }}
)
select * from cte
where country_code = USA



