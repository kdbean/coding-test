SELECT a.NAME
     , count(1) as COUNT
  FROM ANIMAL_INS a
WHERE a.NAME is not null  
GROUP BY
       a.NAME
HAVING count(1) >= 2
ORDER BY
       a.NAME