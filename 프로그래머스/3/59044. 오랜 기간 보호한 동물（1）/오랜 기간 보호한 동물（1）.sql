SELECT NAME
     , DATETIME
  FROM (
        SELECT a.NAME
             , a.DATETIME
             , row_number() over(order by a.DATETIME) as rnum
          FROM ANIMAL_INS a
         WHERE a.ANIMAL_ID not in ( 
                                   select x.ANIMAL_ID
                                     from ANIMAL_OUTS x
                                   )
       )
 WHERE rnum <= 3 
                      
                                          