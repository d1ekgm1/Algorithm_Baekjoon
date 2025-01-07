select count(i.ID) as FISH_COUNT
    , n.fish_name as FISH_NAME
from fish_info as i
    join fish_name_info as n on n.FISH_TYPE = i.FISH_TYPE
group by n.fish_name
order by FISH_COUNT desc