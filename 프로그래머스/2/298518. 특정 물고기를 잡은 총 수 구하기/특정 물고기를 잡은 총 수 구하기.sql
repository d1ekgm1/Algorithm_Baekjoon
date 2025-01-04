with new_table as (
select fn.FISH_NAME, count(*) as c_fish
from FISH_INFO as f
    join FISH_NAME_INFO as fn on f.FISH_TYPE = fn.FISH_TYPE
where fn.FISH_NAME in ('BASS', 'SNAPPER')
group by fn.FISH_NAME)

select sum(c_fish) as FISH_COUNT  from new_table
