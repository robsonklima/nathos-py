select 		projects.project_id, projects.name, 				
				(select count(1) from recommendations_get_all where requirement_a_id in 
					(select requirement_id from requirements r where r.project_id = projects.project_id)) recommendations_count,
				count(distinct(requirements.requirement_id)) requirements_count
from 		projects
inner join requirements on requirements.project_id = projects.project_id
group by	projects.project_id
order by 	recommendations_count desc, requirements_count desc;