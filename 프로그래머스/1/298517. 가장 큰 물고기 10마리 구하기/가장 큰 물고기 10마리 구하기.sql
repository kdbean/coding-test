select x.id
     , x.length
  from (  
        select id
             , length
             , rank() over(order by length desc) as rank_length
          from fish_info
         where length is not null
       ) x
 where 1=1
   and x.rank_length <= 10
