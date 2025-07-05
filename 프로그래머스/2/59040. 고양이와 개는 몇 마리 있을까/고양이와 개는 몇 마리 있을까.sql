SELECT a.ANIMAL_TYPE
     , count(1) as count
  FROM ANIMAL_INS a
 WHERE 1=1
GROUP BY
       a.ANIMAL_TYPE
ORDER BY
       case when ANIMAL_TYPE = 'DOG' then '1'
            when ANIMAL_TYPE = 'CAT' then '0'
         end