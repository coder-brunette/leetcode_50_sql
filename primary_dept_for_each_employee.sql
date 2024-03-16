-- Employees can belong to multiple departments. When the employee joins other departments, they need to decide which 
-- department is their primary department. Note that when an employee belongs to only one department, their primary 
-- column is 'N'.

-- Write a solution to report all the employees with their primary department. For employees who belong to one department, 
-- report their only department.

-- Return the result table in any order.

-- Write your MySQL query statement below

SELECT 
    e.employee_id, 
    e.department_id
FROM 
    employee e
WHERE 
    e.primary_flag = 'Y'
    OR e.employee_id IN (
        SELECT 
            employee_id
        FROM 
            employee
        GROUP BY 
            employee_id
        HAVING 
            COUNT(DISTINCT department_id) = 1
    );