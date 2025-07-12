select case when MONTH(DIFFERENTIATION_DATE) < 4 then '1Q'
            when MONTH(DIFFERENTIATION_DATE) between 4 and 6 then '2Q'
            when MONTH(DIFFERENTIATION_DATE) between 7 and 9 then '3Q'            
            else '4Q' end as QUARTER
     , count(1) as ECOLI_COUNT
  FROM ECOLI_DATA 
GROUP BY
       case when MONTH(DIFFERENTIATION_DATE) < 4 then '1Q'
            when MONTH(DIFFERENTIATION_DATE) between 4 and 6 then '2Q'
            when MONTH(DIFFERENTIATION_DATE) between 7 and 9 then '3Q'            
            else '4Q' end
ORDER BY 
       1 asc