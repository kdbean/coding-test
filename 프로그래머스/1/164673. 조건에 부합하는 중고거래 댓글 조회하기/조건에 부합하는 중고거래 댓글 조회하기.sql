SELECT a.TITLE
     , a.BOARD_ID
     , b.REPLY_ID
     , b.WRITER_ID
     , b.CONTENTS
     , to_char(b.CREATED_DATE, 'yyyy-mm-dd') as CREATED_DATE
  FROM USED_GOODS_BOARD a
     , USED_GOODS_REPLY b
 WHERE 1=1
   AND a.BOARD_ID = b.BOARD_ID
   AND a.CREATED_DATE between to_date('20221001', 'yyyymmdd') and to_date('20221031', 'yyyymmdd') + 0.99999
ORDER BY
       CREATED_DATE
     , 1