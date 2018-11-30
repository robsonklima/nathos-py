SELECT 			t.distance, SUBSTRING(t.sentence_a, 1, 200) sentence_a, SUBSTRING(t.sentence_b, 1, 300) sentence_b
FROM 			tmp t
INNER JOIN	requirements r ON r.description = t.sentence_a
INNER JOIN	projects p ON p.project_id = r.project_id
WHERE 			(SELECT project_id FROM requirements WHERE description = t.sentence_a LIMIT 1) <>
						(SELECT project_id FROM requirements WHERE description = t.sentence_b LIMIT 1)
ORDER BY 	distance ASC;

select count(*) from tmp;