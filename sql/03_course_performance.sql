WITH course_kpis AS (
    SELECT
        e.course_id,
        COUNT(*) AS enrollments,
        SUM(CASE WHEN e.withdrawal_flag = 1 THEN 1 ELSE 0 END) AS withdrawals,
        SUM(CASE WHEN e.final_grade IN ('D','F') THEN 1 ELSE 0 END) AS failed_enrollments
    FROM fact_enrollment e
    GROUP BY e.course_id
)
SELECT
    course_id,
    enrollments,
    ROUND(1.0 * withdrawals / enrollments, 4) AS withdrawal_rate,
    ROUND(1.0 * failed_enrollments / enrollments, 4) AS failure_rate
FROM course_kpis
WHERE enrollments >= 1000
ORDER BY withdrawal_rate DESC, enrollments DESC;
