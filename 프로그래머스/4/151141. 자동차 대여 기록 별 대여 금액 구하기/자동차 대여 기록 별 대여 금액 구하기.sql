with new_table as (
    select h.HISTORY_ID
    , c.DAILY_FEE
    , datediff(h.END_DATE,h.START_DATE)+1 as DURATION
    , case
        when datediff(h.END_DATE,h.START_DATE)+1 >= 90 then '90일 이상' 
        when datediff(h.END_DATE,h.START_DATE)+1 >=30 then '30일 이상'
        when datediff(h.END_DATE,h.START_DATE)+1 >=7 then '7일 이상'
        else '7일 이하' end as DURATION_TYPE
    from CAR_RENTAL_COMPANY_RENTAL_HISTORY as h
        join CAR_RENTAL_COMPANY_CAR as c on h.CAR_ID = c.CAR_ID
    where c.CAR_TYPE = '트럭'
)

select n.HISTORY_ID
     , 
     if (d.duration_type is null, n.daily_fee*n.DURATION,
     round(n.DAILY_FEE * (1-d.discount_rate/100)* DURATION,0))  as FEE
from new_table as n
    left join (SELECT * FROM CAR_RENTAL_COMPANY_DISCOUNT_PLAN WHERE CAR_TYPE='트럭') as d 
        on n.DURATION_TYPE = d.DURATION_TYPE
order by FEE desc, n.HISTORY_ID desc
