-- Write your PostgreSQL query statement below
SELECT s.user_id, 
    round(avg(CASE WHEN c.action = 'confirmed' then 1 else 0 end ), 2) as confirmation_rate
FROM Signups as s
LEFT JOIN Confirmations as c
ON s.user_id = c.user_id
GROUP BY s.user_id