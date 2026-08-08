SELECT
    t.term_id,
    s.degree_level,
    COUNT(DISTINCT e.student_id) AS enrolled_headcount,
    SUM(e.credits_attempted) AS attempted_credits,
    ROUND(SUM(e.credits_attempted) / 12.0, 2) AS calculated_fte
FROM fact_enrollment e
JOIN dim_student s ON e.student_id = s.student_id
JOIN dim_term t ON e.term_id = t.term_id
GROUP BY t.term_id, s.degree_level
ORDER BY t.term_id, s.degree_level;
