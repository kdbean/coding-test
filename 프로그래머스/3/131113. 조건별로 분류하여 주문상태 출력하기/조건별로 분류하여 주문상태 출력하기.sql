SELECT a.ORDER_ID
     , a.PRODUCT_ID
     , to_char(a.OUT_DATE, 'yyyy-mm-dd') as OUT_DATE
     , case when trunc(a.OUT_DATE) <= to_date('20220501', 'yyyymmdd') then '출고완료' 
            when trunc(a.OUT_DATE) > to_date('20220501', 'yyyymmdd') then '출고대기'  
            else '출고미정' end as "출고여부"
  FROM FOOD_ORDER a     
ORDER BY
       1