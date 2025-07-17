select a.item_id
     , b.item_name
  from item_tree a 
  left outer join item_info b on b.item_id = a.item_id
 where 1=1
   and a.parent_item_id is null