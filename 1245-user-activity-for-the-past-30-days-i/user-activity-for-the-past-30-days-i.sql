-- Write your PostgreSQL query statement below
-- We include 2019-07-27. Date format is YYYY-MM-DD
-- We will look at the day and find the number of active users per day
SELECT activity_date as day,
    COUNT(DISTINCT user_id) AS active_users 
FROM Activity as a
WHERE activity_date BETWEEN DATE '2019-06-28' AND DATE '2019-07-27' 
GROUP BY activity_date;