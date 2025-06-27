# Write your MySQL query statement below

SELECT e2.name AS name
FROM employee e1 
JOIN employee e2 ON e1.managerid = e2.id 
GROUP BY e2.name, e2.id
HAVING COUNT(*) >= 5;