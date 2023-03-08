-- Section1
SELECT id AS order_id
FROM orders
WHERE status = 'warehouse'
ORDER BY id DESC;
-- Section2
SELECT id AS customer_id, name as customer_name FROM customers
WHERE id not in
(SELECT customer_id from orders)
ORDER BY name Asc;
-- Section3
SELECT
 created_at AS date,
 format((SUM( IF ( orders.status = 'canceled', 1, 0 ) ) / COUNT(orders.id)) * 100, 2) AS cancellation_rate
FROM 
 orders
 INNER JOIN customers ON orders.customer_id = customers.id 
WHERE
 customers.is_blocked = 0 
 OR customers.is_blocked IS NULL 
GROUP BY
 created_at;
