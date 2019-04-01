SELECT 
    COUNT(*) / (SELECT 
            COUNT(*)
        FROM
            requirements) * 100 CompletedPercent
FROM
    requirements
WHERE
    requirement_id < (SELECT 
            MAX(r.requirement_id)
        FROM
            recommendations
                INNER JOIN
            requirements r ON r.description = recommendations.sentence_a);