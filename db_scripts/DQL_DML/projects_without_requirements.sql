select 		* 
from 		(
					select 			p.project_id, p.name, count(distinct(r.requirement_id)) count
					from 			projects p
					left join			requirements r on p.project_id = r.project_id
					#where			count(distinct(r.requirement_id)) = 0
					group by 		p.project_id
				) data
where 		count = 0;