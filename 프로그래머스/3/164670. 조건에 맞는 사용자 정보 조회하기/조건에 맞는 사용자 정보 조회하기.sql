SELECT b.USER_ID
     , b.NICKNAME
     , b.CITY || ' ' || b.STREET_ADDRESS1 || ' ' || b.STREET_ADDRESS2 as "전체주소"     
     , substr(b.TLNO,0,3) || '-' || substr(b.TLNO,4,4) || '-' || substr(b.TLNO,8,4)  as "전화번호"
  FROM USED_GOODS_USER b
 WHERE 1=1
   AND b.USER_ID in (select WRITER_ID
                       from USED_GOODS_BOARD 
                      where 1=1
                     group by 
                            WRITER_ID
                     having 
                            count(1) >= 3 )
ORDER BY
       1 desc