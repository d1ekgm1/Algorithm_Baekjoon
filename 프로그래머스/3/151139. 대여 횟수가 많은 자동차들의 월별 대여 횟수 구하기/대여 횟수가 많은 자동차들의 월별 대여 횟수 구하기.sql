-- 코드를 입력하세요
with count_table as (
SELECT *, count(history_id) over (partition by car_id) as rental_count
from CAR_RENTAL_COMPANY_RENTAL_HISTORY
where date_format(START_DATE,'%Y-%m') between '2022-08' and '2022-10'
order by car_id
)

select date_format(START_DATE,'%m')+0 as MONTH
    , car_id as CAR_ID
    , count(history_id) as RECORDS
from count_table 
where rental_count>=5 
group by date_format(START_DATE,'%m'), car_id
having  count(history_id)>=1
order by MONTH asc, CAR_ID desc