{{
    config(
        materialized='table'
    )
}}

{% set job_ids= ["LG","HRM","CS","SA","SEC","PM","OP"] %}




select job_id,

{% for j_id in job_ids %}
-- sum(salary) as {{j_id}}_total_amount_of_each_id
sum(case when job_id = '{{j_id}}' then salary end) as {{j_id}}_tot_amount
 {% if not loop.last %},{% endif %}
 {% endfor %}
 from {{ ref('RAW_EMPLOYEES') }} group by 1

 {{ source('source_name', 'object_name') }}