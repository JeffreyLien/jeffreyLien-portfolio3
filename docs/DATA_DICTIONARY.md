# Data Dictionary

## dim_student
| Field | Description |
|---|---|
| student_id | Synthetic unique student identifier |
| age_band | Age category |
| gender | Self-reported category / not reported |
| state | State abbreviation |
| first_generation | 1 if first-generation indicator |
| transfer_student | 1 if transfer indicator |
| program | Standardized academic program |
| degree_level | Bachelor's or Master's |
| start_term | Entry cohort term |

## fact_enrollment
| Field | Description |
|---|---|
| student_id | Student identifier |
| term_id | Academic term |
| course_id | Course identifier |
| credits_attempted | Registered credits |
| credits_completed | Earned credits |
| final_grade | A/B/C/D/F/W |
| withdrawal_flag | 1 if withdrawn |

## mart_student_term
Aggregated student-term analytical mart.

Derived fields include:
- completion_rate
- enrolled_next_term
- eligible_for_next_term
- risk_score
- risk_tier
