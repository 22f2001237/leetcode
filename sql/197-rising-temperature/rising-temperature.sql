# Write your MySQL query statement below
# Write your MySQL query statement below

SELECT DISTINCT today.id FROM weather yesterday CROSS JOIN weather today WHERE 
today.temperature > yesterday.temperature AND DATEDIFF(today.recordDate, yesterday.recordDate) = 1;