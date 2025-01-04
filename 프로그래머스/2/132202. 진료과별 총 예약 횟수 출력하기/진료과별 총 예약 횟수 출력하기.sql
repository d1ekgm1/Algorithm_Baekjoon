-- 코드를 입력하세요
SELECT 
    MCDP_CD as '진료과코드'
    ,count(distinct PT_NO) as '5월예약건수'
from APPOINTMENT
where DATE_FORMAT(APNT_YMD, '%Y-%m') = '2022-05'
group by MCDP_CD
order by count(distinct PT_NO) asc, MCDP_CD asc