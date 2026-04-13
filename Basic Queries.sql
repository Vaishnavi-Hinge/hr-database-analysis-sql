--1)Total number of employees
select count(*) as totalemployees from HumanResources.employee;

--2)Total gender wise emplooyee count
select gender,count(*)as total from HumanResources.Employee group by gender;

--3)marital status wise count
select maritalstatus , count(*)as total from HumanResources.Employee group by MaritalStatus;

--4)employee hired per year
select year(hireDate)as hire_year , count (*)as total from humanresources.employee 
group by year(hireDate) order by hire_year;

--5)department wise employee count
SELECT d.Name AS Department, COUNT(*) AS Total FROM HumanResources.EmployeeDepartmentHistory edh
JOIN HumanResources.Department d  ON edh.DepartmentID = d.DepartmentID GROUP BY d.Name;

--6)shift wise employee count
select s.name as shift,count(*) as total from HumanResources.EmployeeDepartmentHistory
edh join HumanResources.shift s on edh.ShiftID=s.ShiftID group by s.name;

--7)average salary of employees
select avg(rate)as avg_salary from HumanResources.EmployeePayHistory;

--8)highest paid employees
select top 1 BusinessEntityID , rate from HumanResources.EmployeePayHistory order by rate desc;

--9)lowest paid employee
select top 1 BusinessEntityID , rate from HumanResources.EmployeePayHistory order by rate asc;

--10)employees by jobtitle
select jobtitle,count(*) as total from HumanResources.Employee group by jobtitle order by total desc;
