WITH T1 as
    (SELECT b.USER_ID
          , b.NICKNAME
          , SUM(a.PRICE) as TOTAL_SALES
      FROM USED_GOODS_BOARD a
         , USED_GOODS_USER b
     WHERE 1=1
       AND a.WRITER_ID = b.USER_ID
       AND a.STATUS = 'DONE'
    GROUP BY 
           b.USER_ID
         , b.NICKNAME
    )     
SELECT x.*
  FROM T1 x
 WHERE TOTAL_SALES >= 700000
ORDER BY 3 asc 