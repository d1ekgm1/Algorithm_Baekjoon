with avg_sal as (
    select dept_id, round(avg(sal),0) as AVG_SAL
    from hr_employees
    group by dept_id
)

select a.dept_id, d.dept_name_en, a.avg_sal
from avg_sal as a
left outer join hr_department as d on a.dept_id = d.dept_id
order by a.avg_sal desc

