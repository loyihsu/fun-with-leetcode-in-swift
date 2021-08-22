-- Problem: https://leetcode.com/problems/combine-two-tables/

SELECT P.FirstName, P.LastName, A.City, A.State
FROM (Person as P LEFT OUTER JOIN Address as A ON P.PersonId = A.PersonId)
