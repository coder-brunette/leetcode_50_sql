-- A single number is a number that appeared only once in the MyNumbers table.

-- Find the largest single number. If there is no single number, report null.

-- Write your MySQL query statement below

select max(num) as num
from (select num from MyNumbers
group by num
Having count(num) = 1) as num;