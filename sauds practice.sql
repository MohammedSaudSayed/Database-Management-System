use sakila;

SELECT first_name, last_name FROM actor;

SELECT UPPER(CONCAT(first_name, ' ', last_name)) AS 'Actor Name' FROM actor;

SELECT s.first_name, s.last_name, a.address FROM staff s INNER JOIN address a ON (s.address_id = a.address_id);

SELECT s.first_name, s.last_name, SUM(p.amount) FROM staff s INNER JOIN payment p ON (s.staff_id = p.staff_id) WHERE MONTH(p.payment_date) = 08 AND YEAR(p.payment_date) = 2005 GROUP BY s.staff_id;

SELECT c.last_name, c.first_name, SUM(p.amount) AS 'Total Amount Paid' FROM customer c INNER JOIN payment p ON (c.customer_id = p.customer_id) GROUP BY c.last_name ORDER BY c.last_name;

SELECT title FROM film WHERE title LIKE 'K%' OR title LIKE 'Q%' AND language_id IN (SELECT language_id FROM language WHERE name = 'English' );

