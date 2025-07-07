SELECT a.CAR_ID
     , to_char(round(avg(a.END_DATE - a.START_DATE + 1), 1),'FM9990.09') as AVERAGE_DURATION
  FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY a
 WHERE 1=1
GROUP BY
       a.CAR_ID
HAVING 
       round(avg(a.END_DATE - a.START_DATE + 1), 1) >= 7
ORDER BY
       to_number(AVERAGE_DURATION) desc
     , CAR_ID desc