-- Problem: https://leetcode.com/problems/classes-more-than-5-students/

SELECT B.class
FROM (SELECT DISTINCT * FROM courses) as B
GROUP BY B.class
HAVING COUNT(*) >= 5
