-- 1.) How many payment transactions were greater than $5.00?
SELECT COUNT(*) 
FROM payment
WHERE amount >= 5;
-- ANS: There are 3,618 payments transaction that are greater than $5.


-- 2.) How many actors have a firest name that starts with the letter p?
SELECT COUNT(*)
FROM actor
WHERE LOWER(first_name) LIKE 'p%';
-- ANS: There are 5 actors whose first names starts with the letter P


-- 3.) How many unique districts are our customers from?
SELECT COUNT(DISTINCT district)
FROM address;
-- ANS: Our customers come from 378 unique districts


-- 4.) Retrieve the list of names for those distinct districts from the previous question
SELECT DISTINCT district
FROM address;
-- ANS: Refer to above code 


-- 5.) How many films have the word Truman somewhere in the title?
SELECT COUNT(*)
FROM film
WHERE LOWER(title) LIKE '%truman%';
-- ANS: There are 5 films that have word Truman in the title

-- 6.) Create a table to organize our potential leads!
CREATE TABLE potential_leads(
lead_id INT PRIMARY KEY,
first_name VARCHAR(255) NOT NULL,
last_name VARCHAR (255) NOT NUll,
email VARCHAR(255) UNIQUE NOT NULL,
sign_up_date DATE NOT NULL,
minutes_spent INT
);


SELECT * 
FROM potential_leads;
-- ANS: Refer to code above


-- 7.) What customer has the highest customer ID number whose name starts with an 'E' and has an address ID lower than 500?
SELECT *
FROM customer
WHERE first_name LIKE 'E%' AND address_id < 500
ORDER BY customer_id DESC
LIMIT 1;
-- ANS:) The customer whose name starts with E and has an address ID lower than 500 is Eddie, his address ID is 434


-- 8.) Return the customer IDs of customers who have spent at least $110 with the staff member who has an ID of 2.
SELECT customer_id 
FROM payment
WHERE staff_id = 2
GROUP BY customer_id
HAVING SUM(amount) >= 110;
-- ANS:) The customer ids  who have spent more at least $110 are ids'd 187 and 148

-- 9.) How many films have a rating of R and a replacement cost between $5 and $15?
SELECT COUNT(*)
FROM film
WHERE rating = 'R' AND replacement_cost BETWEEN 5 AND 15
--ANS:) There are 52 films that have a rating of R and cost between $5 and 1515


-- 10.) What is the maximum payment transaction done by the customers?
SELECT MAX(amount)
FROM payment;
-- ANS:)
