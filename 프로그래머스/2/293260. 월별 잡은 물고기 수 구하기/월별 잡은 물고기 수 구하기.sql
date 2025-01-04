-- 코드를 작성해주세요
select 
    count(*) as FISH_COUNT
    , MONTH(TIME) as MONTH
from FISH_INFO
group by MONTH(TIME)
having FISH_COUNT>0
order by MONTH asc