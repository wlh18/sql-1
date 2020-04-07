-- CREATE TABLE tanks (
--   id serial primary key,
--   model TEXT,
--   country varchar(100),
--   weight INT
--  );

-- INSERT INTO tanks
-- (model, country, weight)
-- VALUES
-- ('oxygen', 'SK', 50),
-- ('fish', 'CA', 120);

-- SELECT * FROM tanks;

-- SELECT model, weight FROM tanks;

-- INSERT INTO tanks
-- (model, country, weight)
-- VALUES
-- ('toilet', 'SK', 25),
-- ('m1 abrahms', 'CA', 140),
-- ('septic', 'US', 11);

-- SELECT * FROM tanks
-- WHERE country = 'SK';

-- SELECT * FROM tanks 
-- WHERE weight < 100;

-- SELECT * FROM tanks 
-- WHERE weight < 100
-- AND country = 'SK';

-- SELECT * FROM tanks
-- WHERE country = 'SK'
-- OR country = 'US';

-- INSERT INTO tanks 
-- (model, weight)
-- VALUES
-- ('helium', 75);

-- SELECT * FROM tanks
-- WHERE country IS NULL;

-- SELECT * FROM tanks
-- WHERE country IS NOT NULL;

-- SELECT * FROM tanks
-- WHERE country IN ('US', 'SK', 'RU');

-- SELECT * FROM tanks
-- WHERE country NOT IN ('US', 'SK');

-- SELECT COUNT(*) AS sk_tanks FROM tanks
-- WHERE country = 'SK';

-- SELECT model AS thingamabob FROM tanks;

-- SELECT AVG(weight) AS average_weight from tanks
-- WHERE country = 'SK';

-- SELECT MAX(weight) AS heaviest_tank from tanks;

-- SELECT MIN(weight) AS lightest_tank FROM tanks;

-- SELECT SUM(weight) as all_weights FROM tanks;

-- UPDATE tanks
-- SET weight = 10
-- WHERE id = 5;

-- SELECT * FROM tanks
-- WHERE id = 5;

-- UPDATE tanks
-- SET country = 'N/A'
-- WHERE country IS NULL;

-- SELECT * FROM tanks;

-- DELETE FROM tanks;

-- DELETE FROM tanks
-- WHERE country = 'US';

-- SELECT * FROM tanks;

-- DROP TABLE tanks;
