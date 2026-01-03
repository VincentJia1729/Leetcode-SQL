-- Write your PostgreSQL query statement below
-- Return the second highest distinct salary
-- Return null if there is no second highest salary

SELECT
(
    SELECT DISTINCT Salary
    FROM Employee
    ORDER BY Salary DESC
    LIMIT 1
    OFFSET 1
) as SecondHighestSalary