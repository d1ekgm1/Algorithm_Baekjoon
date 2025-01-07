select e.EMP_NO, e.EMP_NAME 
    , case when SCORE >= 96 then 'S'
        when SCORE >= 90 then 'A'
        when SCORE >= 80 then 'B'
        else 'C' end as 'GRADE'
    , case when SCORE >= 96 then e.SAL*0.20
        when SCORE >= 90 then e.SAL*0.15
        when SCORE >= 80 then e.SAL*0.10
        else 0 end as 'BONUS'
from (select EMP_NO, avg(SCORE) as SCORE
        from HR_GRADE
        group by EMP_NO) as g
    inner join HR_EMPLOYEES as e on g.EMP_NO = e.EMP_NO
order by e.EMP_NO asc
    

