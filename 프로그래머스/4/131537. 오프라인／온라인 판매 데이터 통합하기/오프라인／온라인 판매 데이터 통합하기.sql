SELECT to_char(x.SALES_DATE, 'yyyy-mm-dd') as SALES_DATE
     , x.PRODUCT_ID
     , x.USER_ID
     , x.SALES_AMOUNT
  FROM  (    
         SELECT a.SALES_DATE
             , a.PRODUCT_ID
             , a.USER_ID
             , a.SALES_AMOUNT
          FROM ONLINE_SALE a
         WHERE 1=1
        UNION ALL
        SELECT a.SALES_DATE
             , a.PRODUCT_ID
             , null
             , a.SALES_AMOUNT
          FROM OFFLINE_SALE a
         WHERE 1=1
        ) x
 WHERE x.SALES_DATE >= to_date('20220301', 'yyyymmdd')
   AND x.SALES_DATE < to_date('20220401', 'yyyymmdd')
ORDER BY
       1 asc
     , 2 asc
     , 3 asc