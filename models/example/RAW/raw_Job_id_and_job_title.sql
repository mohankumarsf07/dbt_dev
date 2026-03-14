

--direrctly we can call seed ffile becouse its in snowfflake

-- select * from {{ ref('country_codes') }}

-- select * from {{ ref('Job_id_and_job_title') }}



with cte as (
    select * from {{ ref('country_codes') }}
)
select * from cte