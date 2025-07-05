SELECT substr(a.PRODUCT_CODE, 1,2) as CATEGORY 
     , count(1)
  FROM PRODUCT a
 WHERE 1=1
GROUP BY 
       substr(a.PRODUCT_CODE, 1,2)
ORDER BY 
       1