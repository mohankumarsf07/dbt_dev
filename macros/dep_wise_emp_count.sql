{% macro dept_wise_emp_count(dept_tbl,emp_tbl) %}


select {{dept_tbl}}.department_name,count({{emp_tbl}}.employee_id) as num_of_employees
from {{ dept_tbl }} inner join {{ emp_tbl }}
on {{ dept_tbl }}.department_id={{ emp_tbl }}.department_id
group by {{dept_tbl}}.department_name

{% endmacro %}