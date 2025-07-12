SELECT YEAR(YM) as YEAR
     , round(avg(PM_VAL1), 2) as PM10
     , round(avg(PM_VAL2), 2) as `PM2.5`
  FROM AIR_POLLUTION
 WHERE 1=1
   AND LOCATION2 = '수원'
 GROUP BY
       YEAR(YM)
ORDER BY
       1 asc