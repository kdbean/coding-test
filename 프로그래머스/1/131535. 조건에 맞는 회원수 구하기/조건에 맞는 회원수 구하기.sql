SELECT count(1)
  FROM USER_INFO a
 WHERE 1=1
   and a.JOINED between to_date('20210101', 'yyyymmdd') and to_date('20211231', 'yyyymmdd') + 0.99999
   and a.AGE between 20 and 29