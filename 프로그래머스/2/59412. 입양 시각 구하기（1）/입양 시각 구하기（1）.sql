SELECT to_number(to_char(a.DATETIME, 'hh24')) as HOUR
     , count(1) as COUNT
  FROM ANIMAL_OUTS a
 WHERE 1=1
   AND to_char(a.DATETIME, 'hh24') between '09' and '19'
GROUP BY
       to_number(to_char(a.DATETIME, 'hh24'))
ORDER BY
       1