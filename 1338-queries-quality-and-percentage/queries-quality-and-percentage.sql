-- Write your PostgreSQL query statement below
SELECT query_name, 
    ROUND(AVG(rating::numeric / position),2) as quality,
    ROUND(COUNT(*) FILTER (WHERE rating < 3)::numeric/ COUNT(rating)*100,2)  as poor_query_percentage
FROM Queries 
GROUP BY query_name