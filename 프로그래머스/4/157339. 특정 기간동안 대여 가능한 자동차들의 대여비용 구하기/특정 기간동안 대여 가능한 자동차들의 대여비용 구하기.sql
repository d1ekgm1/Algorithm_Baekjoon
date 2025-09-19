WITH fin_table AS (
    SELECT c.car_id,
           c.car_type,
           c.daily_fee,
           d.discount_rate
    FROM CAR_RENTAL_COMPANY_CAR AS c
    JOIN CAR_RENTAL_COMPANY_DISCOUNT_PLAN AS d 
         ON c.car_type = d.car_type
        AND d.duration_type = '30일 이상'
    WHERE c.car_type IN ('SUV','세단')
      AND c.car_id NOT IN (
            SELECT car_id
            FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
            WHERE start_date <= '2022-11-30'
              AND end_date   >= '2022-11-01'
      )
)
SELECT car_id,
       car_type,
       ROUND(daily_fee * (1 - discount_rate / 100) * 30, 0) AS FEE
FROM fin_table
WHERE ROUND(daily_fee * (1 - discount_rate / 100) * 30, 0) BETWEEN 500000 AND 1999999
ORDER BY FEE DESC, car_type ASC, car_id DESC;
