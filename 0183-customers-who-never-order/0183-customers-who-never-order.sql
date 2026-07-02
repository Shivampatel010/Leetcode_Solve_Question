# Write your MySQL query statement below
Select name as Customers
from Customers C 
left Join Orders O On C.id = O.customerId
where customerId is null


