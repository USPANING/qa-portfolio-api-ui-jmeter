-- Educational SQL Queries for QA Practice

-- 1. Basic Selection, Filtering, and Sorting (SELECT, WHERE, ORDER BY)
SELECT room_name, total_price, status 
FROM bookings 
WHERE status = 'Occupied' 
ORDER BY total_price DESC;

-- 2. Aggregation and Grouping (COUNT, GROUP BY)
SELECT status, COUNT(*) AS bookings_count
FROM bookings
GROUP BY status;

-- 3. Joining Multiple Tables (INNER JOIN)
SELECT 
    u.first_name,
    u.last_name,
    b.room_name,
    b.total_price,
    p.payment_status
FROM bookings AS b 
INNER JOIN users AS u ON b.user_id = u.user_id
INNER JOIN payments AS p ON b.bookings_id = p.bookings_id;

-- 4. Left Outer Join (LEFT JOIN)
SELECT 
    b.bookings_id,
    b.room_name,
    p.amount
FROM bookings AS b
LEFT JOIN payments AS p ON b.bookings_id = p.bookings_id;

-- 5. Data Modification and Verification (UPDATE + SELECT)
UPDATE payments
SET payment_status = 'paid'
WHERE payments_id = 32;

-- Verification query
SELECT * FROM payments WHERE payments_id = 32;

-- 6. Data Deletion and Verification (DELETE + SELECT)
DELETE FROM payments
WHERE payments_id = 33;

-- Verification query
SELECT * FROM payments WHERE payments_id = 33;
