-- Write your PostgreSQL query statement below
SELECT name
FROM Employee AS e
JOIN 
    (SELECT ManagerId
    FROM Employee
    GROUP BY  ManagerId
    HAVING COUNT(ManagerId) >= 5) AS m
ON e.Id = m.ManagerId;
