DROP DATABASE IF EXISTS product_adoption;
CREATE DATABASE product_adoption;

USE product_adoption;

CREATE TABLE customer_profile(

customer_id VARCHAR(20) PRIMARY KEY,
customer_code VARCHAR(20),
company_name VARCHAR(255),
industry VARCHAR(100),
company_size VARCHAR(50),
customer_segment VARCHAR(50),
employee_count INT,
annual_revenue_usd BIGINT,
country VARCHAR(100),
region VARCHAR(100),
city VARCHAR(100),
signup_date DATE,
first_login_date DATE,
last_login_date DATE,
login_count INT,
customer_tenure_months INT,
organization_age INT,
account_manager_id VARCHAR(30),
customer_status VARCHAR(30),
customer_type VARCHAR(30)

);
customer_id INT PRIMARY KEY,
customer_code VARCHAR(30),
company_name VARCHAR(255),
industry VARCHAR(100),
company_size VARCHAR(50),
customer_segment VARCHAR(50),
employee_count INT,
annual_revenue_usd DECIMAL(18,2),
country VARCHAR(100),
region VARCHAR(100),
city VARCHAR(100),
signup_date DATE,
first_login_date DATE,
last_login_date DATE,
login_count INT,
customer_tenure_months INT,
organization_age INT,
account_manager_id INT,
customer_status VARCHAR(30),
customer_type VARCHAR(30)

);

SET GLOBAL local_infile=1;
SHOW VARIABLES LIKE 'local_infile';

LOAD DATA LOCAL INFILE
'C:/Users/SVS/Desktop/Product_Adoption_customer_sucess/data/raw/Customers.csv'
INTO TABLE customer_profile
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;
SELECT COUNT(*) AS customer_rows
FROM customer_profile;

LOAD DATA LOCAL INFILE
'C:/Users/SVS/Desktop/Product_Adoption_customer_sucess/data/raw/product_operations.csv'
INTO TABLE product_operations
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

DROP TABLE IF EXISTS product_operations;

CREATE TABLE product_operations (

record_id VARCHAR(20) PRIMARY KEY,
customer_id VARCHAR(20),

subscription_id VARCHAR(20),
subscription_plan VARCHAR(50),
plan_category VARCHAR(50),

subscription_start_date VARCHAR(20),
subscription_end_date VARCHAR(20),

billing_cycle VARCHAR(20),

subscription_fee DECIMAL(10,2),
discount_percent DECIMAL(5,2),
tax_amount DECIMAL(10,2),
final_amount_paid DECIMAL(10,2),

payment_status VARCHAR(30),
payment_method VARCHAR(50),

auto_renew VARCHAR(10),
renewal_count INT,

subscription_status VARCHAR(30),

feature_id VARCHAR(20),
module_name VARCHAR(100),
feature_name VARCHAR(100),
feature_category VARCHAR(100),

first_feature_used VARCHAR(20),
usage_date VARCHAR(20),

usage_count INT,
active_days INT,

session_duration_minutes DECIMAL(10,2),
average_session_duration DECIMAL(10,2),

feature_adoption_rate DECIMAL(5,2),
adoption_stage VARCHAR(30),

engagement_score DECIMAL(5,2),

feature_success VARCHAR(20),

error_count INT,

device_type VARCHAR(30),
login_location VARCHAR(100),

ticket_id VARCHAR(20),

ticket_created_date VARCHAR(20),

first_response_minutes INT,

ticket_closed_date VARCHAR(20),

issue_category VARCHAR(100),

priority VARCHAR(20),

ticket_status VARCHAR(30),

resolution_time_hours DECIMAL(10,2),

sla_breached VARCHAR(10),

assigned_team VARCHAR(100),

customer_satisfaction DECIMAL(4,2),

ticket_channel VARCHAR(30),

product_version VARCHAR(20),

release_cycle VARCHAR(30),

churn_risk VARCHAR(20),

monthly_active_user VARCHAR(10),

weekly_active_user VARCHAR(10),

FOREIGN KEY (customer_id)
REFERENCES customer_profile(customer_id)

);

LOAD DATA LOCAL INFILE
'C:/Users/SVS/Desktop/Product_Adoption_customer_sucess/data/raw/product_operations.csv'
INTO TABLE product_operations
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

SELECT COUNT(*) AS product_rows
FROM product_operations;

SELECT
SUM(customer_id IS NULL) AS customer_id,
SUM(company_name IS NULL) AS company_name,
SUM(industry IS NULL) AS industry,
SUM(customer_segment IS NULL) AS customer_segment,
SUM(country IS NULL) AS country
FROM customer_profile;

SELECT
SUM(record_id IS NULL) AS record_id,
SUM(customer_id IS NULL) AS customer_id,
SUM(subscription_id IS NULL) AS subscription_id,
SUM(payment_status IS NULL) AS payment_status,
SUM(feature_name IS NULL) AS feature_name
FROM product_operations;

SELECT customer_id, COUNT(*)
FROM customer_profile
GROUP BY customer_id
HAVING COUNT(*) > 1;

SELECT record_id, COUNT(*)
FROM product_operations
GROUP BY record_id
HAVING COUNT(*) > 1;

SELECT *
FROM product_operations
WHERE subscription_fee < 0
OR discount_percent < 0
OR tax_amount < 0
OR final_amount_paid < 0;

SELECT DISTINCT customer_segment
FROM customer_profile;

SELECT DISTINCT subscription_status
FROM product_operations;

SELECT COUNT(*)
FROM product_operations p
LEFT JOIN customer_profile c
ON p.customer_id = c.customer_id
WHERE c.customer_id IS NULL;

SELECT *
FROM customer_profile
LIMIT 10;