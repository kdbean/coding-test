SELECT a.ANIMAL_ID
     , a.NAME
     , a.SEX_UPON_INTAKE
  FROM ANIMAL_INS a
 WHERE 1=1
   AND REGEXP_LIKE(a.NAME, replace('Lucy, Ella, Pickle, Rogan, Sabrina, Mitty', ', ', '|'))
ORDER BY
       a.ANIMAL_ID