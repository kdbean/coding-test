SELECT x1.*
  FROM PLACES x1
      , (
         SELECT a.HOST_ID
           FROM PLACES a
          WHERE 1=1
         GROUP BY
                a.HOST_ID
         HAVING 
                count(1) > 1
        ) x2
 WHERE 1=1
   AND x1.HOST_ID = x2.HOST_ID
ORDER BY 
       1 asc