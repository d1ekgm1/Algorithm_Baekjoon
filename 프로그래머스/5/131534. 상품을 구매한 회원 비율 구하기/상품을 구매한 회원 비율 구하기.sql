-- 코드를 입력하세요

select year(SALES_DATE) as YEAR
    , month(SALES_DATE) as MONTH
    , count(distinct user_id) as PURCHASED_USERS
    , round(count(distinct user_id)/
    (select count(user_id) from user_info where year(joined)=2021),1) as PUCHASED_RATIO
from ONLINE_SALE
where user_id in (select USER_ID	
from USER_INFO
where year(joined) = 2021)
group by year(SALES_DATE), month(SALES_DATE)
order by YEAR, MONTH