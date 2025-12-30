-- Write your PostgreSQL query statement below
SELECT project_id, 
    ROUND(AVG(e.experience_years)::numeric,2) as average_years
FROM Project as p
JOIN Employee as e
ON p.employee_id = e.employee_id
GROUP BY project_id