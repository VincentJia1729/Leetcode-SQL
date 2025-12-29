-- Write your PostgreSQL query statement below
-- Find employees who got a bonus less than 1000 or no bonus
SELECT e.name, b.bonus
FROM Employee AS e
LEFT JOIN Bonus AS b
ON e.empId = b.empId
WHERE b.bonus IS NULL OR b.bonus < 1000;
