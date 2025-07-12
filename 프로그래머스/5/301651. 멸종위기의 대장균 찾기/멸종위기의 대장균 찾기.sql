with recursive ECOLI_GENERATIONS as
(
 select ID
      , PARENT_ID
      , 1 as GENERATION
   from ECOLI_DATA
  where PARENT_ID is null

 union all
 
  select e.ID
       , e.PARENT_ID
       , eg.GENERATION + 1 as GENERATION
    from ECOLI_DATA e
    inner join ECOLI_GENERATIONS eg on e.PARENT_ID = eg.ID
) 
SELECT count(1) as COUNT
     , GENERATION
  FROM 
       ECOLI_GENERATIONS
 WHERE ID not in ( select distinct parent_id 
                     from ECOLI_GENERATIONS 
                    where parent_id is not null
                 )
GROUP BY
       GENERATION