# Business Problem
--1 How many transactions were made using each payment method?
  SELECT 
	 payment_method,
	 COUNT(*)
FROM walmart
GROUP BY payment_method

--Q.2  Find different payment method and number of transactions, number of qty sold?

SELECT 
	 payment_method,
	 COUNT(*) as no_payments,
	 SUM(quantity) as no_qty_sold
FROM walmart
GROUP BY payment_method

-- Q. 3  Calculate the total quantity of items sold per payment method. List payment_method and total_quantity.
 
SELECT 
	 payment_method,
	 -- COUNT(*) as no_payments,
	 SUM(quantity) as no_qty_sold
FROM walmart
GROUP BY payment_method


-- Q.4 Determine the average, minimum, and maximum rating of category for each city, List the city, average_rating, min_rating, and max_rating.

SELECT 
	city,
	category,
	MIN(rating) as min_rating,
	MAX(rating) as max_rating,
	AVG(rating) as avg_rating
FROM walmart
GROUP BY 1, 2

-- Q5 
-- Calculate the total profit for each category by considering total_profit as
-- (unit_price * quantity * profit_margin). 
-- List category and total_profit, ordered from highest to lowest profit.

SELECT 
	category,
	SUM(total) as total_revenue,
	SUM(total * profit_margin) as profit
FROM walmart
GROUP BY 1



