select count(1) as FISH_COUNT
     , MONTH(TIME) as MONTH
  from FISH_INFO
 GROUP BY 2
 ORDER BY 2