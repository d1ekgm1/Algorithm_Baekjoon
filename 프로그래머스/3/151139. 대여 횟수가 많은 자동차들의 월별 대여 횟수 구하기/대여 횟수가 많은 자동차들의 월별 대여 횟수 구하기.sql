with five_times_table as(
    select car_id
    from car_rental_company_rental_history
    where date_format(start_date,'%Y-%m') >= '2022-08'
            and date_format(start_date,'%Y-%m') <= '2022-10'
    group by car_id
    having count(*)>=5
)

select month(start_date) as MONTH,
        car_id as CAR_ID,
        count(*) as RECORDS
from CAR_RENTAL_COMPANY_RENTAL_HISTORY
where car_id in (select car_id from five_times_table) and
    date_format(start_date,'%Y-%m') >= '2022-08'
    and date_format(start_date,'%Y-%m') <= '2022-10'
group by month(start_date), car_id
having count(*)>0
order by month(start_date) asc, car_id desc