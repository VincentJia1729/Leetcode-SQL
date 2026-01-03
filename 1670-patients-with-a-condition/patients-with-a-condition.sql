-- Write your PostgreSQL query statement below
SELECT *
FROM Patients
WHERE conditions ~* '\y(?<!\+)DIAB1';
