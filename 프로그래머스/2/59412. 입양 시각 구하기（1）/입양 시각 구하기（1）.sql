-- 코드를 입력하세요
SELECT HOUR(DATETIME) as HOUR
    , count(distinct ANIMAL_ID) as COUNT
from ANIMAL_OUTS
where TIME(DATETIME) between '09:00' and '19:59'
group by HOUR(DATETIME)

# select DATE_FORMAT(DATETIME,'%H:%i')
# from ANIMAL_OUTS