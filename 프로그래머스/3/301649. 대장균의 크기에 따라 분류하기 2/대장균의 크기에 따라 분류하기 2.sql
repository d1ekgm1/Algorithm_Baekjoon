with new_table as (
    select
        ID,
        percent_rank() over(order by SIZE_OF_COLONY desc) as pr
    from ECOLI_DATA
)

select ID
    , (case when pr <= 0.25 then 'CRITICAL'
        when pr <= 0.50 then 'HIGH'
        when pr <= 0.75 then 'MEDIUM'
        else 'LOW' end) as COLONY_NAME
from new_table
order by Id asc