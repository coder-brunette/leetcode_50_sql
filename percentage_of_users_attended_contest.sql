-- Write a solution to find the percentage of the users registered in each contest rounded to two decimals.

-- Return the result table ordered by percentage in descending order. In case of a tie, order it by contest_id 
-- in ascending order.

-- Write your MySQL query statement below

SELECT contest_id,
       ROUND(COUNT(DISTINCT r.user_id) * 100.0 / (SELECT COUNT(DISTINCT user_id) FROM Users), 2) as percentage
FROM Register r
GROUP BY contest_id
ORDER BY percentage DESC, contest_id;