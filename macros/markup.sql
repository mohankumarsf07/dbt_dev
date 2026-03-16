{%  macro markup(j_id) %}

sum(case when job_id = '{{j_id}}' then 1 else 0
end)


{% endmacro %}