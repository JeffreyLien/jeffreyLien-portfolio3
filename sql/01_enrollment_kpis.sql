SELECT
    t.academic_year,
    COUNT(DISTINCT e.student_id) AS unique_students,
    SUM(e.credits_attempted) AS attempted_credits,
    SUM(e.credits_completed) AS completed_credits,
    ROUND(1.0 * SUM(e.credits_completed) / NULLIF(SUM(e.credits_attempted),0), 4) AS credit_completion_rate,
    SUM(CASE WHEN e.withdrawal_flag = 1 THEN 1 ELSE 0 END) AS withdrawals
FROM fact_enrollment e
JOIN dim_term t ON e.term_id = t.term_id
GROUP BY t.academic_year
ORDER BY t.academic_year;
