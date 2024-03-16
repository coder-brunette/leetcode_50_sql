-- Find all numbers that appear at least three times consecutively.

-- Return the result table in any order.

-- Write your MySQL query statement below

with cte as(
    select num,
    lead(num,1) over() as num1,
    lead(num,2) over() as num2
    from Logs
)
select distinct num as ConsecutiveNums
from cte
where (num = num1) and (num = num2);