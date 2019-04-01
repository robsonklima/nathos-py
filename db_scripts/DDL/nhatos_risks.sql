SELECT 
    projects.name, COUNT(DISTINCT risks.risk_id) risks_count
FROM
    projects
        LEFT JOIN
    risks ON projects.project_id = risks.project_id
GROUP BY projects.project_id
ORDER BY risks_count DESC;