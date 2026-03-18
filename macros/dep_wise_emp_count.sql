-- {% macro dept_wise_emp_count(dept_tbl,emp_tbl) %}


-- select {{dept_tbl}}.department_name , 
-- count(e.employee_id) as num_of_employees
-- from {{dept_tbl}}
--  inner join {{ emp_tbl }}  e
-- on {{dept_tbl}}.department_id= e.department_id
-- group by {{dept_tbl}}.department_name

-- {% endmacro %}



{% macro dept_wise_emp_count(dept_tbl, emp_tbl) %}

select 
    d.department_name,
    count(e.employee_id) as num_of_employees
from {{ dept_tbl }} d
inner join {{ emp_tbl }} e
    on d.department_id = e.department_id
group by d.department_name

{% endmacro %}