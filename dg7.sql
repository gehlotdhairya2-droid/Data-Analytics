CREATE DATABASE superstore_db;
USE superstore_db;
CREATE TABLE dhairya (
    Customer_Name VARCHAR(255),
    Customer_ID VARCHAR(50),
    Row_ID VARCHAR(50),
    Order_Priority VARCHAR(50),
    Discount VARCHAR(50),
    Unit_Price VARCHAR(50),
    Shipping_Cost VARCHAR(50),
    Ship_Mode VARCHAR(100),
    Customer_Segment VARCHAR(100),
    Product_Category VARCHAR(100),
    Product_Sub_Category VARCHAR(100),
    Product_Container VARCHAR(100),
    Product_Name TEXT,
    Product_Base_Margin VARCHAR(50),
    Country VARCHAR(100),
    Region VARCHAR(100),
    State_or_Province VARCHAR(100),
    City VARCHAR(100),
    Postal_Code VARCHAR(50),
    Order_Date VARCHAR(50),
    Ship_Date VARCHAR(50),
    Profit VARCHAR(50),
    Quantity_ordered_new VARCHAR(50),
    Sales VARCHAR(50),
    Order_ID VARCHAR(50)
);
LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/SuperStoreUS-2015 1 (3).csv"
INTO TABLE dhairya
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(
    Customer_Name,
    Customer_ID,
    Row_ID,
    Order_Priority,
    Discount,
    Unit_Price,
    Shipping_Cost,
    Ship_Mode,
    Customer_Segment,
    Product_Category,
    Product_Sub_Category,
    Product_Container,
    Product_Name,
    Product_Base_Margin,
    Country,
    Region,
    State_or_Province,
    City,
    Postal_Code,
    Order_Date,
    Ship_Date,
    Profit,
    Quantity_ordered_new,
    Sales,
    Order_ID,
    @dummy1,
    @dummy2,
    @dummy3
);
select * from dhairya;
SELECT COUNT(*) FROM dhairya;
SELECT customer_name , product_name,sales,profit
from dhairya; 
select * from dhairya 
where State_or_Province = "California";
select * from dhairya 
where discount > 0.20;
select * from dhairya 
order by sales asc;
select* from dhairya
order by sales desc;
select * from dhairya 
order by sales desc limit 10;
select distinct customer_segment 
from dhairya;
select * from dhairya
where sales between 500 AND 2000;
select * from dhairya
where customer_name like "A%";
select sum(Sales) as total 
from dhairya;
select avg(Profit) as average_profit 
from dhairya;
select max(sales) as highest_sales
From dhairya;
select min(sales) as lowest_sales
from dhairya;
select count(*) as total_orders 
from dhairya;
select region, sum(sales) as total_sales
from dhairya
group by region;
select State_or_Province , sum(profit)
as total_profit 
from dhairya 
GROUP BY State_or_Province ;
select Customer_Segment ,avg(Sales)
as Avg_sales 
from dhairya 
group by Customer_Segment;
select Customer_Segment , count(distinct customer_name)
as customer_count
from dhairya 
group by Customer_Segment;
select Quantity_ordered_new, sum(Quantity_ordered_new) As 
Total_quantity
from dhairya
group by Quantity_ordered_new;
select region, sum(sales) as total_sales
from dhairya
group by region
having sum(sales)>50000;
SELECT Product_Category, AVG(Profit) AS Avg_Profit
FROM orders
GROUP BY Product_Category
HAVING AVG(Profit) > 100;
SELECT 
    YEAR(Order_Date) AS Year,
    MONTH(Order_Date) AS Month,
    COUNT(*) AS Total_Orders
FROM orders
GROUP BY YEAR(Order_Date), MONTH(Order_Date)
ORDER BY Year, Month;
select*from dhairya;