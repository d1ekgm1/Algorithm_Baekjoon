
select 
    i.ID
    , n.fish_name
    , i.length
from 
    FISH_INFO as i
    join fish_name_info as n on i.FISH_TYPE = n.FISH_TYPE
where 1=1 
    and (i.fish_type, i.length) in (select fish_type, max(length) 
                                    from fish_info 
                                    group by fish_type)
       