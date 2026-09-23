-- Educational SQL Data Model for QA Practice

-- 1. Create Tables
CREATE TABLE users (
    user_id INT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(255)
);

CREATE TABLE bookings (
    bookings_id INT PRIMARY KEY,
    user_id INT REFERENCES users(user_id),
    room_name VARCHAR(100),
    total_price INT,
    status VARCHAR(100)
);

CREATE TABLE payments (
    payments_id INT PRIMARY KEY,
    bookings_id INT REFERENCES bookings(bookings_id),
    amount INT,
    payment_status VARCHAR(100)
);

-- 2. Insert Test Data
INSERT INTO users (user_id, first_name, last_name, email) VALUES
(1, 'John', 'Rod', 'johnrod1954@gmail.com'),
(2, 'Natalia', 'Sneek', 'Sneektonut32@gmail.com'),
(3, 'Leo', 'Rour', 'lionpuss123@gmail.com');

INSERT INTO bookings (bookings_id, user_id, room_name, total_price, status) VALUES
(334, 1, 'Rose', 1800, 'Occupied'),
(564, 2, 'Tulip', 3300, 'Vacant'),
(781, 3, 'Daisy', 2500, 'Occupied');

INSERT INTO payments (payments_id, bookings_id, amount, payment_status) VALUES
(31, 334, 55, 'paid'),
(32, 564, 100, 'unpaid'),
(33, 781, 34, 'paid');
