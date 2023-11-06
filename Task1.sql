SELECT
    c.customer_ID,
    c.name AS customer_name,
    COUNT(o.order_ID) AS total_orders
FROM Customers c
LEFT JOIN Orders o ON c.customer_ID = o.customer_ID
GROUP BY c.customer_ID, c.name
ORDER BY total_orders DESC;
