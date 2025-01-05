select 
    a.AUTHOR_ID, a.AUTHOR_NAME, b.CATEGORY
    , sum(s.SALES * b.PRICE) as TOTAL_SALES
from BOOK as b
    join BOOK_SALES as s on s.BOOK_ID = b.BOOK_ID
    join AUTHOR as a on a.AUTHOR_ID = b.AUTHOR_ID
where date_format(s.SALES_DATE,'%Y-%m') = '2022-01'
group by a.AUTHOR_ID, b.CATEGORY
order by a.AUTHOR_ID asc, b.CATEGORY desc
