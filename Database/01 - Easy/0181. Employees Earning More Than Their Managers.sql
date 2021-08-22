-- Problem: https://leetcode.com/problems/employees-earning-more-than-their-managers/

SELECT Name AS Employee
FROM Employee AS a
WHERE a.Salary > (SELECT Salary FROM Employee AS b WHERE b.Id = a.ManagerId)
