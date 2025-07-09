SELECT a.REST_ID
     , a.REST_NAME
     , a.FOOD_TYPE
     , a.FAVORITES
     , a.ADDRESS
     , round(avg(b.REVIEW_SCORE),2) as SCORE
  FROM REST_INFO a
  INNER JOIN REST_REVIEW b on a.REST_ID = b.REST_ID
 WHERE 1=1
   AND a.ADDRESS like '서울%'
GROUP BY   
       a.REST_ID
     , a.REST_NAME
     , a.FOOD_TYPE
     , a.FAVORITES
     , a.ADDRESS
ORDER BY
       SCORE desc
     , a.FAVORITES desc