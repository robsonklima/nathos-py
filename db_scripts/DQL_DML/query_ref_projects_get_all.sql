select 				p.*, 
						count(distinct(c.category_id)) categories_count,
						count(distinct(r.requirement_id)) requirements_count,
                        count(distinct(t.task_id)) tasks_count,
						(
							cast((select SUM(percentage_completed) from tasks t where requirement_id in (select requirement_id from requirements where project_id = p.project_id)) /
                            (count(distinct(t.task_id))) as decimal (10 , 1 ))
                        ) percentage_completed,
                        (select count(1) from recommendations_get_all rm where rm.project_a_id = p.project_id) recommendations_count
from					projects p
left join				categories c on p.project_id = c.project_id
left join				requirements r on p.project_id = r.project_id
left join				tasks t on r.requirement_id = t.requirement_id
where				p.project_id = 177
group by 			p.project_id;

#select * from recommendations_get_all where project_a_id = 177;