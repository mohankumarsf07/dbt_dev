{{
    config(
        materialized='view'
    )
}}


{% set job_ids= ["LG","HRM","SEC","TR","CS"] %}




select job_id,

{% for j_id in job_ids %}
 sum(case when job_id = '{{j_id}}' then salary end) as {{j_id}}_tot_amount,
 {% if not loop.last %},{% endif %}
 {% endfor %}
 from employees group by 1