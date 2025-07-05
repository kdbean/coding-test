SELECT a.HISTORY_ID
     , a.CAR_ID
     , to_char(a.START_DATE, 'yyyy-mm-dd') as START_DATE
     , to_char(a.END_DATE, 'yyyy-mm-dd') as END_DATE   
     , case when trunc(a.END_DATE) - trunc(a.START_DATE) +1 >= 30 then '장기 대여'
            else '단기 대여'
        end as RENT_TYPE
  FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY a
 WHERE 1=1
   AND a.START_DATE >= to_date('20220901', 'yyyymmdd')
   and a.START_DATE < to_date('20221001', 'yyyymmdd')
ORDER BY
       1 desc