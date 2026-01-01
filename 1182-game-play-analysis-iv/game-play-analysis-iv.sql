-- Write your PostgreSQL query statement below
-- find the percentage of players who logged on the day immediately following their initial login (2 days in a row)


-- We use 2 common table expressions (CTE's) to digest the problem in smaller pieces
WITH First_logins AS (
    SELECT 
        a.player_id, MIN(A.event_date) AS first_login
    FROM Activity as a
    GROUP BY a.player_id

), 
Consecutive_logins AS (
    SELECT (a.player_id) AS num_logins
    FROM First_logins as f
    INNER JOIN Activity as a 
    ON (f.player_id = a.player_id)
        AND a.event_date = f.first_login + INTERVAL '1 day'
)
SELECT 
ROUND(
    ((SELECT COUNT(c.num_logins) FROM Consecutive_logins as c)::numeric / 
    (SELECT COUNT(f.player_id) FROM first_logins as f) ),
    2
) as fraction;

