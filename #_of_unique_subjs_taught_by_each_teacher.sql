-- Write a solution to calculate the number of unique subjects each teacher teaches in the university.

-- Return the result table in any order.

-- Write your MySQL query statement below

select teacher_id, 
count(distinct subject_id) as cnt
from Teacher
group by teacher_id;