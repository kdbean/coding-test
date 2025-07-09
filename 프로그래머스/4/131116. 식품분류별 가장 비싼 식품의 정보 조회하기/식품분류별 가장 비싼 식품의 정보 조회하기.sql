-- SELECT x1.CATEGORY
--      , x2.MAX_PRICE
--      , x1.PRODUCT_NAME
--   FROM FOOD_PRODUCT x1
--      , (
--          SELECT a.CATEGORY
--          , MAX(a.PRICE) as MAX_PRICE
--            FROM FOOD_PRODUCT a 
--           WHERE 1=1
--             AND REGEXP_LIKE(a.CATEGORY, '과자|국|김치|식용유')
--          GROUP BY a.CATEGORY
--        ) x2 
--  WHERE 1=1
--    AND x1.CATEGORY = x2.CATEGORY
--    AND x1.PRICE    = x2.MAX_PRICE
-- ORDER BY
--        2 desc

-- RANK 함수 적용
SELECT a.CATEGORY
     , a.PRICE as MAX_PRICE
     , a.PRODUCT_NAME
  FROM ( select CATEGORY
              , PRICE
              , PRODUCT_NAME
              , rank() over (partition by category order by price desc) as price_rank
           from food_product
          where 1=1
            and regexp_like(CATEGORY, '과자|국|김치|식용유')
       ) a
 WHERE a.PRICE_RANK = 1
ORDER BY
       2 desc