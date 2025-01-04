-- 코드를 작성해주세요
select 
    count(*) as FISH_COUNT
    , n.FISH_NAME as FISH_NAME
from FISH_INFO as i
join FISH_NAME_INFO as n on i.FISH_TYPE = n.FISH_TYPE
group by FISH_NAME
order by FISH_COUNT desc