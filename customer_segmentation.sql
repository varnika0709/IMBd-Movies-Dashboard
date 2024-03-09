CREATE database customer_db;

USE customer_db;
CREATE TABLE customer_table (
    Month varchar(15),
    Year int,
    Customer_Age int,
    Age_Group varchar(255),
    Age_Group_NUMBER int,
    Customer_Gender varchar(255),
    Country varchar(255),
    Product_Category varchar(255),
    Order_Quantity int,
    Unit_Cost int,
    Unit_Price int,
    Profit decimal(10,2),
    Cost int,
    Revenue int
);

/**Retrieve all columns from the dataset:**/
SELECT * FROM customer_table;

/**Find the total number of records in the dataset:**/
SELECT COUNT(*) AS total_records FROM customer_table;

/**Calculate the average age of customers:**/
SELECT AVG(Customer_Age) AS average_age FROM customer_table;

/**Identify the top 5 customers with the highest profit:**/
SELECT * FROM customer_table ORDER BY Profit DESC LIMIT 5;

/**Get the total revenue for each product category:**/
SELECT Product_Category, SUM(Revenue) AS total_revenue
FROM customer_table
GROUP BY Product_Category;

/**Find the total quantity and revenue for each year:**/
SELECT Year, SUM(Order_Quantity) AS total_quantity, SUM(Revenue) AS total_revenue
FROM customer_table
GROUP BY Year;

/**Determine the average profit for each country:**/
SELECT Country, AVG(Profit) AS average_profit
FROM customer_table
GROUP BY Country

/**Identify the most popular product category (highest order quantity):**/
SELECT Product_Category, SUM(Order_Quantity) AS total_quantity
FROM customer_table
GROUP BY Product_Category
ORDER BY total_quantity DESC
LIMIT 1;

/**Calculate the total cost and profit margin for each product category:**/
SELECT Product_Category, SUM(Cost) AS total_cost, SUM(Profit) AS total_profit
FROM customer_table
GROUP BY Product_Category;

/**Find the percentage of male and female customers:**/
SELECT Customer_Gender, COUNT(*) AS customer_count,
       COUNT(*) * 100.0 / (SELECT COUNT(*) FROM customer_table) AS percentage
FROM customer_table
GROUP BY Customer_Gender;







