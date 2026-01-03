-- Write your PostgreSQL query statement below
-- Write the sum of all total investment values in 2016 for policy holders who
-- have the same tiv_2015 value as one or more other policy holders
-- and are located in a different city than other policyholders

SELECT ROUND(SUM(i.tiv_2016)::numeric, 2) AS tiv_2016
FROM Insurance i
JOIN (
    SELECT tiv_2015
    FROM Insurance
    GROUP BY tiv_2015
    HAVING COUNT(*) > 1
) t1
  ON i.tiv_2015 = t1.tiv_2015
JOIN (
    SELECT lat, lon
    FROM Insurance
    GROUP BY lat, lon
    HAVING COUNT(*) = 1
) t2
  ON i.lat = t2.lat AND i.lon = t2.lon;
