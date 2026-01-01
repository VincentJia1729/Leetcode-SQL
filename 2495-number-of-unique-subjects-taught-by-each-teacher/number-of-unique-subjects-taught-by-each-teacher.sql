-- Write your PostgreSQL query statement below
-- This is a poorly written question
-- It seems that (subject_id, dept_id) implies each department teaches a different subject
-- Like, only the Math Department should teach Linear Algebra. This is actually not the case
SELECT teacher_id, COUNT(DISTINCT subject_id) as cnt
FROM Teacher
GROUP BY teacher_id;