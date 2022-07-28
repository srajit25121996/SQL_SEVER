Create Table Professor(
Professor_id int Primary Key,
Full_Name varchar(25),
Department varchar(25),
Salary int
);

insert into Professor(Professor_id,Full_Name,Department,Salary)VALUES(1,'Shubham Rajit','IT',40000); 
insert into Professor(Professor_id,Full_Name,Department,Salary)VALUES(2,'Pravesh Dixit','BANKING',30000);
insert into Professor(Professor_id,Full_Name,Department,Salary)VALUES(3,'Rohit Verma','IT',50000);
insert into Professor(Professor_id,Full_Name,Department,Salary)VALUES(4,'Prateek Srivastava','BANKING',35000);
insert into Professor(Professor_id,Full_Name,Department,Salary)VALUES(5,'Shashank Srivastava','Mutual Funds',55000);
insert into Professor(Professor_id,Full_Name,Department,Salary)VALUES(6,'Pallavi Srivatava','Mutual Funds',650000);

Select * from Professor;


--write a query to find department salary sum greater than 60000 .

Select Department,Sum(Salary) as Salary_Sum from Professor group BY Department having Sum(Salary) >=70000;

--write a query to find second highest salary.

SELECT * 
FROM Professor tb1
WHERE 3-1 = (SELECT COUNT(DISTINCT salary) FROM Professor tb2
WHERE tb2.salary > tb1.salary);

                           --OR

SELECT TOP 1 Salary
FROM (SELECT DISTINCT TOP 2 salary FROM Professor ORDER BY salary DESC)
AS TEMP_TABLE ORDER BY salary;
                           --OR
declare @nthHighest int
set @nthHighest = 3 -- This one is parameter for which highest position you want to find Here 5th Highest
select top 1 Salary from
(
select distinct top (@nthHighest) salary as Salary from Professor order by Salary desc
) as result
order by Salary;




