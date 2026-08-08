SELECT
    CASE
        WHEN advising_contacts = 0 THEN 'No contact'
        WHEN unresolved_contacts = 0 THEN 'Contact - resolved'
        ELSE 'Contact - unresolved'
    END AS support_status,
    COUNT(*) AS student_terms,
    ROUND(AVG(enrolled_next_term), 4) AS observed_next_term_persistence
FROM mart_student_term
WHERE eligible_for_next_term = 1
GROUP BY support_status
ORDER BY observed_next_term_persistence DESC;
