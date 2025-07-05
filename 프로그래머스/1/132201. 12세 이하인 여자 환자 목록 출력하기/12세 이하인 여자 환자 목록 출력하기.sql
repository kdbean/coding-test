SELECT a.PT_NAME
     , a.PT_NO
     , a.GEND_CD
     , a.AGE
     , nvl(a.TLNO, 'NONE') AS TLNO
  FROM PATIENT a
 WHERE 1=1
   AND a.AGE <= 12
   and a.GEND_CD = 'W'
ORDER BY 
       a.AGE desc
     , a.PT_NAME
        