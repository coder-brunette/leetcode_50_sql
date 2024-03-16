-- Report for every three line segments whether they can form a triangle.

-- Return the result table in any order.

-- Write your MySQL query statement below

select x,y,z,
case when x+y > z and y+z > x and x+z > y then 'Yes' else 'No' end as triangle
from Triangle;