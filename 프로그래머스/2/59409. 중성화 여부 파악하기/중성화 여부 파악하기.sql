SELECT a.ANIMAL_ID
     , a.NAME
     , case when a.SEX_UPON_INTAKE like '%Neutered%' or
                 a.SEX_UPON_INTAKE like '%Spayed%'   then 'O'
            else 'X'
        end as "중성화"
  FROM ANIMAL_INS a
ORDER BY
     ANIMAL_ID