-- Write your PostgreSQL query statement below
-- Find two shortest line segments. Make sure they add up to be greater than the longest line segment
SELECT x,y,z,
CASE WHEN x + y > z AND x + z > y AND y + z > x THEN 'Yes' ELSE 'No' END as triangle
FROM Triangle