USE product_adoption;
SELECT COUNT(*) AS Customer_Count
FROM customer_profile;
SELECT COUNT(*) AS Product_Count
FROM product_operations;

 /*Inner Joins*/
 
 SELECT
c.customer_id,
c.company_name,
c.industry,
c.customer_segment,
c.country,
c.customer_status,

p.subscription_id,
p.subscription_plan,
p.plan_category,
p.billing_cycle,
p.subscription_fee,
p.discount_percent,
p.tax_amount,
p.final_amount_paid,
p.payment_status,
p.subscription_status,
p.churn_risk

FROM customer_profile c
INNER JOIN product_operations p
ON c.customer_id=p.customer_id;
 
/*Left Joins*/

SELECT
c.customer_id,
c.company_name,
p.subscription_id,
p.subscription_plan
FROM customer_profile c
LEFT JOIN product_operations p
ON c.customer_id=p.customer_id;

/* customers withut any subscription*/

SELECT
c.customer_id,
c.company_name
FROM customer_profile c
LEFT JOIN product_operations p
ON c.customer_id=p.customer_id
WHERE p.subscription_id IS NULL;

/*total revenue by plan category*/
SELECT plan_category,
SUM(final_amount_paid) AS Total_Revenue,
AVG(final_amount_paid) AS Average_Revenue,
SUM(discount_percent) AS Total_Discount,
SUM(tax_amount) AS Total_Tax
FROM product_operations
GROUP BY plan_category
ORDER BY Total_Revenue DESC;

/* Revenue by Payment Status*/
SELECT payment_status,
COUNT(*) AS Total_Subscriptions,
SUM(final_amount_paid) AS Revenue,
AVG(final_amount_paid) AS Avg_Revenue,
SUM(discount_percent) AS Discount,
SUM(tax_amount) AS Tax
FROM product_operations
GROUP BY payment_status;

/* Revenue by Subscription Status */
select subscription_status,
COUNT(*) AS Total_Subscriptions,
SUM(final_amount_paid) AS Revenue,
AVG(final_amount_paid) AS Avg_Revenue,
SUM(discount_percent) AS Discount,
SUM(tax_amount) AS Tax
FROM product_operations
GROUP BY subscription_status;

 /* Revenue by Customer Segment */
 SELECT c.customer_segment,
COUNT(*) AS Total_Subscriptions,
SUM(p.final_amount_paid) AS Revenue,
AVG(p.final_amount_paid) AS Avg_Revenue
FROM customer_profile c
INNER JOIN product_operations p
ON c.customer_id=p.customer_id
GROUP BY c.customer_segment
ORDER BY Revenue DESC;

/* Revenue by Industry */
SELECT c.industry,
COUNT(*) AS Total_Subscriptions,
SUM(p.final_amount_paid) AS Revenue,
AVG(p.final_amount_paid) AS Avg_Revenue
FROM customer_profile c
INNER JOIN product_operations p
ON c.customer_id=p.customer_id
GROUP BY c.industry
ORDER BY Revenue DESC;

/* KPI Queries */ 
SELECT COUNT(*) AS Total_Customers
FROM customer_profile;

SELECT COUNT(subscription_id) AS Total_Subscriptions
FROM product_operations;

SELECT SUM(final_amount_paid) AS Total_Revenue
FROM product_operations;

SELECT AVG(final_amount_paid) AS Average_Revenue
FROM product_operations;

SELECT SUM(discount_percent) AS Total_Discount
FROM product_operations;

SELECT AVG(discount_percent) AS Average_Discount
FROM product_operations;

SELECT SUM(tax_amount) AS Total_Tax
FROM product_operations;

SELECT COUNT(*) AS Active_Subscriptions
FROM product_operations
WHERE subscription_status='Active';

SELECT COUNT(*) AS High_Churn
FROM product_operations
WHERE churn_risk='High';

SELECT COUNT(*) AS Auto_Renew
FROM product_operations
WHERE auto_renew='Yes';

SELECT AVG(customer_satisfaction) AS Average_CSAT
FROM product_operations;

SELECT billing_cycle,
COUNT(*) AS Total_Subscriptions,
SUM(final_amount_paid) AS Revenue
FROM product_operations
GROUP BY billing_cycle;

SELECT c.company_name,
SUM(p.final_amount_paid) AS Revenue 
FROM customer_profile c
INNER JOIN product_operations p
ON c.customer_id=p.customer_id
GROUP BY c.company_name
ORDER BY Revenue DESC
LIMIT 10;