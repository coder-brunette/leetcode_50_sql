-- Write a solution to find the IDs of the users who visited without making any transactions and the number of times they made these types of visits.

-- Return the result table sorted in any order.

-- The result format is in the following example.

-- Write your MySQL query statement below

select Visits.customer_id, count(Visits.visit_id) as count_no_trans
from Visits LEFT JOIN Transactions on Visits.visit_id = Transactions.visit_id
where Transactions.transaction_id IS NULL
group by Visits.customer_id;