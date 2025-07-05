SELECT a.NAME
  FROM ANIMAL_INS a
 WHERE DATETIME = (select min(datetime)
                     from ANIMAL_INS 
                  )                  
ORDER BY
       a.DATETIME