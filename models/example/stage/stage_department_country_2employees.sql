{{
    config(
        materialized='table'
    )
}}

{% set dep_emp_count = '2' %}

select C.COUNTRY_NAME,L.CITY,count(d.department_id) FROM {{ ref('RAW_COUNTRIES') }} C
INNER JOIN {{ ref('RAW_LOCATION') }} L
ON C.COUNTRY_ID=L.COUNTRY_ID
INNER JOIN {{ ref('RAW_DEPARTMENTS') }} D
ON L.LOCATION_ID=D.LOCATION_ID
where d.department_id in (select e.department_id from {{ ref('RAW_EMPLOYEES') }} e 
group by e.department_id
having count(e.department_id) ={{dep_emp_count}})  
group by C.COUNTRY_NAME,L.CITY
