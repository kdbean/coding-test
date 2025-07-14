SELECT b.product_id
     , a.product_name
     , sum(a.price * b.amount) as TOTAL_SALES
  from food_product a
     , food_order b
 where 1=1
   and b.product_id = a.product_id
   and b.produce_date >= to_date('202205', 'yyyymm') 
   and b.produce_date < to_date('202206', 'yyyymm')
group by
       b.product_id
     , a.product_name
order by
       3 desc
     , 1 asc