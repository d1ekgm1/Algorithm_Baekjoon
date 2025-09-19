with uni_table as(
    select SALES_DATE, PRODUCT_ID, USER_ID, SALES_AMOUNT
    from ONLINE_SALE
    union all
    select SALES_DATE, PRODUCT_ID, null as USER_ID, SALES_AMOUNT
    from OFFLINE_SALE
)
select date_format(SALES_DATE,'%Y-%m-%d') as SALES_DATE,  PRODUCT_ID, USER_ID, SALES_AMOUNT
from uni_table
where year(SALES_DATE)='2022' and month(SALES_DATE)='03'
order by SALES_DATE ASC, PRODUCT_ID ASC, USER_ID ASC