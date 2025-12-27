-- Write your PostgreSQL query statement below
SELECT i.unique_id, e.name
FROM Employees AS e
LEFT JOIN EmployeeUNI AS i
ON e.id = i.id

