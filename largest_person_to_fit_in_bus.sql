-- There is a queue of people waiting to board a bus. However, the bus has a weight limit of 1000 kilograms, 
-- so there may be some people who cannot board.

-- Write a solution to find the person_name of the last person that can fit on the bus without exceeding the weight limit. 
-- The test cases are generated such that the first person does not exceed the weight limit.

-- Write your MySQL query statement below

with cumulative_weight as(
    select person_name, turn,
    sum(weight) over(order by turn) as cum_weight
    from Queue
)
select person_name
from cumulative_weight
where cum_weight <= 1000
order by turn desc
LIMIT 1;

-- select person_name
-- from (
--     select person_name,
--     sum(weight) over(order by turn) as cum_wt,
--     lead(sum(weight), 1, 0) over(order by turn) as next_cum_wt
--     from Queue
-- ) as Q
-- where cum_wt <= 1000 and next_cum_wt > 1000;