-- SELECT * FROM artist;

-- SELECT first_name, last_name, country FROM employee;

-- SELECT name, composer, milliseconds FROM track
-- WHERE milliseconds > 299000;

-- SELECT COUNT(*) FROM track
-- WHERE milliseconds > 299000;

-- SELECT AVG(milliseconds) FROM track;

-- SELECT COUNT(*) FROM invoice
-- WHERE billing_country = 'USA';

-- SELECT * FROM customer 
-- WHERE first_name = 'Bob'

-- SELECT * FROM customer
-- WHERE first_name LIKE 'A%';

-- SELECT * FROM track
-- ORDER BY milliseconds DESC
-- LIMIT 10;

-- SELECT * FROM track
-- ORDER BY milliseconds ASC
-- LIMIT 20;

-- SELECT * FROM customer
-- WHERE state IN ('AZ', 'CA', 'UT', 'FL')

-- INSERT INTO artist (name) 
-- VALUES ('SCATT');

-- SELECT * FROM artist
-- WHERE name = 'SCATT'

-- INSERT INTO customer
-- (state, country, postal_code, email, first_name, last_name, city)
-- VALUES ('UT', 'USA', 84020, 'andrew@devmounta.in', 
-- 'Andrew', 'Westenskow', 'Draper');

-- SELECT * FROM customer
-- WHERE postal_code = '84020'

-- SELECT * FROM playlist
-- WHERE name LIKE 'Classical%'
