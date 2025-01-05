with new_table as (
    select 
        m.MEMBER_NAME, r.REVIEW_TEXT, r.REVIEW_DATE
        , count(r.REVIEW_ID) over(partition by r.MEMBER_ID) as count_review
    from MEMBER_PROFILE as m
        join REST_REVIEW as r on m.MEMBER_ID = r.MEMBER_ID)
    
select MEMBER_NAME, REVIEW_TEXT, date_format(REVIEW_DATE,'%Y-%m-%d') as REVIEW_DATE
from new_table 
where count_review = (select max(count_review) from new_table)
order by REVIEW_DATE asc, REVIEW_TEXT asc
