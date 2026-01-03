-- Write your PostgreSQL query statement below
WITH sold_units AS (
    SELECT product_id,
        SUM(unit) AS total_units
    FROM Orders
    WHERE EXTRACT(MONTH FROM order_date) = 2 AND EXTRACT(YEAR FROM order_date) = 2020
    GROUP BY product_id 
)
SELECT products.product_name, sold_units.total_units as unit
FROM Products
INNER JOIN sold_units 
ON products.product_id = sold_units.product_id
WHERE sold_units.total_units >= 100