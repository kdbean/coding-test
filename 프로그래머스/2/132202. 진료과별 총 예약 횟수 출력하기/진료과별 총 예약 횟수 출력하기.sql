SELECT a.MCDP_CD as "진료과코드"
     , count(1) as "5월예약건수"
  FROM APPOINTMENT a
 WHERE a.APNT_YMD >= to_date('20220501', 'yyyymmdd')
   and a.APNT_YMD <  to_date('20220601', 'yyyymmdd')
GROUP BY
       a.MCDP_CD
ORDER BY
       2
     , 1