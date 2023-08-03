-- 코드를 입력하세요
SELECT dr_name, dr_id, mcdp_cd, DATE_FORMAT(HIRE_YMD, '%Y-%m-%d') 'date' from doctor
where mcdp_cd in ('CS', 'GS')
order by hire_ymd desc, dr_name asc;