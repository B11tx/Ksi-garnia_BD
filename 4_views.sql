
1.
CREATE VIEW order_summary AS
SELECT o.order_id,
       c.first_name || ' ' || c.last_name AS customer_name,
       o.order_date,
       SUM(oi.quantity * oi.price_each) AS total_amount
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY o.order_id, c.first_name, c.last_name, o.order_date;


Podgląd widoku

SELECT * FROM order_summary ORDER BY order_date DESC;



2.
CREATE VIEW book_availability_summary AS
SELECT 
    b.book_id,
    b.title,
    b.isbn,
    SUM(bi.quantity) AS total_available,
    CASE 
        WHEN SUM(bi.quantity) > 0 THEN true
        ELSE false
    END AS available_in_any_library
FROM books b
LEFT JOIN library_inventory bi ON b.book_id = bi.book_id
GROUP BY b.book_id, b.title, b.isbn;

Dostępnosc  książek w bibliotekach


3.
CREATE VIEW customer_order_history AS
SELECT
    c.customer_id,
    c.first_name || ' ' || c.last_name AS full_name,
    COUNT(o.order_id) AS total_orders,
    SUM(oi.quantity * oi.price_each) AS total_spent
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
LEFT JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY c.customer_id, c.first_name, c.last_name;

Lista klientów wraz z ich zamówieniami i sumą zamówień


4.
SELECT o.order_id, o.order_date, c.first_name, c.last_name,
       b.title, oi.quantity, oi.price_each
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN books b ON oi.book_id = b.book_id
ORDER BY o.order_date DESC;

Wszystkie zamówienia z ich pozycjami i klientem


5.
SELECT DISTINCT c.first_name, c.last_name, b.title
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN books b ON oi.book_id = b.book_id
WHERE b.title ILIKE '%bogaty ojciec%';

Wyszukiwanie klientów, którzy kupili daną książkę


