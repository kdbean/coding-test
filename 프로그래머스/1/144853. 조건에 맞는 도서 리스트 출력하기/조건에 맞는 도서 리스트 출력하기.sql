SELECT a.BOOK_ID
     , to_char(a.PUBLISHED_DATE, 'yyyy-mm-dd') as PUBLISHED_DATE
  FROM BOOK a
 WHERE 1=1
   AND a.PUBLISHED_DATE >= to_date('20210101', 'yyyymmdd')
   AND a.PUBLISHED_DATE < to_date('20220101', 'yyyymmdd')
   AND a.CATEGORY = '인문'
ORDER BY
       a.PUBLISHED_DATE asc
     