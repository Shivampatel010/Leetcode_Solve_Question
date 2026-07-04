# Write your MySQL query statement below;
#delete from Person  where id in (select min(id) from Person group by email);
DELETE FROM person 
WHERE id NOT IN (
    SELECT min_id FROM (
        SELECT MIN(id) AS min_id 
        FROM person 
        GROUP BY email
    ) AS temp
);