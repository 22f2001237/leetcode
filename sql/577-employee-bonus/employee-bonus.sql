# Write your MySQL query statement below



# Write your MySQL query statement below

SELECT e.name, b.bonus FROM employee e LEFT JOIN bonus b ON e.empId = b.empId WHERE bonus < 1000 OR bonus IS NULL;