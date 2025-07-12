SELECT '/home/grep/src/' || b.BOARD_ID || '/' || b.FILE_ID || b.FILE_NAME || b.FILE_EXT as FILE_PATH
  FROM USED_GOODS_BOARD a
     , USED_GOODS_FILE b
 WHERE 1=1
   AND a.BOARD_ID = b.BOARD_ID
   AND a.VIEWS = (select max(VIEWS)
                    from USED_GOODS_BOARD
                 )
  ORDER BY
       b.FILE_ID desc