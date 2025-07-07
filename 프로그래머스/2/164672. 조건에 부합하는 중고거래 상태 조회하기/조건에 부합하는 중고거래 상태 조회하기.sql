SELECT a.BOARD_ID
     , a.WRITER_ID
     , a.TITLE
     , a.PRICE
     , decode(a.STATUS, 'SALE', '판매중', 'RESERVED', '예약중', 'DONE', '거래완료') as STATUS
  FROM USED_GOODS_BOARD a
 WHERE 1=1
   AND trunc(CREATED_DATE) = to_date('20221005', 'yyyymmdd')
ORDER BY
       1 desc