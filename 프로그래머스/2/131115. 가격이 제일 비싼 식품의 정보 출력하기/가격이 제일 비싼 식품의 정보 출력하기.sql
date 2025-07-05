SELECT a.*
  FROM FOOD_PRODUCT a
 WHERE a.PRICE = ( select max(PRICE)
                     from FOOD_PRODUCT
                 )