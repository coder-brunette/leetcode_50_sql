-- Table: Product

-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | product_key | int     |
-- +-------------+---------+
-- product_key is the primary key (column with unique values) for this table.
 

-- Write a solution to report the customer ids from the Customer table that bought all the products in the Product table.

-- Return the result table in any order.

-- The result format is in the following example.

-- Write your MySQL query statement below

select customer_id
from Customer
group by customer_id
having count(distinct product_key) = (select count(*) from Product); 