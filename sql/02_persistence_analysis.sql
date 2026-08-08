SELECT
    academic_year,
    program,
    COUNT(*) AS persistence_eligible_student_terms,
    ROUND(AVG(enrolled_next_term), 4) AS next_term_persistence_rate
FROM mart_student_term
WHERE eligible_for_next_term = 1
GROUP BY academic_year, program
ORDER BY academic_year, next_term_persistence_rate;
