# Write your MySQL query statement below'
#Select name, max(salary) from Employee;
# name as Employee from Employee having max(salary)
#select name as employee from Employee where salary < (select max(Salary) from Employee);
#select name as employee from Employee where managerID < (select max(managerID)from Employee);
#select name as employee from Employee

#SELECT * FROM EMPLOYEE E WHERE E.ID = 1 AND E.SALARY > 7000;
#SELECT * FROM EMPLOYEE E WHERE E.SALARY > ( SELECT * FROM EMPLOYEE E2 JOIN E ON E2.MANAGERID =E.MANAGERID)
#WHERE E2.ID > E2.SALARY )

#SELECT name as Employee FROM Employee E1 WHERE salary > 
#( SELECT salary FROM Employee E2 WHERE E2.Id = E1.managerId ) 

#Select name as employee from Employee E1 where salary > (select salary from Employee E2 where e2.id = E1.managerID)

select E2.name as employee from employee e1 join employee e2 on e1.id = e2.managerID where e2.salary > e1.salary









