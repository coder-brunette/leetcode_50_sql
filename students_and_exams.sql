-- Write a solution to find the number of times each student attended each exam.

-- Return the result table ordered by student_id and subject_name.


-- Write your MySQL query statement below

select s.student_id, s.student_name, sub.subject_name, count(e.subject_name) as attended_exams
from Students s cross join Subjects sub left join Examinations e on s.student_id = e.student_id and sub.subject_name = e.subject_name
group by s.student_id, sub.subject_name
order by s.student_id, sub.subject_name;