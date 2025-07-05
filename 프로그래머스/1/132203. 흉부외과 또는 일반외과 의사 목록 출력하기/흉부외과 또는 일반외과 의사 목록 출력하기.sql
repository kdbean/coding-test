SELECT a.DR_NAME
     , a.DR_ID
     , a.MCDP_CD
     , to_char(a.HIRE_YMD, 'yyyy-mm-dd') as HIRE_YMD
  FROM DOCTOR a
 WHERE a.MCDP_CD in ('CS', 'GS')
ORDER BY
       a.HIRE_YMD desc
     , a.DR_NAME asc
