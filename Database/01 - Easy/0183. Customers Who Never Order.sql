-- Problem: https://leetcode.com/problems/customers-who-never-order/

SELECT Name AS Customers
FROM Customers
WHERE Id NOT IN (SELECT DISTINCT CustomerId FROM Orders)
