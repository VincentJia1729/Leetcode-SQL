-- Write your PostgreSQL query statement below
-- prefix name can contain letters (upper and lower case), digits, '_', ".", and '-'
-- profix must start with a letter
-- the domain must be '@leetcode.com'

SELECT user_id, name, mail
FROM Users
WHERE mail ~ '^[A-Za-z][A-Za-z0-9_.-]*@leetcode\.com$';