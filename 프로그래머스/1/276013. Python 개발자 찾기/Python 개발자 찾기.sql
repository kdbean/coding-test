select id
     , email
     , first_name
     , last_name
  from developer_infos
 where 1=1 
   /*and skill_1 = 'Python' or skill_2 = 'Python' or skill_3 = 'Python'*/
   and upper('Python') in (upper(skill_1), upper(skill_2), upper(skill_3))
order by
       1 asc