-- Write a solution to find managers with at least five direct reports.

-- Return the result table in any order.

-- Write your MySQL query statement below

select s1.name from Employee s1 join Employee s2 
on s1.id = s2.managerId
group by s2.managerID
having count(s1.id) >=5; 