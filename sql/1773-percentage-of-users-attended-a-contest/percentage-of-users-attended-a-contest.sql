# Write your MySQL query statement below

SELECT r.contest_id, ROUND(((COUNT(r.user_id))/(SELECT COUNT(DISTINCT user_id) FROM users))*100,2) AS percentage
FROM register r 
LEFT JOIN users u ON r.user_id = u.user_id
GROUP BY r.contest_id
ORDER BY percentage DESC, contest_id ASC;