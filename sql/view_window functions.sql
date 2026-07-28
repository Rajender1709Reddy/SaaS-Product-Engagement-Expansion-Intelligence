USE product_adoption;
/* Total Revenue View*/
CREATE VIEW vw_total_revenue AS
SELECT SUM(final_amount_paid) AS Total_Revenue
FROM product_operations;

/* Total Customers*/
CREATE VIEW vw_total_customers AS
SELECT COUNT(*) AS Total_Customers
FROM customer_profile;

/* Toital Subscriptions*/
CREATE VIEW vw_total_subscriptions AS
SELECT COUNT(subscription_id) AS Total_Subscriptions
FROM product_operations;

/* Revenue by Plan Category*/
CREATE VIEW vw_plan_category_revenue AS
SELECT plan_category,
COUNT(*) AS Total_Subscriptions,
SUM(final_amount_paid) AS Revenue,
AVG(final_amount_paid) AS Avg_Revenue
FROM product_operations
GROUP BY plan_category;

/* Revenue by Payment Status*/
CREATE VIEW vw_payment_status AS
SELECT payment_status,
COUNT(*) AS Total_Subscriptions,
SUM(final_amount_paid) AS Revenue
FROM product_operations
GROUP BY payment_status;

/* Customer Segment Revenue */
CREATE VIEW vw_customer_segment_revenue AS
SELECT c.customer_segment,
COUNT(*) AS Total_Subscriptions,
SUM(p.final_amount_paid) AS Revenue
FROM customer_profile c
INNER JOIN product_operations p
ON c.customer_id=p.customer_id
GROUP BY c.customer_segment;

SELECT * FROM vw_total_revenue;
SELECT * FROM vw_total_customers;
SELECT * FROM vw_total_subscriptions;
SELECT * FROM vw_plan_category_revenue;
SELECT * FROM vw_payment_status;
SELECT * FROM vw_customer_segment_revenue;

/* window Function*/
/* Total Revenue*/
SELECT subscription_id, subscription_start_date, final_amount_paid,
SUM(final_amount_paid)
OVER(
ORDER BY subscription_start_date
) AS Running_Revenue 
FROM product_operations;

/* Total by Plan Category*/
SELECT plan_category, subscription_start_date, final_amount_paid,
SUM(final_amount_paid)
OVER(
PARTITION BY plan_category
ORDER BY subscription_start_date
) AS Running_Revenue
FROM product_operations;

/* RANK CUSTOMERS*/
SELECT customer_id, final_amount_paid,
RANK()
OVER(
ORDER BY final_amount_paid DESC
) AS Revenue_Rank
FROM product_operations;

/* ROW NUMBER*/
SELECT customer_id, subscription_start_date,
ROW_NUMBER()
OVER(
ORDER BY subscription_start_date
) AS Row_No
FROM product_operations;

/* LAG Function*/
SELECT subscription_id, subscription_start_date, final_amount_paid,
LAG(final_amount_paid)
OVER(
ORDER BY subscription_start_date
) AS Previous_Revenue
FROM product_operations;

/* LEAD Function*/
SELECT  subscription_id, subscription_start_date, final_amount_paid,
LEAD(final_amount_paid)
OVER(
ORDER BY subscription_start_date
) AS Next_Revenue
FROM product_operations;

/* Subscription Duration*/
SELECT subscription_id, subscription_start_date, subscription_end_date,
DATEDIFF(subscription_end_date,subscription_start_date)
AS Subscription_Days
FROM product_operations;

/* Rank By Pla Category */
SELECT plan_category, subscription_id, final_amount_paid,
RANK()
OVER(
PARTITION BY plan_category
ORDER BY final_amount_paid DESC
) AS Plan_Rank
FROM product_operations;