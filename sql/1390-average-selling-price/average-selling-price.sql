-- # Write your MySQL query statement below

-- SELECT p.product_id, 
-- SUM(u.units*(SELECT price FROM prices WHERE u.purchasedate BETWEEN start_date AND end_date))/SUM(SELECT units FROM unitssold WHERE product_id = p.product_id) 
-- FROM prices p
-- LEFT JOIN unitssold u
-- GROUP BY product_id;

SELECT p.product_id, IFNULL(ROUND(SUM(u.units*p.price)/SUM(units),2),0) AS average_price FROM prices p LEFT JOIN unitssold u ON p.product_id = u.product_id AND (u.purchase_date BETWEEN p.start_date and p.end_date) GROUP BY product_id;