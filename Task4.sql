SELECT
    c.name AS customer_name,
    SUM(oi.quantity * oi.unit_price) AS total_purchase_amount
FROM Customers c
LEFT JOIN Orders o ON c.customer_ID = o.customer_ID
LEFT JOIN Order_Items oi ON o.order_ID = oi.order_ID
GROUP BY c.name
ORDER BY total_purchase_amount DESC
LIMIT 5;
