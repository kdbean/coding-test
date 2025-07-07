SELECT a.CAR_TYPE
     , count(1) as CARS
  FROM CAR_RENTAL_COMPANY_CAR a
 WHERE 1=1
   -- AND (a.OPTIONS like '%통풍시트%') or (a.OPTIONS like '%열선시트%') or (a.OPTIONS like '%가죽시트%')
   AND REGEXP_LIKE(a.OPTIONS, '통풍시트|열선시트|가죽시트')
GROUP BY
       a.CAR_TYPE
ORDER BY
       a.CAR_TYPE asc
