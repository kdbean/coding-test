SELECT a.FOOD_TYPE
     -- , lpad(a.REST_ID, 5, 0) as REST_ID
     , a.REST_ID
     , a.REST_NAME
     , a.FAVORITES
  FROM REST_INFO a
 WHERE 1=1
   AND (a.FOOD_TYPE, a.FAVORITES) in ( select FOOD_TYPE, max(FAVORITES)
                                        from REST_INFO
                                       group by FOOD_TYPE
                                     )
ORDER BY
       1 desc
