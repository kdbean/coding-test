SELECT a.APNT_NO
     , b.PT_NAME
     , a.PT_NO
     , a.MCDP_CD
     , c.DR_NAME
     , a.APNT_YMD
  FROM APPOINTMENT a
  INNER JOIN PATIENT b on a.PT_NO = b.PT_NO
  INNER JOIN DOCTOR c ON a.MDDR_ID = c.DR_ID
 WHERE 1=1
   AND to_char(a.APNT_YMD, 'yyyymmdd') = '20220413'
   AND APNT_CNCL_YN = 'N'
   AND a.MCDP_CD = 'CS'
ORDER BY
       a.APNT_YMD 