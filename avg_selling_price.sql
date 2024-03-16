-- Write a solution to find the average selling price for each product. average_price should be rounded to 2 decimal places.

-- Return the result table in any order.

-- Write your MySQL query statement below

select p.product_id,
IFNULL(ROUND(SUM(p.price * u.units)/SUM(u.units),2),0) as average_price
from Prices p left join UnitsSold u on p.product_id = u.product_id and u.purchase_date BETWEEN p.start_date AND p.end_date
group by p.product_id;