-- Write a solution to find the daily active user count for a period of 30 days ending 2019-07-27 inclusively. 
-- A user was active on someday if they made at least one activity on that day.

-- Return the result table in any order.


-- Write your MySQL query statement below

select activity_date as day,
count(distinct user_id) as active_users
from Activity
where activity_date between '2019-06-28' and '2019-07-27'
group by day;