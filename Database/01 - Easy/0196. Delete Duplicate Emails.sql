-- Problem: https://leetcode.com/problems/delete-duplicate-emails/

DELETE p1 FROM Person as p1, Person as p2
WHERE p1.email = p2.email AND p1.ID > p2.id