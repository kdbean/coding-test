select a.dept_id
     , a.dept_name_en
     , round(avg(b.sal),0) as avg_sal
 from  HR_DEPARTMENT a
 inner join HR_EMPLOYEES b on a.dept_id = b.dept_id
group by 
       a.dept_id
     , a.dept_name_en
order by
       3 desc