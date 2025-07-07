SELECT a.MEMBER_ID
     , a.MEMBER_NAME
     , a.GENDER
     , to_char(a.DATE_OF_BIRTH, 'yyyy-mm-dd') as DATE_OF_BIRTH
  FROM MEMBER_PROFILE a
 WHERE 1=1
   AND to_char(a.DATE_OF_BIRTH, 'MM') = '03'
   AND upper(a.GENDER) = 'W'
   AND a.TLNO is not null
ORDER BY
       1