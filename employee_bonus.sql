-- Table: Bonus

-- +-------------+------+
-- | Column Name | Type |
-- +-------------+------+
-- | empId       | int  |
-- | bonus       | int  |
-- +-------------+------+
-- empId is the column of unique values for this table.
-- empId is a foreign key (reference column) to empId from the Employee table.
-- Each row of this table contains the id of an employee and their respective bonus.
 

-- Write a solution to report the name and bonus amount of each employee with a bonus less than 1000.

-- Return the result table in any order.

-- Write your MySQL query statement below

select Employee.name, Bonus.bonus
from Employee LEFT JOIN Bonus on Employee.empID = Bonus.empID
where Bonus.bonus < 1000 or Bonus.bonus IS NULL;