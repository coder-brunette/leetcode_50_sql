-- Write a solution to swap the seat id of every two consecutive students. If the number of students is odd, 
-- the id of the last student is not swapped.

-- Return the result table ordered by id in ascending order.

-- Write your MySQL query statement below

SELECT 
    (CASE 
        WHEN id = (SELECT MAX(id) FROM Seat) AND id % 2 = 1 THEN id
        WHEN id % 2 = 1 THEN id + 1 
        ELSE id - 1 
    END) AS id, student
FROM Seat
ORDER BY id;