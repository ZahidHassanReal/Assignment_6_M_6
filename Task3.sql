SELECT
    c.name AS category_name,
    SUM(oi.quantity * oi.unit_price) AS total_revenue
FROM Categories c
LEFT JOIN Products p ON c.category_ID = p.category_ID
LEFT JOIN Order_Items oi ON p.product_ID = oi.product_ID
GROUP BY c.name
ORDER BY total_revenue DESC;