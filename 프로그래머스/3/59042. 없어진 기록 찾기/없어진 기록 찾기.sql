SELECT a.ANIMAL_ID
     , a.NAME
  FROM ANIMAL_OUTS a
  LEFT JOIN ANIMAL_INS b ON a.ANIMAL_ID = b.ANIMAL_ID
 WHERE 1=1
   AND b.ANIMAL_ID is null
ORDER BY 
       1
     , 2