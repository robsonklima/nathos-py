SELECT 			reqA.requirement_id, 
                        projA.project_id,
						SUBSTRING(reqA.description, 1, 150) RequirementA, 
						reqB.requirement_id, 
                        projB.project_id,
						SUBSTRING(reqB.description, 1, 150) RequirementB, 
                        rec.distance
FROM 			recommendations rec
LEFT JOIN		requirements reqA ON reqA.description = rec.sentence_a
LEFT JOIN		requirements reqB ON reqB.description = rec.sentence_b
LEFT JOIN		projects projA ON reqA.project_id = projA.project_id
LEFT JOIN		projects projB ON reqB.project_id = projB.project_id
WHERE			(1=1)
AND				projA.project_id <> projB.project_id
#AND 				distance < 0.51
AND				reqA.requirement_id = 426
ORDER BY		distance ASC;