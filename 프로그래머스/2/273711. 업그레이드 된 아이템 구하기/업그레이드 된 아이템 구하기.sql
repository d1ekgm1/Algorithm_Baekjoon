with new_table as (
    select t.ITEM_ID
from ITEM_INFO as i
    join ITEM_TREE as t on i.ITEM_ID = t.PARENT_ITEM_ID
where RARITY = 'RARE'
)

select new_table.ITEM_ID, i.ITEM_NAME, i.RARITY
from new_table 
    join ITEM_INFO as i on new_table.ITEM_ID = i.ITEM_ID
order by new_table.ITEM_ID desc