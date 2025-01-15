---1.
SELECT
    employee_id,
    sale_amount,
    SUM(sale_amount) OVER (PARTITION BY employee_id ORDER BY id) AS running_total
FROM sales;
--1.PARTITION BY = like group by, divides rows by some column in the table

--2.
-- Query specific keys in the JSON
SELECT
    details->>'name' AS product_name,
    details->'features'->>'RAM' AS ram
FROM products;
--2. return the value inside an object in given key , equal to details['name']

--3.
-- Use arrays to store multiple values in a single column
CREATE TABLE array_example (
    id SERIAL PRIMARY KEY,
    numbers INT[]
);

-- create new table name array_example, with id autoincrease as apramary key,
-- and a column name numbers from type list of int numbers
INSERT INTO array_example (numbers)
VALUES
    ('{1, 2, 3}'),
    ('{4, 5, 6}');
-- insert into array_example into numbers column the list [1,2,3] and list [4,5,6]

SELECT numbers[1] AS first_element FROM array_example;
-- returns from each row the first item in the list from the column numbers
SELECT * FROM array_example WHERE 3 = ANY(numbers);
-- returns only the rows that contains the number 3 in the column numbers
--4.
CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    price NUMERIC,
    tax NUMERIC GENERATED ALWAYS AS (price * 0.2) STORED
);
--GENERATED ALWAYS= a definition when creating a column in a table, which
-- create the value automatically according to other columns and it's ready only

