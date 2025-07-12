SELECT x.ANIMAL_ID
     , x.NAME
  FROM (
        SELECT b.ANIMAL_ID
             , b.NAME
             , rank() over(order by b.DATETIME - a.DATETIME desc) as RANK_DURATION
          FROM ANIMAL_INS a
             , ANIMAL_OUTS b
         WHERE 1=1
           AND a.ANIMAL_ID = b.ANIMAL_ID
       ) x
  WHERE x.RANK_DURATION < 3 
       