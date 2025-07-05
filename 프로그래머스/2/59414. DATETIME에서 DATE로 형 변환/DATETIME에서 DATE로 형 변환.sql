SELECT a.ANIMAL_ID
     , a.NAME
     , to_char(a.DATETIME, 'yyyy-mm-dd') as "날짜"
  FROM ANIMAL_INS a
ORDER BY 1