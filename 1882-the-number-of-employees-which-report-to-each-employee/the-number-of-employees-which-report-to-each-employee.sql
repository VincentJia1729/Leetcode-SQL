-- Write your PostgreSQL query statement below
-- Find all the managers and the average age of the people who report to him
SELECT 
    mgr.employee_id,
    mgr.name,
    COUNT(emp.employee_id) AS reports_count,
    ROUND(AVG(emp.age)) AS average_age
FROM Employees as emp
    JOIN Employees as mgr 
    ON emp.reports_to = mgr.employee_id
GROUP BY mgr.employee_id, mgr.name
ORDER BY mgr.employee_id;