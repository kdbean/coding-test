SELECT distinct a.CAR_ID
  FROM CAR_RENTAL_COMPANY_CAR a
     , CAR_RENTAL_COMPANY_RENTAL_HISTORY b     
 WHERE 1=1
   AND a.CAR_ID = b.CAR_ID
   and a.CAR_TYPE = '세단'
   and b.START_DATE >= to_date('20221001', 'yyyymmdd')
   and b.START_DATE < to_date('20221101', 'yyyymmdd')
order by
       1 desc