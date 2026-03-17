

--direrctly we can call seed ffile becouse its in snowfflake

-- -- select * from {{ ref('country_codes') }}

-- -- select * from {{ ref('Job_id_and_job_title') }}



-- with cte as (
--     select * from {{ ref('country_codes') }}
-- )
-- select * from cte
-- where country_code = USA

select country_name, {{ dbt_utils.pivot('country_co',dbt_utils.get_column_values(ref('country_codes')))}} 
from {{ ref('country_codes') }}


-- -- {{ dbt_utils.pivot(
--       'color',
--       dbt_utils.get_column_values(ref('orders'), 'color')
--   ) }}