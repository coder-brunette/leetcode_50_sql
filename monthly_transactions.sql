-- Write an SQL query to find for each month and country, the number of transactions and their total amount, the number of 
-- approved transactions and their total amount.

-- Return the result table in any order.

-- Write your MySQL query statement below

select concat(year(trans_date),'-',lpad(month(trans_date),2,0)) as month,country, 
count(case when id <> 0 then 1 else 0 end) as trans_count,
sum(case when state = 'approved' then 1 else 0 end) as approved_count,
sum(case when id <> 0 then amount else 0 end) as trans_total_amount,
sum(case when state = 'approved' then amount else 0 end) as approved_total_amount
from Transactions
group by month, country;