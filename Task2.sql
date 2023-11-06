SELECT
    oi.order_ID,
    p.name AS product_name,
    oi.quantity,
    oi.quantity * oi.unit_price AS total_amount
FROM Order_Items oi
INNER JOIN Products p ON oi.product_ID = p.product_ID
ORDER BY oi.order_id ASC;