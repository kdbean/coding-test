SELECT a.ANIMAL_ID
     , a.NAME
  FROM ANIMAL_INS a
 WHERE 1=1
   AND upper(a.NAME) like '%EL%'
   AND a.ANIMAL_TYPE = 'Dog'
ORDER BY 
       a.NAME asc